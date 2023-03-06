// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';

import 'package:admin_dashboard/src/utils/hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scoped_model/scoped_model.dart';

final LanguageModel languageModel = LanguageModel();

class LanguageModel extends Model {
  static const Locale en = Locale('en');
  static const Locale hi = Locale('hi');

  Locale _appLocale = const Locale.fromSubtags(languageCode: 'en');

  Locale get locale {
    // handleLocale();
    notifyListeners();
    return _appLocale;
  }

  List<Locale> get supportedLocales => [en, hi];

  late Map<String, dynamic> _localizedString;

  Future<bool> load() async {
    try {
      String jsonString = await rootBundle
          .loadString('assets/language/${locale.languageCode}.json');
      _localizedString = jsonDecode(jsonString);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> changeLanguage() async {
    if (_appLocale == hi) {
      HiveUtils.set(HiveKeys.locale, 'en');
      _appLocale = en;
      await load();
    } else {
      HiveUtils.set(HiveKeys.locale, 'hi');
      _appLocale = hi;
      await load();
    }
  }

  String translate(String key) => _localizedString[key];

  final _Dashboard dashboard = _Dashboard();
}

class MultiLanguage {
  final Locale locale;
  MultiLanguage({this.locale = const Locale.fromSubtags(languageCode: 'en')});

  static MultiLanguage? of(BuildContext context) {
    return Localizations.of<MultiLanguage>(context, MultiLanguage);
  }

  static const LocalizationsDelegate<MultiLanguage> delegate =
      _MultiLanguageDelegate();

  final supportedLocale = [const Locale('en'), const Locale('hi')];

  late Map<String, dynamic> _localizedString;

  Future<bool> load() async {
    try {
      String jsonString = await rootBundle
          .loadString('assets/language/${locale.languageCode}.json');
      _localizedString = jsonDecode(jsonString);
      return true;
    } catch (e) {
      return false;
    }
  }

  String translate(String key) {
    return _localizedString[key];
  }
}

class _MultiLanguageDelegate extends LocalizationsDelegate<MultiLanguage> {
  // This delegate instance will never change
  // It can provide a constant constructor.
  const _MultiLanguageDelegate();
  @override
  bool isSupported(Locale locale) {
    // Include all of your supported language codes here
    return ['en', 'hi'].contains(locale.languageCode);
  }

  /// read Json
  @override
  Future<MultiLanguage> load(Locale locale) async {
    // MultiLanguages class is where the JSON loading actually runs

    MultiLanguage localizations = MultiLanguage(locale: locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_MultiLanguageDelegate old) => true;
}

class _Dashboard {
  String get cancel => languageModel.translate('cancel');
  String get monthlyIncome => languageModel.translate('monthlyIncome');
  String get thisMonth => languageModel.translate('thisMonth');
  String get lastMonth => languageModel.translate('lastMonth');
  String get chartLorem => languageModel.translate('chartLorem');
  String get monthlyReport => languageModel.translate('monthlyReport');
  String get monthlySalesReport =>
      languageModel.translate('monthlySalesReport');
  String get website => languageModel.translate('website');
  String get desktop => languageModel.translate('desktop');
  String get mobile => languageModel.translate('mobile');
  String get chat => languageModel.translate('chat');
  String get msg1 => languageModel.translate('msg1');
  String get msg2 => languageModel.translate('msg2');
  String get msg3 => languageModel.translate('msg3');
  String get msg4 => languageModel.translate('msg4');
  String get msg5 => languageModel.translate('msg5');
  String get enterYourText => languageModel.translate('enterYourText');
  String get send => languageModel.translate('send');
  String get orderSuccessful => languageModel.translate('orderSuccessful');
  String get orderText => languageModel.translate('orderText');
  String get viewOrder => languageModel.translate('viewOrder');
  String get topProductSale => languageModel.translate('topProductSale');
  String get computer => languageModel.translate('computer');
  String get lorem1 => languageModel.translate('lorem1');
  String get clientReviews => languageModel.translate('clientReviews');
  String get revirewText => languageModel.translate('revirewText');
  String get activity => languageModel.translate('activity');
  String get step => languageModel.translate('step');
  String get latestOrder => languageModel.translate('latestOrder');
  String get id => languageModel.translate('id');
  String get name => languageModel.translate('name');
  String get product => languageModel.translate('product');
  String get orderDate => languageModel.translate('orderDate');
  String get amount => languageModel.translate('amount');
  String get deliveryStatus => languageModel.translate('deliveryStatus');
  String get mobileApp => languageModel.translate('mobileApp');
  String get desktopApp => languageModel.translate('desktopApp');
}
