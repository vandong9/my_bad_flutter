import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:my_bad/di/injector.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class ILocalizedLanguage {
  Future loadData();
  String textForKey(String key);
  SupportLanguage currentLanguage();
  Future switchToLanguage(SupportLanguage language);
}

/// Implement default LocalizedLanguage
/// // *This module need update for more generic, move param to configureble: support language, current language, file json,.. *

enum SupportLanguage { vietnam, english }

SupportLanguage _defaultSupportLanguge = SupportLanguage.english;
SupportLanguage _currentLanguage = _defaultSupportLanguge;

String fileJsonOfLanguage(SupportLanguage language) {
  switch (language) {
    case SupportLanguage.english:
      return "english.json";
    case SupportLanguage.vietnam:
      return "vietnamese.json";
  }
}

SupportLanguage languageFormLocale(String locale) {
  if (locale == "en") return SupportLanguage.english;
  return _defaultSupportLanguge;
}

class MultipleLanguage implements ILocalizedLanguage {
  String get _languageFolder => "/languages";
  SharedPreferences? prefs;
  final kCurrentLanguage = "kCurrentLanguage";

  Map<String, String> _data = {};

  MultipleLanguage() {
    String value = sl<SharedPreferences>().getString(kCurrentLanguage) ?? "";
    if (value == SupportLanguage.vietnam.name) {
      _currentLanguage = SupportLanguage.vietnam;
    } else if (value == SupportLanguage.english.name) {
      _currentLanguage = SupportLanguage.english;
    }
  }

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

  @override
  Future loadData() async {
    if (kIsWeb) {
      // path_provider not support web -> must load wording from assets
      String languageJsonFile = fileJsonOfLanguage(_currentLanguage);

      String jsonText =
          await rootBundle.loadString('assets/language/$languageJsonFile');
      final jsonObj = json.decode(jsonText);
      loadJsonToData(jsonObj);

      return;
    }

    Directory documentDir = await getApplicationDocumentsDirectory();
    try {
      String languageJsonFile = fileJsonOfLanguage(_currentLanguage);
      String languagePath =
          "${documentDir.path}$_languageFolder/$languageJsonFile";
      // check if there have json language in folder => load
      if (await File(languagePath).exists()) {
        // TODO: handle load text from file and parse to json
        return;
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
    return;
  }

  void loadJsonToData(Map<String, dynamic> json) {
    json.forEach((key, value) {
      _data[key] = value;
    });
  }

  @override
  Future switchToLanguage(SupportLanguage language) async {
    if (currentLanguage == language) {
      return;
    }

    _currentLanguage = language;
    await sl<SharedPreferences>().setString(kCurrentLanguage, language.name);
    await loadData();
  }

  @override
  SupportLanguage currentLanguage() {
    return _currentLanguage;
  }
}
