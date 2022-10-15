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
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(AppLocalizations.of(context)!.settings,
                      style: const TextStyle(
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
                    title: Text(AppLocalizations.of(context)!.useDeviceLogin),
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
                        labelText: AppLocalizations.of(context)!.language,
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
                  text: AppLocalizations.of(context)!.nodeUrl,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 16, left: 32, right: 32),
                child: QrlTextField(
                  _portController,
                  (value) => setState(() {}),
                  text: AppLocalizations.of(context)!.port,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(AppLocalizations.of(context)!.warning,
                      style: const TextStyle(
                        color: CustomColors.qrlLightBlueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  AppLocalizations.of(context)!.deviatingDefault,
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
                        text: AppLocalizations.of(context)!.join,
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
                        text: AppLocalizations.of(context)!.confirm,
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
      Dialogs.showLoadingDialog(
          context, AppLocalizations.of(context)!.checkingDevice);
      if (await getIt<AuthenticationService>().hasDeviceAuthentication()) {
        if (mounted) {
          setState(() {
            _isSwitched = value;
          });
        }
      } else {
        SnackBars.showSnackBar(
            context, AppLocalizations.of(context)!.noAuthenticationFound);
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
        SnackBars.showSnackBar(
            context, AppLocalizations.of(context)!.authenticationFailed);
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
      Dialogs.showLoadingDialog(
          context, AppLocalizations.of(context)!.savingSettings);
      SettingsService settingsService = getIt<SettingsService>();
      _currentAppSettings!.useDeviceLogin = _isSwitched;
      _currentAppSettings!.nodeUrl = _nodeUrlController.text;
      _currentAppSettings!.port = int.parse(_portController.text);
      _currentAppSettings!.appLanguage = _selectedAppLanguage;
      await settingsService.saveAppSettings(_currentAppSettings!);
      if (mounted) {
        Dialogs.hideLoadingDialog(context);
        SnackBars.showSnackBar(
            context, AppLocalizations.of(context)!.settingsSaved);
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
