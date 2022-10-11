import 'package:flutter/material.dart';
import 'package:mobile_wallet/ui/balance/balance_page.dart';
import 'package:mobile_wallet/ui/component/qrl_app_bar.dart';
import 'package:mobile_wallet/ui/settings/settings_page.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';
import 'package:mobile_wallet/ui/wallets/wallets_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    BalancePage(),
    WalletsPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QrlAppBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.account_balance_wallet),
            label: AppLocalizations.of(context)!.balance,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.wallet),
            label: AppLocalizations.of(context)!.wallets,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: AppLocalizations.of(context)!.settings,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: CustomColors.qrlDarkBlueColor,
        backgroundColor: CustomColors.qrlYellowColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
