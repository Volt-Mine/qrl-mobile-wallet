import 'package:flutter/material.dart';

enum AppLanguage {
  en("English", Locale.fromSubtags(languageCode: "en")),
  zh("中文", Locale.fromSubtags(languageCode: "zh")),
  ja("日本", Locale.fromSubtags(languageCode: "ja")),
  nl("Nederlands", Locale.fromSubtags(languageCode: "nl")),
  ko("한국어", Locale.fromSubtags(languageCode: "ko")),
  ;

  final String displayName;
  final Locale locale;

  const AppLanguage(this.displayName, this.locale);

  static AppLanguage? fromName(String? name) {
    switch (name) {
      case "AppLanguage.en":
        return en;
      case "AppLanguage.zh":
        return zh;
      case "AppLanguage.ja":
        return ja;
      case "AppLanguage.nl":
        return nl;
      case "AppLanguage.ko":
        return ko;
    }
    return null;
  }

  static List<Locale> availableLocales() {
    return AppLanguage.values.map((appLanguage) => appLanguage.locale).toList();
  }
}
