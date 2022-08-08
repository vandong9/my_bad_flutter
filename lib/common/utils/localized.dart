import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

abstract class ILocalizedLanguage {
  void loadData();
  String textForKey(String key);
}

/// Implement default LocalizedLanguage
/// // *This module need update for more generic, move param to configureble: support language, current language, file json,.. *

enum SupportLanguage { vietnam, english }

SupportLanguage _defaultSupportLanguge = SupportLanguage.english;
SupportLanguage currentLanguage = _defaultSupportLanguge;

String fileJsonOfLanguage(SupportLanguage language) {
  switch (language) {
    case SupportLanguage.english:
      return "english.json";
    case SupportLanguage.vietnam:
      return "vietnam.json";
  }
  return "english.json";
}

SupportLanguage languageFormLocale(String locale) {
  if (locale == "en") return SupportLanguage.english;
  return _defaultSupportLanguge;
}

class MultipleLanguage implements ILocalizedLanguage {
  String get _languageFolder => "/languages";

  Map<String, String> _data = {};
  @override
  String textForKey(String key) {
    String? value = _data[key];
    return value ?? key;
  }

  String languageJsonFileName(String locale) {
    if (locale == "en") return "english.json";
    if (locale == "es") return "spanish.json";
    return "english.json";
  }

  void loadData() async {
    String currentLocale =
        Platform.localeName; // Returns locale string in the form 'en_US'
    currentLocale = currentLocale.split("_").first ?? "en";
    currentLanguage = languageFormLocale(currentLocale);

    Directory documentDir = await getApplicationDocumentsDirectory();
    try {
      String languageJsonFile = fileJsonOfLanguage(currentLanguage);
      String languagePath =
          "${documentDir.path}$_languageFolder/$languageJsonFile";
      // check if there have json language in folder => load
      if (await File(languagePath).exists()) {
        // TODO: handle load text from file and parse to json

      } else {
        // if not, load build-in file json language in assets
        String jsonText =
            await rootBundle.loadString('assets/language/$languageJsonFile');
        final jsonObj = json.decode(jsonText);
        loadJsonToData(jsonObj);
      }
    } catch (error) {
      // AppLog.e("MultipleLanguage loadData error $error");
    }
  }

  void loadJsonToData(Map<String, dynamic> json) {
    json.forEach((key, value) {
      _data[key] = value;
    });
  }
}
