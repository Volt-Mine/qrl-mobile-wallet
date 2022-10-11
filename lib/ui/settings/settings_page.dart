import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_wallet/main.dart';
import 'package:mobile_wallet/model/app_language.dart';
import 'package:mobile_wallet/model/app_settings.dart';
import 'package:mobile_wallet/service/authentication_service.dart';
import 'package:mobile_wallet/service/service_locator.dart';
import 'package:mobile_wallet/service/settings_service.dart';
import 'package:mobile_wallet/ui/component/dialogs.dart';
import 'package:mobile_wallet/ui/component/qrl_button.dart';
import 'package:mobile_wallet/ui/component/qrl_textfield.dart';
import 'package:mobile_wallet/ui/component/snack_bars.dart';
import 'package:mobile_wallet/ui/settings/community_page.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';
import 'package:wakelock/wakelock.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isSwitched = false;
  AppLanguage? _selectedAppLanguage;
  final TextEditingController _nodeUrlController = TextEditingController();
  final TextEditingController _portController = TextEditingController();
  AppSettings? _currentAppSettings;

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight,
          ),
          child: IntrinsicHeight(
              child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Settings",
                      style: TextStyle(
                        color: CustomColors.qrlLightBlueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 8, left: 16, right: 8),
                child: SwitchListTile(
                    activeColor: CustomColors.qrlLightBlueColor,
                    title: const Text('Use device login'),
                    onChanged: (value) => _toggleSwitch(value),
                    value: _isSwitched),
              ),
              Center(
                child: SizedBox(
                  width: 512,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 32, right: 32),
                    child: InputDecorator(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                                width: 1, color: CustomColors.qrlYellowColor)),
                        contentPadding: const EdgeInsets.only(
                            left: 12, right: 12, top: 4, bottom: 4),
                        labelText: 'Language',
                        labelStyle:
                            const TextStyle(color: CustomColors.qrlYellowColor),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: const OutlineInputBorder(),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<AppLanguage>(
                          isExpanded: true,
                          value: _selectedAppLanguage ?? AppLanguage.en,
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: CustomColors.qrlYellowColor,
                          ),
                          underline: null,
                          onChanged: (AppLanguage? value) {
                            if (value != null) {
                              setState(() {
                                _selectedAppLanguage = value;
                              });
                            }
                          },
                          items: AppLanguage.values
                              .map<DropdownMenuItem<AppLanguage>>(
                                  (AppLanguage value) {
                            return DropdownMenuItem<AppLanguage>(
                              value: value,
                              child: Text(value.displayName),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 8, left: 32, right: 32),
                child: QrlTextField(
                  _nodeUrlController,
                  (value) => setState(() {}),
                  text: "Node URL",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 16, left: 32, right: 32),
                child: QrlTextField(
                  _portController,
                  (value) => setState(() {}),
                  text: "Port",
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Warning",
                      style: TextStyle(
                        color: CustomColors.qrlLightBlueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ),
              ),
              const Center(
                  child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Deviating from the default is at your own risk",
                  textAlign: TextAlign.center,
                ),
              )),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 48, bottom: 8),
                    child: SizedBox(
                      width: 256,
                      child: QrlButton(
                        () => _onPressedJoinOurCommunity(),
                        text: "JOIN OUR COMMUNITY",
                        baseColor: CustomColors.qrlLightBlueColor,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 36),
                    child: SizedBox(
                      width: 256,
                      child: QrlButton(
                        _hasChanges() ? () => _onPressedConfirm() : null,
                        text: "CONFIRM",
                        baseColor: CustomColors.qrlLightBlueColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }

  _init() async {
    SettingsService settingsService = getIt<SettingsService>();
    AppSettings appSettings = await settingsService.getAppSettings();
    if (mounted) {
      setState(() {
        _currentAppSettings = appSettings;
        _isSwitched = appSettings.useDeviceLogin;
        _nodeUrlController.text = appSettings.nodeUrl;
        _portController.text = appSettings.port.toString();
        _selectedAppLanguage = appSettings.appLanguage;
      });
    }
  }

  _toggleSwitch(bool value) async {
    if (value) {
      Dialogs.showLoadingDialog(context, "Checking device...");
      if (await getIt<AuthenticationService>().hasDeviceAuthentication()) {
        if (mounted) {
          setState(() {
            _isSwitched = value;
          });
        }
      } else {
        SnackBars.showSnackBar(
            context, "No authentication method found on device!");
      }
      if (mounted) {
        Dialogs.hideLoadingDialog(context);
      }
    } else {
      if (await getIt<AuthenticationService>().authenticate()) {
        if (mounted) {
          setState(() {
            _isSwitched = value;
          });
        }
      } else {
        SnackBars.showSnackBar(context, "Authentication failed!");
      }
    }
  }

  _hasChanges() {
    if (_currentAppSettings != null) {
      if (_currentAppSettings!.useDeviceLogin != _isSwitched) {
        return true;
      }
      if (_portController.text.isNotEmpty &&
          _currentAppSettings!.port != int.parse(_portController.text)) {
        return true;
      }
      if (_nodeUrlController.text.isNotEmpty &&
          _currentAppSettings!.nodeUrl != _nodeUrlController.text) {
        return true;
      }
      if (_selectedAppLanguage != _currentAppSettings!.appLanguage) {
        return true;
      }
    }
    return false;
  }

  _onPressedJoinOurCommunity() async {
    if (mounted) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CommunityPage()),
      );
    }
  }

  _onPressedConfirm() async {
    try {
      Wakelock.enable();
      Dialogs.showLoadingDialog(context, "Saving settings...");
      SettingsService settingsService = getIt<SettingsService>();
      _currentAppSettings!.useDeviceLogin = _isSwitched;
      _currentAppSettings!.nodeUrl = _nodeUrlController.text;
      _currentAppSettings!.port = int.parse(_portController.text);
      _currentAppSettings!.appLanguage = _selectedAppLanguage;
      await settingsService.saveAppSettings(_currentAppSettings!);
      if (mounted) {
        Dialogs.hideLoadingDialog(context);
        SnackBars.showSnackBar(context, "Settings saved");
        QrlMobileWalletApp.of(context)!.resetState();
      }
    } finally {
      Wakelock.disable();
    }
  }

  @override
  void dispose() {
    _nodeUrlController.dispose();
    _portController.dispose();
    super.dispose();
  }
}
