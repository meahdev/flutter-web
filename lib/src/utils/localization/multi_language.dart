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

  String get lorem1 => languageModel.translate('lorem1');
  String get lorem2 => languageModel.translate('lorem2');
  String get lorem3 => languageModel.translate('lorem3');

  final _Dashboard dashboard = _Dashboard();
  final _Calendar calendar = _Calendar();
  final _Widget widget = _Widget();
  final _Form form = _Form();
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

class _Calendar {
  String get createEvent => languageModel.translate('createEvent');
  String get calendarTitle => languageModel.translate('calendarTitle');
}

class _Widget {
  String get simpleToast => languageModel.translate('simpleToast');
  String get lightBackgroundToast =>
      languageModel.translate('lightBackgroundToast');
  String get iconToast => languageModel.translate('iconToast');
  String get primary => languageModel.translate('primary');
  String get secondary => languageModel.translate('secondary');
  String get success => languageModel.translate('success');
  String get error => languageModel.translate('error');
  String get warning => languageModel.translate('warning');
  String get info => languageModel.translate('info');
  String get simpleButtons => languageModel.translate('simpleButtons');
  String get outlineButtons => languageModel.translate('outlineButtons');
  String get simpleWithIconButtons =>
      languageModel.translate('simpleWithIconButtons');
  String get outlineWithIconButtons =>
      languageModel.translate('outlineWithIconButtons');
  String get simpleIconButtons => languageModel.translate('simpleIconButtons');
  String get outlineIconButtons =>
      languageModel.translate('outlineIconButtons');
  String get socialButtons => languageModel.translate('socialButtons');
  String get outlinedSocialButtons =>
      languageModel.translate('outlinedSocialButtons');
  String get defaultRating => languageModel.translate('defaultRating');
  String get halfRating => languageModel.translate('halfRating');
  String get disableRating => languageModel.translate('disableRating');
  String get customIconRating => languageModel.translate('customIconRating');
  String get simpleBadge => languageModel.translate('simpleBadge');
  String get outlineBadge => languageModel.translate('outlineBadge');
  String get simpleAlert => languageModel.translate('simpleAlert');
  String get iconAlert => languageModel.translate('iconAlert');
  String get alertWithTwoButton =>
      languageModel.translate('alertWithTwoButton');
  String get iconAlertWithTwoButton =>
      languageModel.translate('iconAlertWithTwoButton');
  String get gifAlert => languageModel.translate('gifAlert');
  String get alertWithTextfield =>
      languageModel.translate('alertWithTextfield');
  String get thisIs => languageModel.translate('thisIs');
  String get dialogBox => languageModel.translate('dialogBox');
  String get simpleModal => languageModel.translate('simpleModal');
  String get modalWithButton => languageModel.translate('modalWithButton');
  String get largeModal => languageModel.translate('largeModal');
  String get extraLargeModal => languageModel.translate('extraLargeModal');
  String get scrollableModal => languageModel.translate('scrollableModal');
  String get modalLorem => languageModel.translate('modalLorem');
  String get home => languageModel.translate('home');
  String get profile => languageModel.translate('profile');
  String get messages => languageModel.translate('messages');
  String get settings => languageModel.translate('settings');
  String get extra => languageModel.translate('extra');
  String get tabLorem => languageModel.translate('tabLorem');
  String get carouselWithIndicators =>
      languageModel.translate('carouselWithIndicators');
  String get carouselWithCaptions =>
      languageModel.translate('carouselWithCaptions');
  String get firstSlideLabel => languageModel.translate('firstSlideLabel');
  String get secondSlideLabel => languageModel.translate('secondSlideLabel');
  String get thirdSlideLabel => languageModel.translate('thirdSlideLabel');
  String get singleVideo => languageModel.translate('thirdSlideLabel');
  String get multipleVideo => languageModel.translate('thirdSlideLabel');
  String get dragAndDrop => languageModel.translate('dragAndDrop');
  String get basic => languageModel.translate('basic');
  String get dateFormat => languageModel.translate('dateFormat');
  String get dateRange => languageModel.translate('dateRange');
  String get datePickerText => languageModel.translate('datePickerText');
}

class _Form {
  String get inputElements => languageModel.translate('inputElements');
  String get text => languageModel.translate('text');
  String get formSearch => languageModel.translate('formSearch');
  String get email => languageModel.translate('email');
  String get url => languageModel.translate('url');
  String get telephone => languageModel.translate('telephone');
  String get password => languageModel.translate('password');
  String get number => languageModel.translate('number');
  String get date => languageModel.translate('date');
  String get color => languageModel.translate('color');
  String get pickColor => languageModel.translate('pickColor');
  String get select => languageModel.translate('select');
  String get validationForm => languageModel.translate('validationForm');
  String get fullName => languageModel.translate('fullName');
  String get username => languageModel.translate('username');
  String get emailID => languageModel.translate('emailID');
  String get moileNo => languageModel.translate('moileNo');
  String get state => languageModel.translate('state');
  String get zip => languageModel.translate('zip');
  String get inputTypeValidation =>
      languageModel.translate('inputTypeValidation');
  String get required => languageModel.translate('required');
  String get digits => languageModel.translate('digits');
  String get alphanumeric => languageModel.translate('alphanumeric');
  String get inputRangeValidation =>
      languageModel.translate('inputRangeValidation');
  String get rangeLength => languageModel.translate('rangeLength');
  String get minValue => languageModel.translate('minValue');
  String get maxValue => languageModel.translate('maxValue');
  String get rangeValue => languageModel.translate('rangeValue');
  String get regularExp => languageModel.translate('regularExp');
  String get nameError => languageModel.translate('nameError');
  String get userNameError => languageModel.translate('userNameError');
  String get cityError => languageModel.translate('cityError');
  String get stateError => languageModel.translate('stateError');
  String get zipError => languageModel.translate('zipError');
  String get requiredError => languageModel.translate('requiredError');
  String get emailError => languageModel.translate('emailError');
  String get urlError => languageModel.translate('urlError');
  String get digitError => languageModel.translate('digitError');
  String get numberError => languageModel.translate('numberError');
  String get alphanumericError => languageModel.translate('alphanumericError');
  String get rangeLengthError => languageModel.translate('rangeLengthError');
  String get minValueError => languageModel.translate('minValueError');
  String get maxValueError => languageModel.translate('maxValueError');
  String get rangeValueError => languageModel.translate('rangeValueError');
  String get regularExpError => languageModel.translate('regularExpError');
  String get dropzoneText => languageModel.translate('dropzoneText');
  String get nestedForm => languageModel.translate('nestedForm');
  String get subject => languageModel.translate('subject');
  String get resume => languageModel.translate('resume');
  String get message => languageModel.translate('message');
  String get nestedFieldForm => languageModel.translate('nestedFieldForm');
  String get phoneNo => languageModel.translate('phoneNo');
  String get gender => languageModel.translate('gender');
  String get wizardForm => languageModel.translate('wizardForm');
  String get sellerDetails => languageModel.translate('sellerDetails');
  String get companyDocument => languageModel.translate('companyDocument');
  String get bankDetails => languageModel.translate('bankDetails');
  String get confirmDetails => languageModel.translate('confirmDetails');
  String get sellerName => languageModel.translate('sellerName');
  String get mobileNo => languageModel.translate('mobileNo');
  String get address => languageModel.translate('address');
  String get companyName => languageModel.translate('companyName');
  String get liveMarketAccount => languageModel.translate('liveMarketAccount');
  String get productCategory => languageModel.translate('productCategory');
  String get productSubCategory => languageModel.translate('productSubCategory');
  String get contactPerson => languageModel.translate('contactPerson');
  String get panCard => languageModel.translate('panCard');
  String get vatTinNo => languageModel.translate('vatTinNo');
  String get cstNo => languageModel.translate('cstNo');
  String get serviceTaxNo => languageModel.translate('serviceTaxNo');
  String get companyUIN => languageModel.translate('companyUIN');
  String get declaration => languageModel.translate('declaration');
  String get nameOnCard => languageModel.translate('nameOnCard');
  String get creditCardType => languageModel.translate('creditCardType');
  String get creditCardNumber => languageModel.translate('creditCardNumber');
  String get cardVerificationNumber => languageModel.translate('cardVerificationNumber');
  String get expirationDate => languageModel.translate('expirationDate');
  String get confirmText => languageModel.translate('confirmText');
  String get formMask => languageModel.translate('formMask');
  String get dateStyle => languageModel.translate('dateStyle');
  String get repeat => languageModel.translate('repeat');
  String get dateTime => languageModel.translate('dateTime');
  String get ipAddress => languageModel.translate('ipAddress');
  String get emailAddress => languageModel.translate('emailAddress');
}
