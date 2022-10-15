import 'package:flutter/material.dart';

enum AppLanguage {
  en("English", Locale.fromSubtags(languageCode: "en")),
  zh("中文", Locale.fromSubtags(languageCode: "zh")),
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
    }
    return null;
  }

  static List<Locale> availableLocales() {
    return AppLanguage.values.map((appLanguage) => appLanguage.locale).toList();
  }
}
