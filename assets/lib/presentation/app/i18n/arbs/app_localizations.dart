import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'arbs/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('pt')];

  /// No description provided for @commonHumanizedDateHourAgo.
  ///
  /// In pt, this message translates to:
  /// **'hora atrás'**
  String get commonHumanizedDateHourAgo;

  /// No description provided for @commonHumanizedDateHoursAgo.
  ///
  /// In pt, this message translates to:
  /// **'horas atrás'**
  String get commonHumanizedDateHoursAgo;

  /// No description provided for @commonHumanizedDateMinutesAgo.
  ///
  /// In pt, this message translates to:
  /// **'minutos atrás'**
  String get commonHumanizedDateMinutesAgo;

  /// No description provided for @commonHumanizedDateSecondsAgo.
  ///
  /// In pt, this message translates to:
  /// **'segundos atrás'**
  String get commonHumanizedDateSecondsAgo;

  /// No description provided for @commonHumanizedDateYesterday.
  ///
  /// In pt, this message translates to:
  /// **'Ontem'**
  String get commonHumanizedDateYesterday;

  /// No description provided for @commonHumanizedDateWeekday.
  ///
  /// In pt, this message translates to:
  /// **'{weekday, select, 1 {Segunda-feira} 2 {Terça-feira} 3 {Quarta-feira} 4 {Quinta-feira} 5 {Sexta-feira} 6 {Sábado} 7 {Domingo} other {}}'**
  String commonHumanizedDateWeekday(String weekday);

  /// No description provided for @commonSave.
  ///
  /// In pt, this message translates to:
  /// **'Salvar'**
  String get commonSave;

  /// No description provided for @homeScreenNewPostButton.
  ///
  /// In pt, this message translates to:
  /// **'Novo'**
  String get homeScreenNewPostButton;

  /// No description provided for @blogName.
  ///
  /// In pt, this message translates to:
  /// **'Notas de uma mente inquieta'**
  String get blogName;

  /// No description provided for @blogTitle.
  ///
  /// In pt, this message translates to:
  /// **'Blog'**
  String get blogTitle;

  /// No description provided for @blogAbout.
  ///
  /// In pt, this message translates to:
  /// **'Sobre mim'**
  String get blogAbout;

  /// No description provided for @postScreenCreateError.
  ///
  /// In pt, this message translates to:
  /// **'Não foi possível salvar a postagem!'**
  String get postScreenCreateError;

  /// No description provided for @postScreenCreateSuccess.
  ///
  /// In pt, this message translates to:
  /// **'Postagem salva com sucesso!'**
  String get postScreenCreateSuccess;

  /// No description provided for @postScreenEmptyContentHint.
  ///
  /// In pt, this message translates to:
  /// **'Clique aqui para preencher conteúdo...'**
  String get postScreenEmptyContentHint;

  /// No description provided for @postScreenInputContentHint.
  ///
  /// In pt, this message translates to:
  /// **'Conteúdo da postagem...'**
  String get postScreenInputContentHint;

  /// No description provided for @postScreenInputTitleHint.
  ///
  /// In pt, this message translates to:
  /// **'Título da postagem'**
  String get postScreenInputTitleHint;

  /// No description provided for @postScreenTitle.
  ///
  /// In pt, this message translates to:
  /// **'Nova postagem'**
  String get postScreenTitle;

  /// No description provided for @validatorsMinLength.
  ///
  /// In pt, this message translates to:
  /// **'Você deve informar pelo menos {min} dígitos'**
  String validatorsMinLength(Object min);

  /// No description provided for @validatorsRequired.
  ///
  /// In pt, this message translates to:
  /// **'Este campo é obrigatório'**
  String get validatorsRequired;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
