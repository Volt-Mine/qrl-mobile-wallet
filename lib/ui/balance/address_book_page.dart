import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_wallet/model/address_book_entry.dart';
import 'package:mobile_wallet/service/address_book_service.dart';
import 'package:mobile_wallet/service/service_locator.dart';
import 'package:mobile_wallet/ui/component/dialogs.dart';
import 'package:mobile_wallet/ui/component/qrl_app_bar.dart';
import 'package:mobile_wallet/ui/component/qrl_button.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';

class AddressBookPage extends StatefulWidget {
  const AddressBookPage({Key? key}) : super(key: key);

  @override
  State<AddressBookPage> createState() => _AddressBookPageState();
}

class _AddressBookPageState extends State<AddressBookPage> {
  List<AddressBookEntry>? _addressBook;
  int? _currentSelectedIndex;

  final List<TextEditingController> _controllers = <TextEditingController>[];

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QrlAppBar(),
      body: Column(mainAxisSize: MainAxisSize.max, children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(AppLocalizations.of(context)!.addressBook,
                style: const TextStyle(
                  color: CustomColors.qrlLightBlueColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
          ),
        ),
        Expanded(
          child: _addressBook == null
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CircularProgressIndicator(),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(AppLocalizations.of(context)!.loadingAddresses),
                      ],
                    ),
                  ),
                )
              : ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: _addressBook != null ? _addressBook?.length : 0,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    TextEditingController controller = TextEditingController();
                    controller.value =
                        TextEditingValue(text: "${_addressBook?[index].name}");
                    _controllers.add(controller);
                    return Container(
                      color: (_currentSelectedIndex != null &&
                              _currentSelectedIndex == index)
                          ? CustomColors.qrlLightBlueColor.withOpacity(0.1)
                          : null,
                      child: InkWell(
                          onTap: () => {
                                if (mounted)
                                  {
                                    setState(() {
                                      _currentSelectedIndex = index;
                                    })
                                  }
                              },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 32, right: 16, top: 4, bottom: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IntrinsicWidth(
                                        child: TextField(
                                          onChanged: (value) {
                                            if (value.isNotEmpty) {
                                              _updateAddressName(index, value);
                                            } else {
                                              String name =
                                                  "address-${index + 1}";
                                              _updateAddressName(index, name);
                                              controller.value =
                                                  TextEditingValue(text: name);
                                            }
                                          },
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                          minLines: 1,
                                          maxLines: 2,
                                          controller: controller,
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          decoration: const InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.only(top: -5),
                                              border: InputBorder.none,
                                              suffix: Icon(
                                                Icons.edit,
                                                size: 18,
                                                color: Colors.white,
                                              ),
                                              isCollapsed: true),
                                        ),
                                      ),
                                      Text(
                                        "${_addressBook?[index].address}",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Colors.grey[500],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete_outline_sharp),
                                  tooltip: AppLocalizations.of(context)!.delete,
                                  color: CustomColors.qrlYellowColor,
                                  onPressed: () {
                                    _onPressedDelete(index);
                                  },
                                ),
                              ],
                            ),
                          )),
                    );
                  }),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 24, top: 16),
            child: SizedBox(
              width: 256,
              child: QrlButton(
                _currentSelectedIndex != null
                    ? () => Navigator.of(context)
                        .pop(_addressBook![_currentSelectedIndex!].address)
                    : null,
                text: AppLocalizations.of(context)!.confirm,
                baseColor: CustomColors.qrlLightBlueColor,
              ),
            ),
          ),
        ),
      ]),
    );
  }

  _init() async {
    AddressBookService addressBookService = getIt<AddressBookService>();
    List<AddressBookEntry> addressBook =
        await addressBookService.getAddressBook();
    if (mounted) {
      setState(() {
        _addressBook = addressBook;
      });
    }
  }

  void _onPressedDelete(int index) async {
    Dialogs.showConfirmDialog(
        context, AppLocalizations.of(context)!.confirmRemoveAddress, () async {
      if (mounted) {
        Dialogs.showLoadingDialog(
            context, AppLocalizations.of(context)!.deletingAddress);
      }
      _addressBook!.removeAt(index);
      AddressBookService addressBookService = getIt<AddressBookService>();
      await addressBookService.saveAddressBook(_addressBook!);
      if (mounted) {
        _init();
        Dialogs.hideLoadingDialog(context);
      }
    });
  }

  _updateAddressName(int index, String value) async {
    _addressBook![index].name = value;
    AddressBookService addressBookService = getIt<AddressBookService>();
    await addressBookService.saveAddressBook(_addressBook!);
  }

  @override
  void dispose() {
    for (TextEditingController controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }
}
