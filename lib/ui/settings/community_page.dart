import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_wallet/ui/component/qrl_app_bar.dart';
import 'package:mobile_wallet/ui/util/custom_colors.dart';
import 'package:mobile_wallet/ui/util/util.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QrlAppBar(),
      body: LayoutBuilder(
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
                      child: Text(AppLocalizations.of(context)!.community,
                          style: const TextStyle(
                            color: CustomColors.qrlLightBlueColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          )),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 24, right: 24, top: 48),
                      child: Text(
                        AppLocalizations.of(context)!.joinMailing,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 36),
                            child: InkWell(
                              onTap: () async {
                                Uri url = Uri.parse("https://www.theqrl.org");
                                await Util.launchInBrowser(url);
                              },
                              child: const Text("www.theqrl.org"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: InkWell(
                              onTap: () async {
                                Uri url =
                                    Uri.parse("https://www.qrl.foundation");
                                await Util.launchInBrowser(url);
                              },
                              child: const Text("www.qrl.foundation"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 36),
                            child: Text(
                                AppLocalizations.of(context)!.generalEnquiries,
                                style: const TextStyle(
                                  color: CustomColors.qrlYellowColor,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: InkWell(
                              onTap: () async {
                                Uri url = Uri.parse("mailto:info@theqrl.org");
                                await Util.launchInBrowser(url);
                              },
                              child: const Text("info@theqrl.org"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 36),
                            child: Text(
                                AppLocalizations.of(context)!.supportRequest,
                                style: const TextStyle(
                                  color: CustomColors.qrlYellowColor,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: InkWell(
                              onTap: () async {
                                Uri url =
                                    Uri.parse("mailto:support@theqrl.org");
                                await Util.launchInBrowser(url);
                              },
                              child: const Text("support@theqrl.org"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 36),
                            child: Text(
                                AppLocalizations.of(context)!.pressEnquiries,
                                style: const TextStyle(
                                  color: CustomColors.qrlYellowColor,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: InkWell(
                              onTap: () async {
                                Uri url = Uri.parse("mailto:press@theqrl.org");
                                await Util.launchInBrowser(url);
                              },
                              child: const Text("press@theqrl.org"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 32, right: 32, top: 36),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                              const FaIcon(FontAwesomeIcons.twitter).icon!),
                          tooltip: "Twitter",
                          color: CustomColors.qrlLightBlueColor,
                          iconSize: 32,
                          onPressed: () async {
                            Uri url = Uri.parse("https://twitter.com/qrledger");
                            await Util.launchInBrowser(url);
                          },
                        ),
                        IconButton(
                          icon:
                              Icon(const FaIcon(FontAwesomeIcons.github).icon!),
                          tooltip: "GitHub",
                          color: CustomColors.qrlLightBlueColor,
                          iconSize: 32,
                          onPressed: () async {
                            Uri url =
                                Uri.parse("https://github.com/theQRL/QRL, ");
                            await Util.launchInBrowser(url);
                          },
                        ),
                        IconButton(
                          icon: Icon(
                              const FaIcon(FontAwesomeIcons.youtube).icon!),
                          tooltip: "YouTube",
                          color: CustomColors.qrlLightBlueColor,
                          iconSize: 32,
                          onPressed: () async {
                            Uri url = Uri.parse(
                                "https://www.youtube.com/c/QRLedger?app=mobile");
                            await Util.launchInBrowser(url);
                          },
                        ),
                        IconButton(
                          icon: Icon(
                              const FaIcon(FontAwesomeIcons.discord).icon!),
                          tooltip: "Discord",
                          color: CustomColors.qrlLightBlueColor,
                          iconSize: 32,
                          onPressed: () async {
                            Uri url = Uri.parse(
                                "https://discord.com/invite/fVrEKDS6bh");
                            await Util.launchInBrowser(url);
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 32, right: 32, top: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                              const FaIcon(FontAwesomeIcons.telegram).icon!),
                          tooltip: "Telegram",
                          color: CustomColors.qrlLightBlueColor,
                          iconSize: 32,
                          onPressed: () async {
                            Uri url =
                                Uri.parse("https://t.me/QRLedgerOfficial");
                            await Util.launchInBrowser(url);
                          },
                        ),
                        IconButton(
                          icon: Icon(
                              const FaIcon(FontAwesomeIcons.linkedin).icon!),
                          tooltip: "LinkedIN",
                          color: CustomColors.qrlLightBlueColor,
                          iconSize: 32,
                          onPressed: () async {
                            Uri url = Uri.parse(
                                "https://www.linkedin.com/company/the-quantum-resistant-ledger/");
                            await Util.launchInBrowser(url);
                          },
                        ),
                        IconButton(
                          icon: Icon(
                              const FaIcon(FontAwesomeIcons.facebook).icon!),
                          tooltip: "Facebook",
                          color: CustomColors.qrlLightBlueColor,
                          iconSize: 32,
                          onPressed: () async {
                            Uri url =
                                Uri.parse("https://www.facebook.com/theqrl/");
                            await Util.launchInBrowser(url);
                          },
                        ),
                        IconButton(
                          icon:
                              Icon(const FaIcon(FontAwesomeIcons.reddit).icon!),
                          tooltip: "Reddit",
                          color: CustomColors.qrlLightBlueColor,
                          iconSize: 32,
                          onPressed: () async {
                            Uri url = Uri.parse("https://www.reddit.com/r/qrl");
                            await Util.launchInBrowser(url);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IconAndUrl {
  IconData _icon;
  String _url;
  String _text;

  IconAndUrl(
    this._icon,
    this._url,
    this._text,
  );

  IconData get icon => _icon;

  String get url => _url;

  String get text => _text;
}
