/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 3
/// Strings: 4421 (1473 per locale)
///
/// Built on 2024-08-13 at 03:15 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	km(languageCode: 'km', build: _TranslationsKm.build),
	zh(languageCode: 'zh', build: _TranslationsZh.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  );

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get underDevelopment => 'Under development';
	late final _TranslationsCommonEn common = _TranslationsCommonEn._(_root);
	List<String> get months => [
		'jan',
		'feb',
		'mar',
		'apr',
		'may',
		'jun',
		'jul',
		'aug',
		'sep',
		'oct',
		'nov',
		'dec',
	];
	String get changeCardPin => 'Change Card PIN';
	String get changeCardPinNote => 'Consider to avoid using repeatedly or easy to guess PIN';
	String get changeCardPinSuccessfully => 'Change Card PIN Successfully!';
	String get confirmPincodeError => 'PIN code is incorrect. Please try again!';
	late final _TranslationsGPayEn gPay = _TranslationsGPayEn._(_root);
	late final _TranslationsAutoRejectedScreenEn autoRejectedScreen = _TranslationsAutoRejectedScreenEn._(_root);
	late final _TranslationsPasscodeEn passcode = _TranslationsPasscodeEn._(_root);
	late final _TranslationsLoginScreenEn loginScreen = _TranslationsLoginScreenEn._(_root);
	List<String> get dayAgo => [
		'Today',
		'Yesterday',
		'Monday',
		'Tuesday',
		'Wednesday',
		'Thursday',
		'Friday',
		'Saturday',
		'Sunday',
	];
	late final _TranslationsErrorsEn errors = _TranslationsErrorsEn._(_root);
	late final _TranslationsBiometricEn biometric = _TranslationsBiometricEn._(_root);
	late final _TranslationsMoveScreenEn moveScreen = _TranslationsMoveScreenEn._(_root);
	late final _TranslationsLoginEn login = _TranslationsLoginEn._(_root);
	late final _TranslationsHomeEn home = _TranslationsHomeEn._(_root);
	late final _TranslationsAssetEn asset = _TranslationsAssetEn._(_root);
	late final _TranslationsQrCodeEn qrCode = _TranslationsQrCodeEn._(_root);
	late final _TranslationsLoyaltyEn loyalty = _TranslationsLoyaltyEn._(_root);
	late final _TranslationsProductEn product = _TranslationsProductEn._(_root);
	late final _TranslationsVerifyPasscodeScreenEn verifyPasscodeScreen = _TranslationsVerifyPasscodeScreenEn._(_root);
	late final _TranslationsLanguageEn language = _TranslationsLanguageEn._(_root);
	late final _TranslationsWelcomeScreenEn welcomeScreen = _TranslationsWelcomeScreenEn._(_root);
	late final _TranslationsNotificationEn notification = _TranslationsNotificationEn._(_root);
	List<String> get greeting => [
		'Good morning,',
		'Good afternoon,',
		'Good evening,',
	];
	late final _TranslationsVerifyNumberPhoneScreenEn verifyNumberPhoneScreen = _TranslationsVerifyNumberPhoneScreenEn._(_root);
	late final _TranslationsVerifyOTPScreenEn verifyOTPScreen = _TranslationsVerifyOTPScreenEn._(_root);
	late final _TranslationsEKYCIntroScreenEn eKYCIntroScreen = _TranslationsEKYCIntroScreenEn._(_root);
	late final _TranslationsIdentificationVerifyIntroScreenEn identificationVerifyIntroScreen = _TranslationsIdentificationVerifyIntroScreenEn._(_root);
	late final _TranslationsPersonalInformationEn personalInformation = _TranslationsPersonalInformationEn._(_root);
	late final _TranslationsConfirmEKycInformationScreenEn confirmEKycInformationScreen = _TranslationsConfirmEKycInformationScreenEn._(_root);
	late final _TranslationsPasswordCreateScreenEn passwordCreateScreen = _TranslationsPasswordCreateScreenEn._(_root);
	late final _TranslationsPasscodeCreateScreenEn passcodeCreateScreen = _TranslationsPasscodeCreateScreenEn._(_root);
	late final _TranslationsConfirmPasscodeScreenEn confirmPasscodeScreen = _TranslationsConfirmPasscodeScreenEn._(_root);
	late final _TranslationsProcessingScreenEn processingScreen = _TranslationsProcessingScreenEn._(_root);
	late final _TranslationsManualReviewScreenEn manualReviewScreen = _TranslationsManualReviewScreenEn._(_root);
	late final _TranslationsOnboardingSuccessScreenEn onboardingSuccessScreen = _TranslationsOnboardingSuccessScreenEn._(_root);
	late final _TranslationsVerificationProcessScreenEn verificationProcessScreen = _TranslationsVerificationProcessScreenEn._(_root);
	late final _TranslationsUpdateEmailScreenEn updateEmailScreen = _TranslationsUpdateEmailScreenEn._(_root);
	late final _TranslationsUpdateOccupationScreenEn updateOccupationScreen = _TranslationsUpdateOccupationScreenEn._(_root);
	late final _TranslationsRegisterBiometricScreenEn registerBiometricScreen = _TranslationsRegisterBiometricScreenEn._(_root);
	late final _TranslationsSuccessScreenEn successScreen = _TranslationsSuccessScreenEn._(_root);
	late final _TranslationsCardLimitSettingEn cardLimitSetting = _TranslationsCardLimitSettingEn._(_root);
	late final _TranslationsCardEn card = _TranslationsCardEn._(_root);
	late final _TranslationsCardTabScreenEn cardTabScreen = _TranslationsCardTabScreenEn._(_root);
	late final _TranslationsCardStatementEn cardStatement = _TranslationsCardStatementEn._(_root);
	late final _TranslationsCardHistoryEn cardHistory = _TranslationsCardHistoryEn._(_root);
	late final _TranslationsFilterCardEn filterCard = _TranslationsFilterCardEn._(_root);
	late final _TranslationsSelectCreditCardEn selectCreditCard = _TranslationsSelectCreditCardEn._(_root);
	late final _TranslationsCustomerEn customer = _TranslationsCustomerEn._(_root);
	late final _TranslationsProfileEn profile = _TranslationsProfileEn._(_root);
	late final _TranslationsTransferEn transfer = _TranslationsTransferEn._(_root);
	late final _TranslationsAccountEn account = _TranslationsAccountEn._(_root);
	late final _TranslationsCurrencyTypeEn currencyType = _TranslationsCurrencyTypeEn._(_root);
	late final _TranslationsCardRepaymentEn cardRepayment = _TranslationsCardRepaymentEn._(_root);
	late final _TranslationsBillPaymentEn billPayment = _TranslationsBillPaymentEn._(_root);
	List<String> get dateTimeDesc => [
		'Tomorrow',
		'Today',
		'Yesterday',
	];
	late final _TranslationsUserDevicesEn userDevices = _TranslationsUserDevicesEn._(_root);
	late final _TranslationsWithdrawEn withdraw = _TranslationsWithdrawEn._(_root);
	late final _TranslationsQrTransferEn qrTransfer = _TranslationsQrTransferEn._(_root);
	late final _TranslationsFxExchangeRateEn fxExchangeRate = _TranslationsFxExchangeRateEn._(_root);
	late final _TranslationsTaskToDoEn taskToDo = _TranslationsTaskToDoEn._(_root);
	late final _TranslationsEditLayoutEn editLayout = _TranslationsEditLayoutEn._(_root);
	late final _TranslationsCloseDepositModelEn closeDepositModel = _TranslationsCloseDepositModelEn._(_root);
	late final _TranslationsSaveBillBeneficiaryEn saveBillBeneficiary = _TranslationsSaveBillBeneficiaryEn._(_root);
	late final _TranslationsSearchBillBeneficiaryEn searchBillBeneficiary = _TranslationsSearchBillBeneficiaryEn._(_root);
	late final _TranslationsQuickActionEn quickAction = _TranslationsQuickActionEn._(_root);
	String get endJson => '';
}

// Path: common
class _TranslationsCommonEn {
	_TranslationsCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get value => 'Value';
	String get remove => 'Remove';
	String get dayOfTheWeek => 'Day of the week';
	String get dayOfTheMonth => 'Day of the Month';
	String get apply => 'Apply';
	String get all => 'All';
	String get back => 'Back';
	String get backHome => 'Back Home';
	String get goToHome => 'Go to Home';
	String get save => 'Save';
	String get forceUpdate => 'Force Update';
	String get proceed => 'Proceed';
	String get success => 'Success';
	String get next => 'Next';
	String get cancel => 'Cancel';
	String get agree => 'Agree';
	String get searchHint => 'Search';
	String get ok => 'OK';
	String get close => 'Close';
	String get deny => 'Deny';
	String get male => 'Male';
	String get female => 'Female';
	String get orther => 'Other';
	String get warning => 'Warning';
	String get select => 'Select';
	String get retry => 'Retry';
	String get termsAndConditions => 'Terms and Conditions';
	String get learnMore => 'Learn More';
	String get seeAll => 'See all';
	String get updateNow => 'Update now';
	String get applicationUpdate => 'Application Update';
	String get optional => 'Optional';
	String get phoneNumber => 'Phone number';
	String get letBeginTitle => 'Let\'s Begin';
	String get confirm => 'Confirm';
	String get descriptionForceUpdate => 'There is a new version available. Please update to ensure security and enhance your experience';
	String get areSureWantDisable => 'Are you sure you want to disable biometric recognition authentication?';
	String get atLeast8CharactersWarning => 'At least 8 characters with no space';
	String get passcodeConsiderWarning => 'Consider to avoid using repeatedly or easy to guess Passcode';
	String get processing => 'Processing';
	String remainTimeString({required Object time}) => '${time}s';
	String get accountNumber => 'Account number';
	String get networkSetting => 'Network settings';
	String get settings => 'Settings';
	String get tryLater => 'Try Later';
	String get callHotLine => 'Call Hotline';
	String get numberHintText => 'eg. 123456';
	String get email => 'Email';
	String get emailHintText => 'Email address';
	String get notNow => 'Not now';
	String get login => 'Login';
	String get done => 'Done';
	String get more => 'More';
	String get copyToClipboard => 'Copied to clipboard';
	String get account => 'Account';
	String get share => 'Share';
	String get filter => 'Filter';
	String get timeRange => 'Time range';
	String get reset => 'Reset';
	String get here => 'Here';
	String get update => 'Update';
	String get noResultFound => 'No result found';
	String get emptyList => 'Empty list';
	String get from => 'From';
	String get to => 'To';
	String get no => 'No';
	String get yes => 'Yes';
	String get fiveMinutes => '5 minutes';
	String get threeMinutes => '3 minutes';
	String get oneMinute => '1 minute';
	String get thritySeconds => '30 seconds';
	String get edit => 'Edit';
	String get review => 'Review';
	String get finish => 'Finish';
	String get tryAgain => 'Try Again';
	String get favorite => 'Favorite';
	String get time => 'Time';
	String get free => 'Free';
	String get amount => 'Amount';
	String get logOut => 'Log Out';
	String get version => 'App version';
	String get sureWantLogOutiBank => 'You want to log out iBank from this Device?';
	String get custom => 'Custom';
	String get downloaded => 'Downloaded';
	String get wouldLikeContinue => 'Would you like to continue?';
	String get notAvailable => 'Not available';
	String get congratulation => 'Congratulation!';
	String get note => 'Note:';
	String get keep => 'Keep';
	String get change => 'Change';
	String get delete => 'Delete';
	String get copied => 'Copied';
	String get repeat => 'Repeat';
	String get backToWelcomeScreen => 'Back to Welcome Screen';
	String get open => 'Open';
	String get ticketBox => 'Ticket Box';
	String get failed => 'Failed';
	String get borrow => 'Borrow';
	String get register => 'Register';
	String get unableSendOTPSMS => 'Unable to Send OTP via SMS';
	String get weSendOTPViaSMS => 'We couldn\'t send the OTP via SMS. We will now send it to your registered email. Do you agree?';
	String get unableSendOTP => 'Unable to Send OTP';
	String get youRegisteredEmail => 'You haven\'t registered your email address, we can not send you the OTP code';
	String get weUnableSendOTP => 'We are unable to send you OTP. Please call our hotline for support';
	String get doYouWantTologoutDevice => 'You want to log out iBank from this Device?';
	String get autoPayment => 'Auto Payment';
	String get home => 'Home';
}

// Path: gPay
class _TranslationsGPayEn {
	_TranslationsGPayEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get addGPaySuccessTitle => 'Add to GPay Successfully';
	String get addGPaySuccessDescription => 'Your card is ready to pay in stores with GPay';
	String get guideToGPay => 'Guide to GPay';
	String get viewGPayCard => 'View Card';
	String get backbtn => 'Back Home';
	String get removeGPaySuccessTitle => 'Remove Successfully';
	String get removeGPayDescritption => 'Your card has been remove from Google Pay wallet account';
	String get setGPayAsDefaultSuccessTitle => 'Successfully';
	String get setGPayCardAsDefaultDescription => 'Your card has been set as default with Google Pay wallet account';
	String get setAsDefaultInGPay => 'Set as default in GPay';
	String get removeInGPay => 'Remove in GPay';
	String get setting => 'Setting';
	String get goToCard => 'Go to Card';
	String get addTo => 'Add to';
	String get pay => 'Pay';
	String get viewIn => 'View In';
}

// Path: autoRejectedScreen
class _TranslationsAutoRejectedScreenEn {
	_TranslationsAutoRejectedScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get verificationRejected => 'Verification Rejected';
	String get weRegretToInform => 'We regret to inform you that your verification request has been rejected. \nPlease try again or call our hotline for support';
	String get weRegeToInform => 'We regret to inform you that your verification request has been rejected. \nYou have run out of attempts. Please go to the iBank branch or call our hotline for support.';
	String get branchesLocation => 'Branches location';
}

// Path: passcode
class _TranslationsPasscodeEn {
	_TranslationsPasscodeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get enterYourPasscode => 'Enter Your Passcode';
	String get forgotPasscode => 'Forgot Passcode?';
	String get currentPasscode => 'Current Passcode';
	String get createNewPasscode => 'Create New Passcode';
	String get confirmPasscode => 'Confirm Passcode';
	String get invalidPasscodeError => 'Passcode is not valid';
	String get wrongPasscode => 'Incorrect passcode';
	String get cancel => 'Cancel';
	String get mContinue => 'Continue';
	String get avoidPasscode => 'Avoid using a passcode that is:';
	String get consecutiveNumbers => '• Consecutive numbers (eg. 123456)';
	String get repeatingNumbers => '• Repeating number (eg. 111111)';
	String get kindlyOTP => 'Kindly input OTP that was sent to your phone number *******';
	String get pleaseDonNotUseConsecutiveNumber => 'Please don\'t use consecutive number';
	String get pleaseDonNotUseRepeatNumber => 'Please don\'t use repeat number';
	String get pleaseEnterPasscodeMatchingOld => 'Please enter a passcode matching the one you just created';
}

// Path: loginScreen
class _TranslationsLoginScreenEn {
	_TranslationsLoginScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get deviceHasBeenRemoved => 'The device has been removed.';
}

// Path: errors
class _TranslationsErrorsEn {
	_TranslationsErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get canNotSMSServer => 'Can not connect to SMS server. Please try again later.';
	String get deviceHasBeenUnregistered => 'This device has been unregistered, please re-login to register this device';
	String get emptyPhoneNumber => 'Please enter mobile number';
	String get invalidPhoneNumber => 'Please enter valid mobile number';
	String get passwordFormatErrorMessage => 'Password length has to be at least 8 characters with no spaces';
	String get confirmPasswordNotMatch => 'The confirmed password does not match';
	String get passcodeMismatch => 'Passcode mismatch. Please make sure the confirmed passcode matches the one you entered earlier';
	String get accessLockedError => 'Your access is temporarily lock. To regain access, please contact us through hotline:';
	String get networkTryAgainMessage => 'There are some problems with the connection, please try again';
	String get accountLockedMessage => 'Account Temporarily Locked';
	String get serverUnknownError => 'Internal Server Error';
	String get serviceNotAvailable => 'Service is not available';
	String get noInternetAccess => 'No internet access';
	String get notSupportedMobileProvider => 'Not supported mobile provider';
	String get topupPhoneInvalid => 'Invalid phone number format';
	String topupAmountInvalid({required Object min, required Object max}) => 'The amount must be between \$${min} to \$${max}';
	String get topupAmountNotAllowAccount => 'This payment service is not allows to use KHR';
	String get notSupportUSDAccount => 'Not support USD Account';
	String get faceMatchingFailed => 'Face matching failed';
	TextSpan accountLockedDescription({required InlineSpanBuilder phoneTap}) => TextSpan(children: [
		const TextSpan(text: 'Incorrect passcode entered 5 times. Your account is temporarily locked for security reason. To regain access, please visit the branch or call: '),
		phoneTap(''),
	]);
	String get temporarilyLockedHotline => 'Your account is temporarily locked due to fail to face matching 3 times. Please try again after 24 hours or contact us through hotline';
	String get fail => 'Fail';
	String get pleaseUpdateTimeSettings => 'Please update the time in the settings.';
	String get pleaseTryAgain => 'Please try again';
	String get cannotVerifyConfirmation => 'Cannot verify your confirmation';
	String get youHaveRejected => 'You have rejected to move to iBank';
	String get movingRejected => 'Moving Rejected';
	String get onlyMakeRequest => 'You can only make this request 2 times per day. Please wait 24 hours to retry the process.';
	String get serviceDisruptionTitle => 'Oops, iBank is taking a little break at the moment';
	String get serviceDisruptionMessage => 'Please try again later! Thank you for your patience!';
	String get pleaseTryAgainAfter => 'Please try again after 24 hours or contact us through hotline';
	String get timeOutTitle => 'Request time-out';
	String get timeOutMessage => 'Your session has timed out. For security reason, please log in again';
	String get internetErrorTitle => 'Internet Connection Unavailable';
	String get internetErrorMessage => 'Your internet connection is not available. Please check your Wi-Fi or mobile data connection';
	String balanceInsufficient({required Object balance, required Object otherCurrency}) => 'Your available balance is ${balance} or equivalent in ${otherCurrency}';
	String get loginFailed => 'Login failed';
	String get wrongOTP => 'Invalid OTP';
	String get missUserName => 'Missing user name';
	String get userNotFound => 'User not found';
	String get passInvalid => 'Password invalid';
	String get userIsDisabled => 'User is disabled';
	String get wrongPasscode => 'Incorrect passcode';
	String get otpReachLimit => 'Otp reach limit';
	String get loginExpire => 'Login expired';
	String get logginError => 'Login error';
	String get deviceNotFound => 'Device not found';
	String get internalServerError => 'Internal server error';
	String get confirmationExpired => 'Confirmation expired';
	String get invalidSingedData => 'Invalid singed data';
	String get invalidEmail => 'Invalid email';
	String get invalidIdCard => 'Invalid ID Card';
	String get invalidPasscode => 'Invalid passcode';
	String get confirmPassNotmatch => 'Confirm password not match';
	String get enrollBiometricsSettings => 'Please enroll your biometric data in your device settings to proceed.';
	String get biometricsNotEnrolled => 'Biometric Enrollment Required';
	String get openSettings => 'Open Settings';
	String get notification => 'Notification';
	String inforNotification({required Object type}) => 'Face ID login is disable due to your change in device\'s ${type} ID registration.';
	String get face => 'Face';
	String get touch => 'Touch';
	String get jailbreakAppErrorMessage => 'Your device is root or jailBroken!';
	String get requestTookTooLongToProcess => 'Request Took Too Long To Process';
	String get contentRequestTookToLongTime => 'You can try again or close the app and open it again. Make sure to check your internet connection to ensure you\'re online';
}

// Path: biometric
class _TranslationsBiometricEn {
	_TranslationsBiometricEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get touch => 'Finger print';
	String get face => 'FaceID';
}

// Path: moveScreen
class _TranslationsMoveScreenEn {
	_TranslationsMoveScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get iHaveConfirmedMove => 'I have confirmed to move';
	String get move => 'Move';
	String get pleaseInformed => 'Please be informed that your account will be deactivated in BIC Mobile upon migration to the iBank app. Please log in to BIC Mobile to confirm your action. You can only make this request 2 times per day.';
	String get confirmMovingIBank => 'Confirm Moving to iBank';
	String get youMovingFrom => 'You are moving from BIC Mobile to iBank';
	String get pleaseTapBICMobile => 'Please tap on BIC Mobile notification to confirm your action';
	String get userGuide => 'User guide';
	String get yourBICMobileAccountWill => 'Your BIC Mobile account will be deactivated upon migration to the iBank app.';
	String get userGuideMovingIBank => 'User Guide for Moving to iBank';
	String get doesThisFunctionWork => 'How does this function work?';
	String get step1ClickConfirm => '• Step 1: Click "Move" on Confirm moving to iBank screen';
	String get step2TapNotification => '• Step 2: Tap on the notification from BIC Mobile to confirm moving to iBank';
	String get tapTheNotification => 'Tap on the notification';
	String get step3BackIBank => '• Step 3: Back to the iBank app and continue the identity verification process';
	String get step4SetUpPasscode => '• Step 4: Set up new passcode and complete.';
	String get shouldCannotReceive => 'What should I do if I cannot receive notifications on the BIC Mobile app?';
	String get update1BIC => '1. Update your BIC Mobile to the latest version';
	String get please2DeviceSettings => '2. Please check your device settings, you need to allow BIC Mobile to send notification.';
	String get above3Word => '3. If non of above work, you might need to delete BIC Mobile app and install it again on your device. Please allow BIC Mobile to send notification and try the moving process again.';
}

// Path: login
class _TranslationsLoginEn {
	_TranslationsLoginEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Login';
	String get welcomeBack => 'Welcome back';
	String get forgotPassword => 'Forgot Password?';
	String get button => 'next';
	String get tranfer => 'Transfer';
	String get qrCode => 'QR Code';
	List<String> get bottomFunc => [
		'Location',
		'FX Rate',
		'FAQ',
		'Support',
	];
}

// Path: home
class _TranslationsHomeEn {
	_TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get backAgainToExit => 'Press “Back” button again to exit';
	String get allAccounts => 'All accounts';
	String get supports => 'Supports';
	String get accountDetails => 'Account details';
	String get availableCreditLimit => 'Available Credit Limit';
	String get creditLimit => 'Credit Limit';
	String get cardManagement => 'Card Management';
	String get lock => 'Lock';
	String get youHaveSomeTasksToDo => 'You have some tasks to do';
	String get favorites => 'Favorites';
	String get applyForACreditCardWithUnlimitedBenefits => 'Apply for a credit card with unlimited benefits';
	String get iBankBusiness => 'iBank Business';
	String get streamlinesFinacialManagementForYourBussiness => 'Streamlines financial management for your business';
	String get activity => 'Activity';
	String get support => 'Support';
	String get ourCustomerServiceHotlineIsAvailable247ReadyToAssistYou => 'Our customer service hotline is available 24/7, ready to assist you';
	String get hotline => 'Hotline';
	String get email => 'Email';
	String get request => 'Request';
	String get title => 'Home';
	String get newTransfer => 'New\nTransfer';
	String get mobileTopUp => 'Mobile\nTop up';
	String get linkEWallet => 'Link\nE-wallet';
	String get atmWithdrawal => 'ATM\nWithdrawal';
	String get billPayment => 'Bill \nPayment';
	String get cardList => 'Card list';
	String get cardDetail => 'Card details';
	String get expiry => 'EXPIRY';
	String get shareAccountText => 'Hi there! Please find my iBank Account details below: ';
	String get accountName => 'Account name';
	String get accountNumber => 'Account number';
	String get copyAccountNumber => 'Copy account number';
	String get shareViaSocialMedia => 'Share via social media';
	String get downloadAccountQRCode => 'Download account QR code';
	String get copied => 'Copied';
	String get editFavorites => 'Edit Favorites';
	String get used => 'Used';
	String get yourFavoriteFunctions => 'Your Favorite Functions';
	String get functionList => 'Function List';
	String get pleaseSelectUpTo8FunctionsFromTheListBelow => 'Please select up to 8 functions from the list below';
	String get savedFavoritesSuccessfully => 'Saved favorites successfully';
	String get saveChanges => 'Save changes?';
	String get doYouWantToSaveTheChangeYouMade => 'Do you want to save the change you made?';
	String get introducingNewFeatures => 'Introducing new features';
	String get internationalTransferRightOnibank => 'International Transfer right on ibank';
	String get addCardToGpay => 'Add Card to GPay';
	String get setupNow => 'Setup Now';
	String get gpay => 'GPAY';
	String get homeContinue => 'Continue';
	String get youDontHaveAnyCard => 'You dont have any card';
}

// Path: asset
class _TranslationsAssetEn {
	_TranslationsAssetEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get viewCard => 'View Card';
	String get viewlistCard => 'View List Card';
	String get closeCard => 'Close Card';
	String get closeCardDescription => 'This action is irreversible. You’ll no longer be able to use this card again';
	String get lost => 'Lost';
	String get stolen => 'Stolen';
	String get damage => 'Damage';
	String get fraudulent => 'Fraudulent';
	String get otherReason => 'Other reason';
	String get otherReasonHint => 'Input the reason here';
	String closeCardReviewDescription({required Object cardType}) => 'You are about to close ${cardType}';
	String get cardholderName => 'Cardholder name';
	String get linkedAccount => 'Linked account';
	String get purposeOfClosing => 'Purpose of closing';
	String get closeCardReviewWarning => 'After you close the card, you won’t be able to make any transactions and all transactions that were made under this card will disappear.';
	String get closeCardSuccessful => 'Close Card Successful';
	String get renameCard => 'Change Card Nickname';
	String get cardName => 'Card name';
	String get cardNickname => 'Card nickname';
	String get renameCardSuccessDescription => 'Card nickname has been successfully updated.';
	String get cardLimitSettingSuccessDescription => 'Card limit setting has been successfully updated.';
	String get linkAccount => 'Link Account';
	String get unlockCardSuccessful => 'Unlock Card Successful';
	String get estimatedInterest => 'Estimated interest';
	String get lockCardSuccessful => 'Lock Card Successful';
	String get updateEmailAddress => 'Update email address';
	String get updateEmailAddressDecs => 'Please update your email address in the profile settings to receive account statement through email';
	List<String> get changePincodeSteps => [
		'Current Pin',
		'New Pin',
		'Confirm New Pin',
	];
	String get changeCardPin => 'Change Card PIN';
	String get changeCardPinNote => 'Consider to avoid using repeatedly or easy to guess PIN';
	String get changeCardPinSuccessfully => 'Change Card PIN Successfully!';
	String get confirmPincodeError => 'PIN code is incorrect. Please try again!';
	late final _TranslationsAssetGPayEn gPay = _TranslationsAssetGPayEn._(_root);
	String get titleNavigation => 'Account & Card';
	String get titleTab => 'Account';
	String get card => 'Card';
	String get saving => 'Saving';
	String get loan => 'Loan';
	String get depositAccountProcessingNoteDesc => 'Your fixed deposit account is being processed, and will be available for viewing in a few moments. Please check back again soon.';
	String get deposit => 'Deposit';
	String get openDate => 'Open date';
	String get earlyClosureInterest => 'Early closure interest rate';
	String get earlyClosureInterestAmount => 'Early closure interest amount';
	String get tax => 'Tax';
	String get principalAmount => 'Principal amount';
	String get thisMightEffect => 'The value may vary depending on the system, the number is for reference only.';
	String get collectTotalInterestAmount => 'Collect total interest received (InC. Tax)';
}

// Path: qrCode
class _TranslationsQrCodeEn {
	_TranslationsQrCodeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'QR';
	String get scanQR => 'Scan QR';
	String get alignFrameWithQRCode => 'Align frame with QR code';
	String get uploadQR => 'Upload QR';
	String get flash => 'Flash';
	String get myQR => 'My QR';
	String get unsupportedQrCode => 'Unsupported QR code';
	String get noPermissionCameraTitle => 'No Permission';
	String get cameraNoPermission => 'To Scan QR please allow iBank to access your camera';
	String get noPermissionLibrary => 'To Upload QR please allow iBank to access your photo library.';
}

// Path: loyalty
class _TranslationsLoyaltyEn {
	_TranslationsLoyaltyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get rewardDetails => 'Reward Details';
	String get price => 'Price';
	String get termsOfUse => 'Terms of use';
	String get giftCollections => 'Gift Collections';
	String get enterVoucherCode => 'Enter voucher code';
	String get title => 'Loyalty';
	String get all => 'All';
	String get topUp => 'Top Up';
	String get billPayment => 'Bill Payment';
	String get internationalTransfer => 'International Transfer';
	String get ncsTransfer => 'NCS Transfer';
	String get iBankReward => 'iBank Reward';
	String get silverMember => 'Silver Member';
	String get iCoin => 'iCoin';
	String get memberPrivileges => 'Member Privileges';
	String get useNow => 'Use Now';
	String get tracingCode => 'Tracing code';
	String get value => 'Value';
	String get validityPeriod => 'Validity period';
	String get rewardType => 'Reward type';
	String get redeemSuccessfully => 'Redeem Successfully';
	String get historyActivity => 'History Activity';
	String get dailyEarned => 'Daily earned';
	String get weeklyEarned => 'Weekly earned';
	String get monthlyEarned => 'Monthly earned';
	String get expried => 'Expried';
	String get transactionID => 'Transaction ID';
	String get processedDate => 'Processed date';
	String get transactionType => 'Transaction type';
	String get help => 'Help';
}

// Path: product
class _TranslationsProductEn {
	_TranslationsProductEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Products';
	String get ourProducts => 'Our Products';
	String get homeLoanDesc => 'With iBank Housing Loan, making your dreams come true is easy';
	String get homeLoan => 'Home Loan';
	String get carLoan => 'Car Loan';
	String get carLoanDesc => 'Helping you to own your own vehicle with affordable monthly payments.';
	String get creditCardDesc => 'Enjoy an exellent spending power with our Credit card.';
	String get lowInterestRates => 'Low Interest Rates';
	String get speedyApproval => 'Speedy Approval';
	String get flexibleLoanTermsRepayment => 'Flexible Loan Terms & Repayment';
	String get homeLoanDesc1 => 'Loan amount up to USD 250,000';
	String get homeLoanDesc2 => 'Loan term up to 20 years';
	String get homeLoanDesc3 => 'Repayment flexible (installments, amortization, partial), Bullet Repayment';
	String get carLoanDesc1 => 'Loan amount up to 70% of vehicle value';
	String get carLoanDesc2 => 'Loan term: 5 years';
	String get carLoanDesc3 => 'Repayment: Monthly installments';
	String get carLoanDesc4 => 'Apply to buy either a brand-new car or a used car that is 10 years old or less';
	String get account => 'Account';
	String get save => 'Save';
	String get borrow => 'Borrow';
}

// Path: verifyPasscodeScreen
class _TranslationsVerifyPasscodeScreenEn {
	_TranslationsVerifyPasscodeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get passcode => 'Passcode';
	String get pleaseEnterPasscode => 'Please enter your passcode';
	String get wrongPasscode => 'Incorrect passcode';
	String get yourAccountLocked => 'Your account is locked';
	String get yourAccountIsTemporarilyLocked => 'Your account is temporarily locked due to too many incorrect verification attempts. Please contact the Call Center or visit a branch for assistance.';
}

// Path: language
class _TranslationsLanguageEn {
	_TranslationsLanguageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get english => 'English';
	String get khmer => 'ខ្មែរ';
	String get chinese => '中文';
	String get title => 'Language';
	String get englishShort => 'ENG';
	String get khmerShort => 'ខ្មែរ';
	String get chineseShort => '中文';
}

// Path: welcomeScreen
class _TranslationsWelcomeScreenEn {
	_TranslationsWelcomeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Welcome to iBank';
	String get subtitle => 'Get ready to experience seamless financial management at your fingertips';
	String get buttonTitle => 'Let\'s Go';
	String get login => 'Login';
	String get financialOverview => 'Financial Overview';
	String get signup => 'Sign Up';
	String get manageYourCardInApp => 'Manage your card in app';
	String get openFixedDepositOnline => 'Open Fixed Deposit Online';
}

// Path: notification
class _TranslationsNotificationEn {
	_TranslationsNotificationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Notification';
	String get noData => 'There is no notification';
	String get notificationPermissionDesc => 'To receive notification please allow iBank to access your notification';
	String get tabBalance => 'Balance';
	String get tabInbox => 'Inbox';
	String get tabPromotion => 'Promotion';
	String get actions => 'Actions';
	String get deleteNotifyTitle => 'Delete notification';
	String get deleteNotifyContent => 'Are you sure you want to delete this notification?';
	String get makeRead => 'Mark as read';
	String get deleteNotify => 'Delete';
	String get no => 'No';
	String get yes => 'Yes';
	String get showUnread => 'Show unread only';
	String get deleteSuccess => 'All notifications has been deleted';
	String get today => 'Today';
	String get yesterday => 'Yesterday';
	String get readAllNotificontent => 'Do you want to mark all notification as read?';
	String get cancel => 'Cancel';
	String get agree => 'Agree';
	String get readAll => 'Read All';
	String get fromAccount => 'From Account';
	String get toAccount => 'To Account';
	String get toAccountName => 'To Account Name';
	String get transactionTime => 'Transaction Time';
	String get tracingCode => 'Tracing Code';
	String get description => 'Description';
}

// Path: verifyNumberPhoneScreen
class _TranslationsVerifyNumberPhoneScreenEn {
	_TranslationsVerifyNumberPhoneScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Your Phone Number';
	String get subtitle => 'Please enter your phone number';
	String get referralCodeTitle => 'Referral code';
	String get conditionWarning => 'By tapping "Next" you agree to iBank Digital Account Opening Terms and Conditions and iBank Terms and Conditions.';
	String get termsAndConditions => 'Terms and Conditions';
	String get unregisteredPhoneNumber => 'Unregistered phone number';
	String get thePhoneNumberSignFirst => 'The phone number has not yet been registered. Please sign up first';
	String get cancel => 'Cancel';
	String get signUp => 'Sign up';
	String get login => 'Login';
	String get phoneAlreadyExists => 'Phone number already exists';
	String get loginPhoneNumber => 'You can login using this phone number';
	String get selectCountry => 'Select country';
}

// Path: verifyOTPScreen
class _TranslationsVerifyOTPScreenEn {
	_TranslationsVerifyOTPScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Enter OTP';
	String subtitle({required Object phone}) => 'Kindly input OTP that was sent to your phone number ${phone}';
	String subtitleEmail({required Object email}) => 'Kindly input OTP that was sent to your email ${email}';
	String get resendOTP => 'Resend OTP';
	String get resendOTPAgain => 'OTP can be resent again in';
	String get otpAttemptsExceeded => 'OTP attempts limit exceeded. Please try again after 30 minute';
}

// Path: eKYCIntroScreen
class _TranslationsEKYCIntroScreenEn {
	_TranslationsEKYCIntroScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get passportPhotoTitle => 'Take Photo of Passport';
	String get idCardPhotoTitle => 'Take Photo of National ID Card';
	String get passportSubtitle => 'Please ensure you have your passport ready for photographing';
	String get idCardSubtitle => 'Please ensure you have your ID card ready for photographing';
	String get tipsTitle => 'Tips';
	String get passportTipsDescription1 => 'Place a piece of paper over the passport to avoid glare';
	String get passportTipsDescription2 => 'Slowly move your phone closer to and further away from the passport until you see green border';
	String get idCardTipsDescription1 => 'Place a piece of paper over the ID card to avoid glare';
	String get idCardTipsDescription2 => 'Slowly move your phone closer to and further away from the ID card until you see green border';
	String get changeToIdCard => 'Change to ID Card';
	String get changeToPassport => 'Change to Passport';
}

// Path: identificationVerifyIntroScreen
class _TranslationsIdentificationVerifyIntroScreenEn {
	_TranslationsIdentificationVerifyIntroScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Identity Verification';
	String get subtitle => 'We are going to take a few photos of you. Make sure you read all instructions before starting';
	String get headDescription => 'Keep your head and chin inside the circle';
	String get ensureLightDescription => 'Ensure the light is not too dim or too bright';
	String get assetsDescription => 'Do not wear sunglasses and hat';
}

// Path: personalInformation
class _TranslationsPersonalInformationEn {
	_TranslationsPersonalInformationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Personal Information';
	String get subtitle => 'We are required by legislation to collect your personal information in order to open your account';
	String get fullName => 'Full name';
	String get dob => 'Date of birth';
	String get gender => 'Gender';
	String get height => 'Height';
	String get placeOfBirth => 'Place of birth';
	String get permanentAddress => 'Permanent address';
	String get idOrPassportNumber => 'ID/Passport number';
	String get dateOfIssue => 'Date of issue';
	String get dateOfExpiry => 'Date of expiry';
	String get currentAddress => 'Current Address';
	String get cityOrProvince => 'City/Province';
	String get districtOrKhan => 'District/Khan';
	String get communeOrSangkat => 'Commune/Sangkat';
	String get village => 'Village';
	String get houseNo => 'House No';
	String get streetNo => 'Street No';
	String get maritalStatus => 'Marital Status';
	String get occupation => 'Occupation';
}

// Path: confirmEKycInformationScreen
class _TranslationsConfirmEKycInformationScreenEn {
	_TranslationsConfirmEKycInformationScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get subtitle => 'We are required by legislation to have your personal information in order to open your account';
	String get confirmInfomationTitle => 'Confirm Your Information';
	String get sameAddressDescription => 'My current address is the same as the permanent address';
	String get scanTitle => 'Scan Again';
}

// Path: passwordCreateScreen
class _TranslationsPasswordCreateScreenEn {
	_TranslationsPasswordCreateScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Create Password';
	String get subtitle => 'Please remember this password in case of changing the password and device';
	String get passwordTitle => 'Create Password';
	String get passwordHintText => 'Enter Your Password';
	String get confirmPasswordTitle => 'Confirm password';
}

// Path: passcodeCreateScreen
class _TranslationsPasscodeCreateScreenEn {
	_TranslationsPasscodeCreateScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Setting Up Your Passcode';
	String get subtitle => 'Remember this passcode to authorize transactions and for future logins';
	String get invalidPasscodeError => 'Passcode is not valid';
}

// Path: confirmPasscodeScreen
class _TranslationsConfirmPasscodeScreenEn {
	_TranslationsConfirmPasscodeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Confirm your passcode';
	String get subtitle => 'Remember this passcode to authorize transactions and for future logins';
}

// Path: processingScreen
class _TranslationsProcessingScreenEn {
	_TranslationsProcessingScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get identificationMessage => 'We are verifying your identity';
	String incorrectPasscode({required Object count}) => 'Incorrect passcode (${count} attempts left)';
}

// Path: manualReviewScreen
class _TranslationsManualReviewScreenEn {
	_TranslationsManualReviewScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Manual Review Required';
	String get subtitle => 'Your information will be manually verified within 2 hours on working days. We appreciate your patience!';
}

// Path: onboardingSuccessScreen
class _TranslationsOnboardingSuccessScreenEn {
	_TranslationsOnboardingSuccessScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Registration Complete!';
	String get subtitle => 'Your digital savings account opened successfully. Welcome to iBank!';
}

// Path: verificationProcessScreen
class _TranslationsVerificationProcessScreenEn {
	_TranslationsVerificationProcessScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Verification Process';
	String get subtitle => 'The verification process is still ongoing and will be complete in a few minutes. Rest assured, you will be notified by email and SMS once it is complete';
}

// Path: updateEmailScreen
class _TranslationsUpdateEmailScreenEn {
	_TranslationsUpdateEmailScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get description => 'We\'ll keep you updated on critical changes, new features and benefits';
}

// Path: updateOccupationScreen
class _TranslationsUpdateOccupationScreenEn {
	_TranslationsUpdateOccupationScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select your occupation here';
	String get otherOccupationTitle => 'Other Occupation';
}

// Path: registerBiometricScreen
class _TranslationsRegisterBiometricScreenEn {
	_TranslationsRegisterBiometricScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get faceIdTitle => 'Register Face ID';
	String get touchIdTitle => 'Register Touch ID';
	String get faceIdSubTitle => 'Face ID can be used to login or authorize transaction.';
	String get touchIdSubTitle => 'Touch ID can be used to login or authorize transaction.';
	String get later => 'Later';
	String get deviceNotSupportBiometric => 'Your device doesn\'t support biometric authentication (Fingerprint or Face ID)';
	String get authenticationFailed => 'Authentication failed.';
	String get done => 'Done';
}

// Path: successScreen
class _TranslationsSuccessScreenEn {
	_TranslationsSuccessScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Congratulation';
	String get subtitle => 'Your digital banking account has been activated successfully on this device. Welcome to iBank!';
	String get goHome => 'Go to Home';
	String get registrationComplete => 'Registration Complete!';
	String get haveChangedPasscodeSuccessfully => 'You have changed your passcode successfully';
	String get digitalBankingAccountActivated => 'Your digital banking account activated successfully. Welcome to iBank!';
	String get updateSuccessfully => 'Update Successfully';
	String get youEnabledFaceIDTouchID => 'You have enabled Face ID/Touch ID';
	String get youEnabledFaceID => 'You have enabled Face ID';
	String get youEnabledTouchID => 'You have enabled Face Touch ID';
	String get movingComplete => 'Moving Complete!';
	String get youHaveSuccessFylly => 'You have successfully moved to iBank. Enjoy your ride!';
	String get youDisableFaceIDTouchID => 'You have disabled Face ID/Touch ID';
	String get youDisableFaceID => 'You have disabled Face ID';
	String get youDisableTouchID => 'You have disabled Touch ID';
	String get updateFailPleaseTryAgain => 'Update fail. Please try again';
}

// Path: cardLimitSetting
class _TranslationsCardLimitSettingEn {
	_TranslationsCardLimitSettingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Card Limit Settings';
	String get onlinePayment => 'Online payment';
	String get internationalPayment => 'International payment';
	String get atmWithdrawal => 'ATM withdrawal';
	String get posPayment => 'POS payment';
	String get contactlessPayment => 'Contactless payment';
	String get dailySpendingLimit => 'Daily Spending Limit';
	String get enterAmount => 'Enter amount';
	String get numberOfPurchase => 'Number of purchase';
	String get transactions => 'transactions';
	String get cashWithdrawalDailyCountLimit => 'Cash Withdrawal Daily Count Limit';
	String get enterRemark => 'Enter remark';
	String get maximum => 'Maximum';
	String get times => 'times';
	String get apply => 'Apply';
	String get dailySpendingLimitErrorMsg => 'Daily spending limit is not valid';
	String get numberOfPurchaseErrorMsg => 'Number of purchase is not valid';
	String get cashWithdrawalDailyCountLimitErrorMsg => 'Cash withdrawal daily count limit is not valid';
}

// Path: card
class _TranslationsCardEn {
	_TranslationsCardEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Card';
	String get cashFlow => 'Cash flow';
	String get lockCard => 'Lock Card';
	String get unlockCard => 'Unlock Card';
	String get history => 'History';
	String get cardInfo => 'Card Info';
	String get statement => 'Statement';
	String get activeCardSuccess => 'Activate Card Successfully';
	String get cardIsReady => 'Your card is ready for use';
	String get branches => 'Branches';
	String get cardInformation => 'Card Information';
	String get cardName => 'Card name';
	String get cardNumber => 'Card number';
	String get expiredDate => 'Expiry date';
	String get cvv => 'CVV';
	String get locked => 'Locked';
	String get validThru => 'Valid Thru';
	String get pinCodeResetFee => 'PIN code reset fee';
	String get openNewAccount => 'Open New Account';
	String get linkAccount => 'Linked account';
	String get sourceAccountNotAvailableTitle => 'Source Account Not Available';
	String get sourceAccountNotAvailableSubtitle => 'There are no available source accounts to link with';
	String get sourceAccountNotAvailableSubtitleWithoutThereAre => 'No available source accounts to link with';
	String get confirmUnlockMessage => 'Are you sure you want to unlock this card';
	String get confirmLockMessage => 'Are you sure you want to lock this card';
	String get unlockSuccess => 'Unlock Card Successful';
	String get lockSuccess => 'Lock Card Successful';
	String get lock => 'Lock';
	String get activate => 'Activate';
	String get forgotPinTitle => 'Forgot Card PIN';
	String get unlock => 'Unlock';
	String get openNew => 'Open New';
	String get creditCard => 'Credit card';
	String get createCardPinCode => 'Create Card PIN Code';
	String get confirmCardPinCode => 'Confirm Card PIN Code';
	String get pleaseEnterThePinCodeYouJustCreated => 'Please enter the PIN code you just created';
	String get cardPinCode => 'Card PIN Code';
	String get setUpCardPinCode => 'Set up a PIN code to ensure security\nfor your card';
	String get pinCodeRemind => 'Consider to avoid using repeatedly or easy to guess pin code';
	String get debitCard => 'Debit card';
	String get savings => 'Savings';
	String get selectSourceAccount => 'Select Source Account';
	String get cardLimitsetting => 'Card limit setting';
	String get forgotPin => 'Forgot PIN?';
	String get changePin => 'Change PIN';
	String get renameCard => 'Change card nickname';
	String get closeCard => 'Close card';
	String get viewCard => 'View Card';
	String get cardType => 'Card type';
	String get annualFee => 'Annual fee';
	String get createCardInProcess => 'Card Creation in Progress';
	String get createCardInProcessDescription => 'Your iBank virtual card is being created and will be ready soon';
	String get free => 'Free';
	String get issuingFee => 'Issuing fee';
	String get createPaymentFailed => 'Create Payment Failed';
	String get createPaymentFailedDescription => 'We were unable to create your payment. Please try again or contact us for support';
	String get createCardFailed => 'Create Card Failed';
	String get createCardFailedDescription => 'We were unable to create your card. Please try again or contact us for support';
	String get issuanceFee => 'Issuance fee';
	String get createCardSuccessTitle => 'Create Card Successfully';
	String get createCardSuccessDescription => 'Your Virtual Debit Card has been\nsuccessfully created';
	String get selectCard => 'Select Card';
	String get iBankMasterCardClassic => 'iBank Virtual Debit Mastercard';
	String get iBankMasterCardClassicSubtitle => 'Flexible features, meeting all needs to the maximum extent.';
	String get detailsAndBenefits => 'Details and benefits';
	String get iBankMasterCardClassicDescription1 => 'Waive all types of fees including: issuance fee, annual fee, domestic ATM withdrawal fee, card reissuance fee.';
	String get iBankMasterCardClassicDescription2 => 'Enjoy non-term interest on the account balance (with interest rates of 0.3% per annum for amounts from 100 million KHR, and 0.7% per annum for amounts from 500 million KHR).';
	String get iBankMasterCardClassicDescription3 => 'Opportunity to purchase at bargain prices at your fingertips, with discounts of up to 50%.';
	String get feeAndRate => 'Fees and interest rates';
	String get iBankMasterCardNote => 'Note: The fee schedule above does not include VAT. Fees may vary depending on each period. For details, please see here';
	String get creditPlatinum => 'Credit Platinum';
	String get creditClassic => 'Credit Classic';
	String get creditGold => 'Credit Gold';
	String get withdrawAmount => 'Withdraw amount';
	String atmWithdrawalRules({required Object min, required Object max}) => 'Minimum per transaction: ${min}\nMaximum per transaction: ${max}';
	String get virtualDebit => 'Virtual Debit';
	String get debit => 'Debit';
	String get credit => 'Credit';
	String get atm => 'ATM';
	String get virtualDebitCard => 'Virtual Debit Card';
	String get expiryDate => 'EXPIRY\nDATE';
	String get validFrom => 'VALID \nFROM';
	String get createCard => 'Create Card';
	String get remainingStatementBalance => 'Remaining statement balance';
	String get minimumPayment => 'Minimum payment:';
	String get payBefore => 'Pay before';
	String get repayment => 'Repayment';
	String get availableCreditLimit => 'Available credit';
	String get totalBalance => 'Total balance';
	String get enterTheLast4DigitsOfTheCard => 'Enter the last 4 digits of the card';
	String get creditLimit => 'Credit limit';
	String get youHaveNoCard => 'You have no card';
	String get openVirtualCard => 'Open Virtual Card';
	String get cardLimitUpdateSuccessfull => 'Card limit setting has been updated successfully';
	String get cardNameValidateMsg => 'Card name is not valid';
	String get creditClassicItem1 => 'Highest Credit';
	String get creditClassicItem2 => 'Withdraw';
	String get cardHolderName => 'Card holder name';
	String get creditClassicItem3 => 'Convenience';
	String get creditClassicItem4 => 'Purchase First, Pay later';
	String get creditClassicItem5 => 'Promotions';
	String get creditClassicItemDesc1 => 'Limits up to 500,000 USD';
	String get creditClassicItemDesc2 => 'Withdraw  cash from ATMs Worldwide, wherever the Mastercard logo is visible. ';
	String get creditClassicItemDesc3 => 'The Mastercard Classic is accepted at millions of merchant locations globally, spanning restaurants, hotels, and online retailers. Conveniently manage your credit card through the iBank Mobile app.';
	String get creditClassicItemDesc4 => 'Enjoy 0% interest up to 45 days for purchase transaction. Free: Up to 5 supplementary cards';
	String get creditClassicItemDesc5 => 'Enjoy exclusive discounts and many promotions & hot deals from iBank Mastercard';
	String get creditGoldItem1 => 'Highest Credit';
	String get creditGoldItem2 => 'Unlimited Possibilities';
	String get creditGoldItem3 => 'Purchase First, Pay later';
	String get creditGoldItem4 => 'Privileges';
	String get creditGoldItemDesc1 => 'Limits up to 500,000 USD';
	String get creditGoldItemDesc2 => 'Whether you\'re using it locally or abroad, be confident in the global acceptance of your card. Gain access to over 16,000 hotels, restaurants, and lounges worldwide. Your card ensures convenience and acceptance wherever your journey takes you. Seamlessly oversee your credit card with ease through the iBank Mobile app.';
	String get creditGoldItemDesc3 => 'Enjoy 0% interest up to 45 days for purchase transaction. Free: Up to 5 supplementary cards.';
	String get creditGoldItemDesc4 => 'Indulge in exclusive benefits with iBank Mastercard, including special discounts, cash rewards, and more. Additionally, relish the luxury of complimentary access to Airport Premium Lounge up to three times at no cost.';
	String get creditPlatinumItem1 => 'Exclusivity';
	String get creditPlatinumItem2 => 'Highest Credit';
	String get creditPlatinumItem3 => 'Unlimited Possibilities';
	String get creditPlatinumItem4 => 'Purchase First, Pay later';
	String get creditPlatinumItem5 => 'Privileges';
	String get creditPlatinumItemDesc1 => 'Maximum purchasing power for our most exclusive clients.';
	String get creditPlatinumItemDesc2 => 'Limits up to 500,000 USD';
	String get creditPlatinumItemDesc3 => 'Whether you\'re utilizing it domestically or internationally, rest assured in the worldwide acceptance of your card. Access over 16,000 hotels, restaurants, and lounges globally. Your card guarantees convenience and acceptance wherever your journey leads. Effortlessly manage your credit card through the user-friendly iBank Mobile app.';
	String get creditPlatinumItemDesc4 => 'Enjoy 0% interest up to 45 days for purchase transaction. Free: Up to 5 supplementary cards.';
	String get creditPlatinumItemDesc5 => 'Indulge in exclusive benefits with BIC Mastercard, including special discounts, cash rewards, and more. Additionally, relish the luxury of complimentary access to Airport Premium Lounge up to five times at no cost.';
	String get openCreditCardRegistration => 'Open Credit Card Registration';
	String get nationalIDCard => 'National ID Card';
	String get reviewInformation => 'Review Information';
	String get registrationSuccessful => 'Registration Successful';
	String get creditSuccessDesc => 'Thank you for your interest in iBank\'s credit card product. Your information has been recorded. Our customer service team will contact you as soon as possible';
	String get creditCardClassicTitle => 'Credit Classic Mastercard';
	String get creditCardGoldTitle => 'Credit Gold Mastercard';
	String get creditCardPlatinumTitle => 'Credit Platinum Mastercard';
	String get maximumDailyLimit => '\$ 2,000 Maximum Daily Limits';
	String get neverHaveToDeal => 'Never have to deal with the hassle of losing your card again';
	String get secure => 'Secure';
}

// Path: cardTabScreen
class _TranslationsCardTabScreenEn {
	_TranslationsCardTabScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get totalLinkAccountBalance => 'Total linked account balance';
	String get totalCreditLimit => 'Total credit limit';
	String get totalOutstandingBalance => 'Total outstanding balance';
	String get outstandingBalance => 'Outstanding balance';
	String numberOfCard({required Object amount}) => 'Number of card: ${amount}';
	String get doNotHaveCardTitle => 'You don’t have any card';
	String get doNotHaveCardMessage => 'Explore wealth perks of credit card';
	String get doNotHaveCardMessageDebitCard => 'Open and explore all benefits of debit card';
	String get openNewCard => 'Open New Card';
	String get explore => 'Explore';
}

// Path: cardStatement
class _TranslationsCardStatementEn {
	_TranslationsCardStatementEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Credit Card Statement';
	String get period => 'Period';
	String get statementBalance => 'Statement balance';
	String get cardNumber => 'Card number';
	String get dueDate => 'Due date';
	String get supplementary => 'Supplementary';
	String get selectStatementPeriod => 'Select Statement Period';
	String get emailMe => 'Email Me';
	String get download => 'Download';
}

// Path: cardHistory
class _TranslationsCardHistoryEn {
	_TranslationsCardHistoryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get month => 'Months';
	String get transactionDetails => 'Transaction Details';
	String get lastMonth => 'Last month';
	String get lastThreeMonth => 'Last 3 months';
	String get custom => 'Custom';
	String get transactionHistory => 'Transaction history';
	String get emptyTransactionList => 'Empty transaction list';
	String get transactionList => 'Transaction list';
	String get transactionId => 'Transaction ID';
	String get merchantName => 'Merchant Name';
	String get country => 'Country';
	String get transactionTime => 'Transaction Time';
	String get status => 'Status';
	String get tracingCode => 'Tracing Code';
	String get timeRange => 'Time range';
	String get fromAmount => 'From amount';
	String get toAmount => 'To amount';
	String get approvalCode => 'Approval  Code';
	String get lastSixMonth => 'Last 6 months';
	String get lastTwoMonth => 'Last 60 days';
}

// Path: filterCard
class _TranslationsFilterCardEn {
	_TranslationsFilterCardEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get validateBeforeDatetimeMessage => 'Please select a date before the current date';
	String get validateLessThanDatetimeMessage => 'From date must be less than to date';
	String get validateMaxRangeDaysMessage => 'Please choose a period of less than 90 days';
	String get requestType => 'Requests';
	String get systemUpdate => 'System update';
	String get balanceChanges => 'Balance changes';
	String get fromAccount => 'From amount';
	String get toAccount => 'To amount';
}

// Path: selectCreditCard
class _TranslationsSelectCreditCardEn {
	_TranslationsSelectCreditCardEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get virtualCard => 'Virtual Card';
	String get virtualCardDescription => 'Full features, usable immediately entirely online, and many services are free of charge.';
	String get physicalCard => 'Physical Card';
	String get physicalCardDescription => 'Traditional physical card, convenient and with many benefits, delivered right to your doorstep';
	String get cardDeliveryAddress => 'Card delivery address';
	String get selectAddress => 'Select address';
	String get linkedPaymentAccount => 'Linked payment account';
	String get termsAndCondition => 'Terms and Conditions';
	String get agreeTermsMessage => 'By tapping “Create” you agree to iBank’s Terms and Conditions.';
}

// Path: customer
class _TranslationsCustomerEn {
	_TranslationsCustomerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get security => 'Security';
	String get confirmPasscode => 'Confirm Passcode';
	String get changePasscode => 'Change Passcode';
	String get curentPasscode => 'Curent Passcode';
	String get forgotPasscode => 'Forgot Passcode?';
	String get description => 'Consider to avoid using repeatedly or easy to guess Passcode';
	String get loginWithFaceid => 'Login with Face ID';
	String get loginWithFingerprint => 'Login with Fingerprint';
	String get authTransactionWithFaceid => 'Authenticate transactions with Face ID';
	String get authTransactionWithFingerprint => 'Authenticate transactions with Fingerprint';
	String get logoutAfter => 'Log out after 3 minutes';
	String get transactionLimit => 'Transaction limit';
	String get transactionOwnAccount => 'Transfer to Own Account';
	String limitTransactionRules({required Object value, required Object currency}) => 'Reach maximum limit restriction (${value} ${currency})';
	String get transactionToIbankAccount => 'Transfer to iBank Account';
	String get discardUpdateTransactionLimit => 'Are you sure you want to cancel the transaction limit update?';
	String get transactionOther => 'Other Transfer and Payments';
	String get perDay => 'Per day';
	String get perTransaction => 'Per transaction';
	String get edit => 'Edit';
	String get save => 'Save';
	String get createNewRequest => 'Create New Request';
	String get requestTitle => 'Request Title';
	String get placeholder => 'Place holder';
	String get requestDetail => 'Request detail';
	String get uploadImage => 'Upload Image';
	String get create => 'Create';
	String get detailDescription => 'Description';
	String get type => 'Type';
	String get transactionID => 'Transaction ID';
	String get tracingCode => 'Tracing code';
	String get time => 'Time';
	String get requestType => 'Request type';
	String get transaction => 'Transaction';
	String get status => 'Status';
	String get traceID => 'Trace ID';
	String get titleOfRequest => 'Title of request';
}

// Path: profile
class _TranslationsProfileEn {
	_TranslationsProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get myProfile => 'My Profile';
	String get personalInformation => 'Personal Information';
	String get buildingName => 'Building name';
	String get egUKCONDOROOM => 'eg. Star Building 123';
	String get username => 'Username';
	String get fullName => 'Full name';
	String get gender => 'Gender';
	String get maritalStatus => 'Marital status';
	String get dateOfBirth => 'Date of birth';
	String get eKYCStatus => 'eKYC status';
	String get homeBranch => 'Home branch';
	String get contactInformation => 'Contact information';
	String get phoneNumber => 'Phone number';
	String get email => 'Email';
	String get pleaseUpdateYourEmail => 'Please update your email';
	String get address => 'Address';
	String get newAddress => 'New Address';
	String get updateSuccessfully => 'Update Successfully';
	String get thankYouForUpdatingInfo => 'Thank you for updating information';
	String get viewProfile => 'View Profile';
	String get changeAddress => 'Change Address';
	String get currentAddress => 'Current Address';
	String get changeEmail => 'Change Email';
	String get currentEmailAddress => 'Current email address';
	String get newEmailAddress => 'New email address';
	String get transactionLimit => 'Transaction Limit';
	String get edit => 'Edit';
	String get save => 'Save';
	String get emailToIBank => 'Email to iBank';
	String get location => 'Location';
	String get socialMedia => 'Social Media';
	String get facebook => 'Facebook';
	String get instagram => 'Instagram';
	String get telegram => 'Telegram';
	String get tiktok => 'Tiktok';
	String get linkedIn => 'LinkedIn';
	String get youtube => 'Youtube';
	String get security => 'Security';
	String get loginWithFaceID => 'Login with Face ID';
	String get authenticateTransactionsWithFaceID => 'Authenticate transactions with Face ID';
	String get changePasscode => 'Change passcode';
	String get logOutAfter3minutes => 'Log out after 3 minutes';
	String get logOutAfter => 'Log Out After';
	String get smsBanking => 'SMS Banking';
	String get emailNotification => 'Email notification';
	String get emailNotificationSettingDes => 'No registered email. Go to Profile and add your email there.';
	String get balanceNotificationAtLoginScreen => 'Balance notification at login\nscreen';
	String get balanceNotificationAtLoginScreenDes => 'View the balance change notice without\nlogging in';
	String get groupBalanceNotification => 'Group balance notification';
	String get notificationSettings => 'Notification Settings';
	String get selectAccount => 'Select Account';
	String get transferToOwnAccount => 'Transfer to Own Account';
	String get perDay => 'Per day';
	String get perTransaction => 'Per transaction';
	String get transferToiBankAccount => 'Transfer to iBank Account';
	String get otherTransferAndPayments => 'Other Transfer and Payments';
	String get profileAndSettings => 'Profile & Settings';
	String get setDefaultAccount => 'Set default account';
	String get language => 'Language';
	String get support => 'Support';
	String get lastLogin => 'Last login';
	String get device => 'Device';
	String get changeLanguageSuccessMessage => 'Change language successfully';
	String get setDefaultAccountSuccess => 'Successful set default account';
	String get updateAvatar => 'Update Avatar';
	String get chooseFromLibrary => 'Choose from library';
	String get takePicture => 'Take picture';
	String get deleteAvatar => 'Delete Avatar';
	String get reTake => 'Retake';
	String get useThisPhoto => 'Use this photo';
	String get deleteAvatarMessage => 'Are you sure you want to delete this image?';
	String get avatarDeletedSuccessfully => 'Avatar deleted successfully';
	String get noImage => 'No image';
	String get avatarUpdateSuccessfully => 'Avatar update successfully';
	String get successfullyRevoked => 'Successfully revoked';
	String get revokedMsg => 'Now you can log in on any device that you wish to register!';
	String get updateTxnLimitSuccess => 'Your transaction limit has successfully updated';
	String get emailHint => 'eg. abc@yyy.zzz';
	String get numberHintText => 'eg. 123';
	String get upgradeKYC => 'Upgrade KYC';
	String get profileLogOut => 'Are you sure you want to log out of iBank?';
	String get displaySetting => 'Display setting';
	String get lightTitle => 'Light';
	String get darkTitle => 'Dark';
	String get textSizeTitle => 'Text Size';
	String get whatNewOnIBank => 'What’s new on iBank?';
	String get dragAvatar => 'Drag the image around to adjust';
	String get smaller => 'Smaller';
	String get original => 'Original';
	String get bigger => 'Bigger';
}

// Path: transfer
class _TranslationsTransferEn {
	_TranslationsTransferEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get forLunch => 'for lunch';
	String get forDinner => 'for dinner';
	String get forCoffee => 'for coffee';
	String get forATrip => 'for a trip';
	String get earlierThanToday => 'The execution date cannot be earlier than today';
	String get scheduleExchageDescription => 'The exchange rate will be calculated at the time of the transaction.';
	String get scheduledTransactionContinued => 'Scheduled Transaction Continued!';
	String get scheduledTransactionUpdated => 'Scheduled Transaction Updated!';
	String get scheduledTransactionPaused => 'Scheduled Transaction Paused!';
	String get scheduledTransactionDeleted => 'Scheduled Transaction Deleted!';
	String get editPeriodicTransfer => 'Edit Periodic Transfer';
	String get transactionOrderScheduled => 'Transaction Order Scheduled!';
	String get viewDetail => 'View Detail';
	String totalTransactions({required Object numOfTransaction, required Object amountWithCurrency}) => '${numOfTransaction} transaction - ${amountWithCurrency}';
	String get transaction => 'transaction';
	String get ownAccount => 'Own Account';
	String get iBankAccount => 'iBank Account';
	String get periodicTransferTo => 'Periodic Transfer to';
	String get transferType => 'Transfer type';
	String get scheduleTransaction => 'Schedule Transaction';
	String transferScheduleDesctiption({required Object numberOfTransaction}) => '${numberOfTransaction} transaction will be automatically executed within selected period of time';
	String get frequency => 'Frequency';
	String dayOfMonth({required Object dayOfMonth}) => 'Day ${dayOfMonth}';
	String get oneTime => 'One time';
	String get daily => 'Daily';
	String get weekly => 'Weekly';
	String get monthly => 'Monthly';
	String get transferToLocalBanksViaBakong => 'Transfer to \nLocal Banks via Bakong';
	String get newBeneficiary => 'New Beneficiary';
	String get transactionBelowThreshold => 'Transaction amount is below threshold';
	String get externalTnxRef => 'External Txn Ref';
	String get toAccount => 'To Account';
	String get equivalentAmount => 'Equivalent amount';
	String get thaiqrAllowOnlyKHR => 'Allow only KHR';
	String get thaiqrAllowOnlyKHRDescription => 'ThaiQR payment allow Khmer Riel (KHR) banking account only.';
	String get crossBorderQrTransfer => 'Cross border ThaiQR Payment';
	String get transfer => 'Transfer';
	String get toOwnAccount => 'Own\nAccount';
	String get toIBankAccount => 'iBank\nAccount';
	String get toLocalBank => 'Local Bank\nvia Bakong ';
	String get toBaKongWallet => 'Bakong\nAccount';
	String get toCard => 'To Card';
	String get toInternational => 'International Transfer';
	String get beneficiary => 'Beneficiary';
	String get schedule => 'Schedule';
	String get emptyBeneficiaryList => 'Empty beneficiary list';
	String get createPeriodicTransfer => 'Create Periodic Transfer';
	String get amount => 'Amount';
	String get limit => 'Limit';
	String get description => 'Description';
	String get optional => '(Optional)';
	String get currency => 'Currency';
	String get transferToOwnAccount => 'Transfer to own account';
	String get transferToLocalBanks => 'Transfer to local bank via Bakong';
	String get transferToIBank => 'Transfer to iBank';
	String get transferToBaKongWallet => 'Transfer to Bakong wallet';
	String get selectAccount => 'Select Account';
	String get review => 'Review';
	String get toAccountNumber => 'To account number';
	String get beneficiaryName => 'Beneficiary name';
	String get beneficiaryBank => 'Beneficiary bank';
	String get descriptionText => 'Description';
	String get type => 'Type';
	String get confirm => 'Confirm';
	String get edit => 'Edit';
	String get successfulTransaction => 'Successful Transaction';
	String get processingTransaction => 'Processing Transaction';
	String get transactionID => 'Transaction ID';
	String get tracingCode => 'Tracing code';
	String get time => 'Time';
	String get newTransfer => 'New Transfer';
	String get failedTransaction => 'Failed Transaction';
	String get cancelTransactionTitle => 'Cancel Transaction?';
	String get cancelTransactionContent => 'All inputted information will be deleted';
	String get transferAmount => 'Transfer amount';
	String get fee => 'Fee';
	String get totalAmount => 'Total amount';
	String get iBank => 'iBank';
	String defaultTransferNote({required Object account}) => '${account} Transfer';
	String get accountNoHintText => 'Enter account number';
	String get accountName => 'Account name';
	String get service => 'Service';
	String get toBank => 'To bank';
	String get selectBank => 'Select Bank';
	String get bakong => 'Bakong';
	String get ownAccountTransferDescription => 'Transfer Own Account';
	String get bakongTransferDescription => 'Transfer Local Bank Via Bakong';
	String get internalTransferDescription => 'Transfer internal';
	String get bakongWalletTransferDescription => 'Transfer Local Bank Via Bakong Wallet';
	String get oneAccountMessageForOwnTransfer => 'You Have Only 1 Account';
	String limitAmountPerday({required Object amount, required Object currency}) => '${amount} ${currency}/day';
	String limitAmountPerTransaction({required Object amount, required Object currency}) => '${amount} ${currency}/transaction';
	String get toPhoneNumber => 'To phone number';
	String get create => 'Create';
	String get periodicTransfer => 'Periodic Transfer';
	String get addNewBeneficiary => 'Add new beneficiary';
	String get addNew => 'Add New';
	String get transactionType => 'Transaction type';
	String get domesticTransfer => 'Domestic transfer';
	String get bank => 'Bank';
	String get insufficientBalanceTitle => 'Insufficient Balance';
	String get cancelCashWithdrawal => 'Cancel Cash Withdrawal';
	String get cashToATMOnlyAppliesToUSDAccount => 'Cash to ATM only applies to USD account.';
	String get cardlessATMWithdrawal => 'Cardless ATM Withdrawal';
	String amountMustBeMultipleOf100({required Object amount, required Object currency}) => 'Withdrawal amount must be a multiple of ${amount} ${currency}';
	String get setNickname => 'Set nickname';
	String get addNewBeneficiarySuccessfully => 'Add New Beneficiary Successfully';
	String get viewList => 'View List';
	String get viewInfo => 'View Info';
	String get editNickName => 'Edit nick name';
	String get beneficiaryInformation => 'beneficiary Information';
	String get name => 'Name';
	String get nickName => 'Nickname';
	String get accountInactiveMessage => 'Account is inactive';
	String get pleaseEnterAccountNumber => 'Please enter account number';
	String get beneficiarySavedSuccessfully => 'Beneficiary saved successfully';
	String get beneficiaryList => 'Beneficiary List';
	String get beneficiaryEditedSuccessfully => 'Beneficiary edited successfully';
	String get deletedSuccessfully => 'Deleted successfully';
	String get deleteBeneficiary => 'Delete beneficiary';
	String get deleteBeneficiaryMessage => 'Are you sure want to remove this person from your contacts';
	String get transactionHash => 'Transaction hash';
	String get saveBeneficiary => 'Save beneficiary';
	String get exceedsTransactionLimitError => 'Transfer amount exceeds transaction limit';
	String minTransferAmountError({required Object amount}) => 'Minimum transfer amount is ${amount}';
	String get maxTransferAmountError => 'Payment exceeds credit limit';
	String get sameAccountErrorMessage => 'The receiving account must not be identical to the source account';
	String get accountNotFound => 'Account not found';
	String get bakongWallet => 'Bakong wallet';
	String get localBank => 'Local bank';
	String get bakongID => 'Bakong ID';
	String get favoriteDeleted => 'Favorite deleted';
	String get total => 'Total';
	String get status => 'Status';
	String get pause => 'Pause';
	String get delete => 'Delete';
	String get createScheduleTransactionFailed => 'Create Schedule Transaction Failed';
	String get reachLimitPFMTitle => 'Reach the Transaction Limit';
	String get reachLimitPMFMessage => 'You have reached the account spending limit. You need to upgrade your KYC level for unlimited monthly transactions';
}

// Path: account
class _TranslationsAccountEn {
	_TranslationsAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get totalBalance => 'Total balance';
	String get recieved => 'Recieved';
	String get spent => 'Spent';
	String get change => 'Change';
	String get accountList => 'Account list';
	String get balance => 'Balance';
	String get accountNumber => 'Account number';
	String get transfer => 'Transfer';
	String get qrCode => 'QR Code';
	String get statement => 'Statement';
	String get more => 'More';
	String get transactionHistory => 'Transaction History';
	String get accountInfo => 'Account info';
	String get changeAccountName => 'Change account name';
	String get viewLinkedInfo => 'View linked info';
	String get setAsDefaultAccount => 'Set as default account';
	String get shareAccountDetail => 'Share account detail';
	String get thisMonth => 'This month';
	String get lastMonth => 'Last month';
	String get last2Months => 'Last 2 months';
	String get last3Months => 'Last 3 months';
	String get byDate => 'By date';
	String get accountStatement => 'Account Statement';
	String get selectPeriod => 'Select period';
	String get pdfFile => 'PDF File';
	String get emailMe => 'Email Me';
	String get download => 'Download';
	String get transactionDetail => 'Transaction detail';
	String get transactionID => 'Transaction ID';
	String get fromAccount => 'From Account';
	String get senderName => 'Sender name';
	String get toAccount => 'To Account';
	String get toAccountName => 'To Account Name';
	String get transactionTime => 'Transaction Time';
	String get tracingCode => 'Tracing Code';
	String get description => 'Description';
	String get share => 'Share';
	String get returnToSender => 'Return to Sender';
	String get repeat => 'Repeat';
	String get splitBill => 'Split Bill';
	String get transferViaBakong => 'Transfer to Local Bank via Bakong';
	String get linkedInfo => 'Linked Info';
	String get linkedPhoneNumber => 'Linked phone number';
	String get linkedCards => 'Linked cards';
	String get iBankVISATravel => 'iBank VISA Travel';
	String get primary => 'Primary';
	String get qrImageSaveFailed => 'QR image failed saved into your Photos.';
	String get addAmount => 'Add Amount';
	String get all => 'All';
	String get date => 'Date';
	String get creditToAccount => 'Credit to account';
	String get fromDateMustBeLessThanToDate => 'From date must be less than to date';
	String get setDefaultAccountSuccessfully => 'Successful set default account';
	String get enterAccountName => 'Enter Account Name';
	String get accountNicknameUpdated => 'Account nickname updated';
	String get transactionFilter => 'Transaction Filter';
	String get incoming => 'Incoming';
	String get outgoing => 'Outgoing';
	String availableBalance({required Object amount, required Object currency}) => 'Available balance\n${amount} ${currency}';
	String get last60Days => 'Last 60 days';
	String get last7Days => 'Last 7 days';
	String get last90Days => 'Last 90 days';
	String get custom => 'Custom';
	String get fromAmount => 'From amount';
	String get toAmount => 'To amount';
	String get accountInformation => 'Account Information';
	String get accountType => 'Account type';
	String get accountName => 'Account name';
	String get productDescription => 'Product description';
	String get floatAmount => 'Float amount';
	String get earmarkAmount => 'Earmark amount';
	String get drawingLimit => 'Drawing Limit';
	String get openSince => 'Open Since';
	String get swiftTransferInstruction => 'SWIFT Transfer Instruction';
	String get banksAddress => 'Bank’s Address:';
	String get tel => 'TEL:';
	String get field56A => 'Field 56A:';
	String get intermediaryBank => 'Intermediary Bank';
	String get intermediarySWIFT => 'Intermediary SWIFT';
	String get intermediaryAddress => 'Intermediary Address:';
	String get field57A => 'Field 57A:';
	String get beneficiaryBank => 'Beneficiary Bank:';
	String get beneficiarySWIFT => 'Beneficiary SWIFT:';
	String get beneficiaryAddress => 'Beneficiary  Address:';
	String get email => 'E-mail:';
	String get field59A => 'Field 59A:';
	String get beneficiaryName => 'Beneficiary Name:';
	String get beneficiaryAccountNumber => 'Beneficiary Account Number:';
	String get currentAccount => 'Current account';
	String get hiTherePleaseFindMyBICBankAccount => 'Hi there! Please find my BIC Bank Account details below:';
	String get totalSavingsAmount => 'Savings amount';
	String get openSavingAccount => 'Open Saving Account';
	String get list => 'List';
	String get principalAmount => 'Principal amount';
	String get downloadCertificate => 'Download Certificate';
	String get settlement => 'Settlement';
	String get interest => 'Interest';
	String get term => 'Term';
	String get valueDate => 'Value date';
	String get selectTheReceivingAccount => 'Select the receiving account';
	String get earlySettlement => 'Early Settlement';
	String get earlySettlementQuestion => 'If you settle up early, you will lose interest. Are you sure you want to settle up?';
	String get maturityDate => 'Maturity date';
	String get stay => 'Stay';
	String get settleUp => 'Settle Up';
	String get onMaturityDate => 'On maturity date';
	String get productType => 'Product type';
	String get productName => 'Product name';
	String get currentPrincipal => 'Current principal';
	String get totalDisbursement => 'Total disbursement amount';
	String get totalDisbursementAmount => 'Total disbursement \namount';
	String get branchName => 'Branch name';
	String get openDate => 'Open date';
	String get nextCollectionDate => 'Next collection date';
	String get explore => 'Explore';
	String get totalDebt => 'Total debt';
	String get hereTransferInstruction => 'Here is my SWIFT transfer instruction:';
	String get sent => 'Sent';
	String get showInactive => 'Show Inactive';
	String get hideInactive => 'Hide Inactive';
	String get amountMustBeLessThanToAmount => 'Amount must be less than to amount';
	String get status => 'Status';
	String get noImage => 'No image';
	String get selectDateRange => 'Select Date Range';
	String get enterAmount => 'Enter amount';
	String get overview => 'Overview';
	String get own => 'Own';
	String get borrow => 'Borrow';
	String get total => 'Total';
	String get noStatisticsYet => 'No statistics yet';
	String get noStatisticsYetContent => 'Your overview chart will be begin tracking once you open a credit card or take a loan';
	String get thereIsNoCardLinkedToThisAccount => 'Currently, there is no card linked to this account';
	String get pleaseSelectDate6NearestMonths => 'Please select date statement within 6 nearest months';
	String get pleaseSelectDate365NearestDays => 'Please select date statement within 1 nearest year';
	String get invalidDate => 'Invalid Date';
	String get billPayment => 'Bill Payment';
	String get openNewAccount => 'Open New Account';
	String get openNewSaving => 'Open New Savings';
	String get savingsAccount => 'Savings Account';
	String get fixedDeposit => 'Fixed Deposit';
	String get openSavingsAccount => 'Open Savings Account';
	String get savingAccountDesc => 'Our savings account with an atractive interest rate can help you accomplish your financial goals';
	String get fixedDepositDesc => 'Plan for long term investments with the attractive interest rates on fixed deposit accounts from iBank';
	String get selectNewAccountCurrency => 'Select New Account Currency';
	String get despositAmount => 'Desposit amount';
	String despositAmountError({required Object amount, required Object currency}) => 'Minimum amount is ${amount} ${currency}';
	String get yourAreAboutToOpenNew => 'You\'re about to open new';
	String get interestRate => 'Interest rate (p.a.)';
	String get sourceAccount => 'Source account';
	String get openSavingAccountSuccessMsg => 'You\'ve open new savings account successfully';
	String get viewAccount => 'View account';
	String get failedToOpenSavingsAccount => 'Failed to open new savings account. Please try again or contact our hotline for support.';
	String get savingAccountRules => 'A deposit of 50 USD or 0 KHR is required to open an account';
	String get savingAccountDesc1 => '0.50% p.a. for USD & 1.00% p.a. for KHR accounts';
	String get savingAccountDesc2 => 'No ongoing monthly fee';
	String get savingAccountDesc3 => 'No-fee account opening';
	String get savingAccountDesc4 => 'A deposit of 10 USD or 40,000 KHR is required to open an account';
	String get savingAccountDesc5 => 'Customer is allowed to open two additional accounts for USD / KHR';
	String get savingAccountTerm => 'By tapping "Next" you agree to iBank\'s Terms and Conditions';
	String get insufficientBalance => 'Insufficient Balance';
	String get insufficientBalanceDescription => 'Your account balance is not sufficient to execute this transaction.';
	String get reachedMaximumAccountLimitation => 'Reached maximum account limitation';
	String reachedMaximumAccountLimitationDesc({required Object currency}) => 'You have exceeded the limit for opening a new account in ${currency} currency, which is limited to two per customer';
	String get attractiveInterestRate => 'Attractive\ninterest rate';
	String get noOngoingMonthlyFee => 'No ongoing monthly fee';
	String get noFeeAccountOpening => 'No-fee account opening';
	String get feesCharges => 'Fees & Charges';
	String get ableToEarlySettlement => 'Able to make\nearly settlement';
	String get depositAccDesc1 => 'Earn up to 6.25% p.a. on Khmer Riel Accounts starting at 2,000,000 KHR';
	String get depositAccDesc2 => 'Earn up to 6.25% p.a. on USD Dollar Accounts starting at 500 USD';
	String get depositAccDesc3 => 'Choose a tenor between 3 months and 36 months';
	String get depositAccDesc4 => 'Choose a deposit with interest at maturity or monthly interest';
	String get openFixedDeposit => 'Open Fixed Deposit';
	String get interestPayment => 'Interest payment';
	String get depositAmount => 'Deposit amount';
	String get maturityTerms => 'Maturity terms';
	String get maturityInstructions => 'Maturity instructions';
	String get depositTerm => 'By tapping "Open" you agree to iBank\'s Terms and Conditions';
	String get interestPaymentOptions => 'Interest Payment Options';
	String get interestAtMaturity => 'Interest at maturity';
	String get interestAtMaturityDesc => 'The deposit interest will be paid to your account at maturity together with the deposit amount';
	String get monthlyInterest => 'Monthly interest';
	String get monthlyInterestDesc => 'The deposit interest will be paid to your account every month, and the deposit amount will be paid at maturity.';
	String get youreSendingADeposit => 'You\'re sending a deposit';
	String get duration => 'Duration';
	String get noticeDesc => 'The tax amount may vary according to your residential status at your interest received date';
	String get depoistResultSuccessDesc => 'You\'ve open new fixed deposit account successfully';
	String get closeAtMaturity => 'Close at maturity';
	String get time => 'Time';
	String get notice => 'Notice';
	String get initialDepositAmount => 'Initial deposit amount';
	String get depositResultFailedDesc => 'Failed to open new fixed deposit account';
	String get tryAgain => 'Try Again';
	String get contractNumber => 'Contract Number';
	String get originalAmount => 'Original amount';
	String get referenceID => 'Reference ID';
	String get transactionDetailsTitle => 'Transaction Details';
	String get originalTransaction => 'Original Transaction';
	String get permissionImageFail => 'To download QR code, please allow IBank to access your photos.';
	String get changeAccountNickName => 'Change account nickname';
	String get accountNickname => 'Account Nickname';
	String get last30Days => 'Last 30 days';
	String get permissionSaveImageFail => 'To download QR  please allow iBank to access your photo library';
	String get failedToDownload => 'Failed to download';
	String get payBill => 'Pay Bill';
	String get earlyClosure => 'Early Closure';
	String get closeTermDepositEarly => 'If you close the term deposit early, you will lose some interest. Are you sure you want to proceed?';
	String get openNewDeposit => 'Open New Deposit';
}

// Path: currencyType
class _TranslationsCurrencyTypeEn {
	_TranslationsCurrencyTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get usd => 'USD';
	String get khr => 'KHR';
}

// Path: cardRepayment
class _TranslationsCardRepaymentEn {
	_TranslationsCardRepaymentEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Credit Card Repayment';
	String get toCardNumber => 'To card number';
	String get cardName => 'Card name';
	String get repaymentMethod => 'Repayment method';
	late final _TranslationsCardRepaymentOptionEn option = _TranslationsCardRepaymentOptionEn._(_root);
}

// Path: billPayment
class _TranslationsBillPaymentEn {
	_TranslationsBillPaymentEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get deleteFavorite => 'Delete Favorite';
	String get deleteFavoriteDescription => 'Are you sure you want to delete this favorite?';
	String get billPayment => 'Bill Payment';
	String get topUp => 'Top Up';
	String get internetTV => 'Internet & TV Payment';
	String get utilities => 'Utilities';
	String get education => 'Education';
	String get insurance => 'Insurance';
	String get entertainment => 'Entertainment';
	String get realEstate => 'Real Estate';
	String get tradingDistribution => 'Trading & Distribution';
	String get otherPayment => 'Other payment';
	String get favorites => 'Favorites';
	String get schedule => 'Schedule';
	String get schedulePayment => 'Schedule payment';
	String get phoneNumber => 'Phone number';
	String get enterPhoneNumber => 'Enter phone number';
	String get enterContactId => 'Enter contract ID';
	String get enterCustomerId => 'Enter customer ID';
	String get enterStudentId => 'Enter student ID';
	String get enterPolicyNumber => 'Enter policy number';
	String get enterSNumber => 'Enter S number';
	String get enterInvoiceId => 'Enter invoice ID';
	String get enterSabbyAccount => 'Enter Sabby account';
	String get amount => 'Amount';
	String get khr => 'KHR';
	String get provider => 'Provider';
	String get paidTo => 'Paid to';
	String get receiver => 'Receiver';
	String get fee => 'Fee';
	String get service => 'Service';
	String get supportedProvider => 'Supported provider';
	String get cellcard => 'Cellcard';
	String get selectContact => 'Select Contact';
	String get smart => 'Smart';
	String get yesPhone => 'Yesphone';
	String get coolTel => 'CoolTel';
	String get seatel => 'Seatel';
	String get metfone => 'Metfone';
	String get yourPhone => 'Your phone number';
	String get contactId => 'Contract ID';
	String get customerId => 'Customer ID';
	String get invoiceId => 'Invoice ID';
	String get studentId => 'Student ID';
	String get sabayAccount => 'Sabay account';
	String get policyNumber => 'Policy number';
	String get transactionId => 'Transaction ID';
	String get tracingCode => 'Tracing Code';
	String get newPayment => 'New Payment';
	String get paymentProcess => 'Processing Payment';
	String get successfulPayment => 'Successful Payment';
	String get failedPayment => 'Failed Payment';
	String get submitBillError => 'Payment failed';
	String get unableToProcess => 'Unable to process';
	String get paymentToProcess => 'Payment is processing';
	String get billNotFound => 'Bill not found';
	String get cancelPaymentTitle => 'Cancel Payment?';
	String get cancelPaymentDesc => 'All inputted information will be deleted';
	String get noted => 'Noted:';
	String get exchangeRateNoted => 'Debit amount is dynamic calculation based on exchange rates.';
	String get customerName => 'Customer name';
	String get invalidCustomerId => 'Customer not found';
	String get payBy => 'Pay by';
	String get expiryAt => 'Expiry at';
	late final _TranslationsBillPaymentDescEn desc = _TranslationsBillPaymentDescEn._(_root);
	String get exchangeRate => 'Exchange Rate';
	String get paymentAmount => 'Payment amount';
	String get debitAmount => 'Debit amount';
	String get crossCurrencyNote => 'Debit amount is dynamic calculation based on exchange rates.';
	String get changeProvider => 'Change Provider';
	String get changeProviderDesc => 'Are you sure you want to change your bill payment’s provider?';
	String get edcAmountSupportTextfield => 'Amount should be between 100 to 400,000,000 KHR';
	String get noFavorite => 'No Favorite';
	String get createYourFirstFavorite => 'Create your first Favorite and it will appear here.';
	String get addNewFavorite => 'Add new favorite';
	String get selectBillPaymentService => 'Select Bill Payment Service';
	String get invoiceExpiredTitle => 'Invoice expired';
	String get edc => 'Electricite Du Cambodge';
	String get invalidInvoiceId => 'Invalid Invoice ID';
	String get invalidAmount => 'Invalid Amount';
	String get exceedDailyLimit => 'Exceed daily limit';
	String get exceedMonthlyLimit => 'Exceed monthly limit';
	String get exceedTransactionLimit => 'Exceed transaction limit';
	String get insufficientBalanceDescription => 'Your account balance is not sufficient to execute this transaction. Please try again.';
	String get insufficientBalance => 'Insufficient Balance';
	String get rename => 'Rename';
	String get overdueDate => 'Overdue date';
	List<String> get dateTimeDesc => [
		'Tomorrow',
		'Today',
		'Yesterday',
	];
	String minAmountValidateError({required Object minAmount}) => 'Minimum payment amount is ${minAmount}';
	String maxAmountValidateError({required Object maxAmount}) => 'Maximum payment amount is ${maxAmount}';
	String get noBillToPayError => 'There is no bill to pay';
	String get billExpiredError => 'Bill epxired';
	String limitAmountTerms({required Object minAmount, required Object maxAmount, required Object currency}) => 'Amount should be between ${minAmount} to ${maxAmount} ${currency}';
	String get scanBarcodeAppbarTitle => 'Scan QR/Barcode';
	String get alignFrameWithBarCode => 'Align frame with QR/Barcode';
	String get uploadBarcode => 'Upload QR/Barcode';
	String get serviceSupports => 'Our service only supports Cambodia phone numbers';
	String get edcInvalidCustomerId => 'Customer not found.';
	String get favoriteBill => 'Favorite Bill';
	String get partialPayNotAccepted => 'Partial payment not accepted.';
	String get exceedPayNotAccepted => 'Exceed payment not accepted.';
	String get limitAmount => 'Amount should be between 100 to 400,000,000 KHR';
	String get selectFavoriteBill => 'Select Favorite Bill';
	String get bankReference => 'Bank Ref';
	String get nickName => 'Nickname';
	String get favoriteUpdateSuccess => 'Favorite update successfully';
	String get saveFavoriteSuccess => 'Saved favorite successfully';
	String get autoPayment => 'Auto Payment';
	String get registeredSuccessfully => 'Registered Successfully';
	String get unSubscribe => 'Unsubscribe';
	String get unSubscribeAutoPaymentDetail => 'Are you sure you want to unsubscribe from this provider?';
	String get subscribeDate => 'Subscribe date';
	String get expireDate => 'Expire date';
	String get autoPaymentDuplicateSubscribe => 'Consumer already subscribed!';
	String autoPaymentTC({required Object accountNumber}) => 'I agree that the account ${accountNumber} will pay for electricity automatically after EDC issues every monthly bill.';
	String get autoPaymentDeletedMsg => 'Auto payment deleted';
	String get autoPaymentDeletedFailedMsg => 'Failed to unsubscribe Auto payment';
	String get autoPaymentAddedMsg => 'Auto payment added';
	String get autoPaymentAdd => 'Register auto payment and it will appear here.';
	String get editAutoPayment => 'Edit Auto Payment';
	String get editAutoPaymentSavedSuccessfully => 'Changed saved successfully';
	String get editAutoPaymentSavedFail => 'Changed saved fail';
	String get viewDetail => 'View Detail';
	String get expiredDate => 'Expirte date';
	String subscriptAutoPayTC({required Object accountNo}) => 'I agree that the account ${accountNo} will pay for electricity automatically after EDC issues every monthly bill.';
	String get duplicateSubscribedAcc => 'This account has already been subscribed';
	String get refCode => 'Ref code';
}

// Path: userDevices
class _TranslationsUserDevicesEn {
	_TranslationsUserDevicesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Device';
	String registerDate({required Object date}) => 'Register date: ${date}';
	String get warningMessage => 'Only one device can be active at a time. To use the app on another device, revoke your current one before logging into a new device.';
	String get revokeDevide => 'Revoke Device';
	String get revoke => 'Revoke';
	String get popUpWarningMessage => 'iBank will NEVER ask you to revoke your device. Stay alert and make sure to revoke device only if you wish to move your account to another device.';
}

// Path: withdraw
class _TranslationsWithdrawEn {
	_TranslationsWithdrawEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get withdrawMsg => 'Ready to withdraw from ATM';
	String get yourWithdrawCode => 'Your withdrawal code';
	String get atmWithdrawal => 'ATM Withdrawal';
}

// Path: qrTransfer
class _TranslationsQrTransferEn {
	_TranslationsQrTransferEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'QR Transfer';
	String get exchangeRate => 'Exchange Rate';
	String get debitAmount => 'Debit amount';
}

// Path: fxExchangeRate
class _TranslationsFxExchangeRateEn {
	_TranslationsFxExchangeRateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get fxRate => 'FX Rate';
	String get iBankBuys => 'iBank buys';
	String get iBankSells => 'iBank sells';
	String get atmBranches => 'ATM & Branches';
	String get branches => 'Branches';
	String get atm => 'ATM';
	String get faqs => 'FAQs';
	String get enterKeywords => 'Enter keywords';
	String get lastUpdatedTime => 'Last updated time';
	String get calculator => 'Calculator';
	String get calculatorDescription => 'Exchange rates will be automatically calculated when input is entered in one currency field';
	String get calculatorErrorMessage => 'The exchange rates are currently under checking. Please try again later.';
	String get failedToDirection => 'Failed to direction';
	String get failedToDirectionDescription => 'To direction to this location, please allow IBank to access your location';
}

// Path: taskToDo
class _TranslationsTaskToDoEn {
	_TranslationsTaskToDoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Task to Do';
	String get upgradingYourIdentityVerification => 'Upgrading your identity verification';
	String get enhanceYourBankingExperienceByUpgradingYourKYC => 'Enhance your banking experience by upgrading your KYC';
	String get electriciteDuCambodge => 'Electricite Du Cambodge';
	String get customerID => 'Customer ID';
	String get creditCardRepayment => 'Credit card repayment';
	String get identityVerification => 'Identity Verification';
	String get verifyYourIdentity => 'Verify Your Identity';
	String get makeTransactionWithHigherAmount => 'Make transaction with higher amount';
	String get noLimitOfTransactionInAMonth => 'No limit of transaction in a month';
	String get receiveSpecialCareOfBankStaff => 'Receive special care of Bank Staff';
	String get completeAllDocumentForFutureUsages => 'Complete all document for future usages';
	String get upgradingYourKycLevel => 'Upgrading Your KYC Level';
	String get upgradingYourEKYCDesc => 'This step-by-step guide will walk you through the process of upgrading your KYC.';
	String get step => 'Step';
	String get goToAnyIBankSBranch => 'Go to any iBank\'s Branch';
	String get contactTellerToRequestUpgradingKycLevel => 'Contact Teller to request upgrading KYC level';
	String get providePersonalDocumentAsTellerGuideline => 'Provide personal document as Teller guideline';
	String get fillInARegistrationFormAndWaitForProcess => 'Fill in a registration form and waiting for process';
	String get findIBankBranch => 'Find iBank Branch';
	String get enableCamera => 'Enable camera access to enhance your iBank experience';
	String get wouldLikeAccessCamera => '“iBank” Would Like To Access the Camera';
	String get receiveRealNotificaiton => 'Receive real-time updates with app notifications';
	String get wouldLikeSendNotificaion => '“iBank” Would Like to Send You Notification';
}

// Path: editLayout
class _TranslationsEditLayoutEn {
	_TranslationsEditLayoutEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get payBillsEffortlesslySecurely => 'Pay your bills effortlessly and securely';
	String get editLayout => 'Edit Layout';
	String get transferFrequentBeneficiary => 'Transfer to your frequent beneficiary quickly and safely';
	String get frequentTransfers => 'Frequent Transfers';
	String get rechargeAccountOrMobile => 'Recharge your account or mobile easily';
	String get noWidgetDisplayed => 'No widget is displayed';
	String get newFavoriteBill => 'New Favorite Bill';
	String get flightBooking => 'Flight\nBooking';
	String get busBooking => 'Bus\nBooking';
	String get transactionLimit => 'Transaction\nLimit';
	String get purchaseInsurance => 'Purchase\nInsurance';
	String get notificationSetting => 'Notification\nSetting';
	String get setDefaultAccount => 'Set Default\nAccount';
	String get attractiveInterestRate => 'Attractive interest rate';
	String get controlPrivacySettingsDataPreferences => 'Control your privacy settings and data preferences';
	String get layoutChangesSaved => 'Your layout changes have been saved';
	String get noWidgetHidden => 'No widget is hidden';
	String get bookTicketsEffortlesslySecurely => 'Book tickets effortlessly and securely';
	String get hiddenWidgets => 'Hidden Widgets';
	String get displayedWidgets => 'Displayed Widgets';
	String get dragWidgets => 'Drag widgets to rearrange or hide them, and save your changes when done.';
}

// Path: closeDepositModel
class _TranslationsCloseDepositModelEn {
	_TranslationsCloseDepositModelEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get earlyClosureSuccessfully => 'Early Closure Successfully';
	String get name => 'Name';
	String get receivingAccount => 'Receiving account';
	String get time => 'Time';
	String get earlyClosureFailed => 'Early Closure Failed';
}

// Path: saveBillBeneficiary
class _TranslationsSaveBillBeneficiaryEn {
	_TranslationsSaveBillBeneficiaryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Save As Favorite';
}

// Path: searchBillBeneficiary
class _TranslationsSearchBillBeneficiaryEn {
	_TranslationsSearchBillBeneficiaryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Favorite List';
}

// Path: quickAction
class _TranslationsQuickActionEn {
	_TranslationsQuickActionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get payments => 'Payments';
	String get tranfer => 'Transfers';
	String get topUp => 'Top Up';
	String get qrScan => 'Scan QR';
}

// Path: asset.gPay
class _TranslationsAssetGPayEn {
	_TranslationsAssetGPayEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get addGPaySuccessTitle => 'Add to GPay Successfully';
	String get addGPaySuccessDescription => 'Your card is ready to pay in stores with GPay';
	String get guideToGPay => 'Guide to GPay';
	String get viewGPayCard => 'View Card';
	String get backbtn => 'Back Home';
	String get removeGPaySuccessTitle => 'Remove Successfully';
	String get removeGPayDescritption => 'Your card has been remove from Google Pay wallet account';
	String get setGPayAsDefaultSuccessTitle => 'Successfully';
	String get setGPayCardAsDefaultDescription => 'Your card has been set as default with Google Pay wallet account';
	String get setAsDefaultInGPay => 'Set as default in GPay';
	String get removeInGPay => 'Remove in GPay';
	String get setting => 'Setting';
	String get goToCard => 'Go to Card';
	String get addTo => 'Add to';
	String get pay => 'Pay';
	String get viewIn => 'View In';
}

// Path: cardRepayment.option
class _TranslationsCardRepaymentOptionEn {
	_TranslationsCardRepaymentOptionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get paymentDue => 'Payment due';
	String get minimumAmount => 'Minimum amount';
	String get totalBalance => 'Total balance';
	String get optionalAmount => 'Optional amount';
	late final _TranslationsCardRepaymentOptionDescEn desc = _TranslationsCardRepaymentOptionDescEn._(_root);
}

// Path: billPayment.desc
class _TranslationsBillPaymentDescEn {
	_TranslationsBillPaymentDescEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get payForInternetTv => 'Pay your internet and TV bills.';
	String get payForElectricityWaterWaste => 'Pay for electricity, water and waste bills.';
	String get payForEducation => 'Pay for your education and tuition.';
	String get payForGamesApps => 'Shop for credit for games and apps.';
	String get payForInsurance => 'Make payments for insurance.';
	String get payForRealEstate => 'Pay for property.';
	String get payForOther => 'Send payments to more providers.';
	String get payForTrading => 'Pay your trading partners or distributors.';
}

// Path: cardRepayment.option.desc
class _TranslationsCardRepaymentOptionDescEn {
	_TranslationsCardRepaymentOptionDescEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get payForDue => 'Pay before the deadline to avoid late fee and\ninterest';
	String get payForMinimumAmount => 'Pay before the deadline to avoid late fee';
	String get payForTotalBalance => 'New outstanding debt arises + remaining\nstatement balance';
	String get payForOptionalAmount => 'Enter the amount you would like to pay';
}

// Path: <root>
class _TranslationsKm extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsKm.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.km,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <km>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _TranslationsKm _root = this; // ignore: unused_field

	// Translations
	@override String get underDevelopment => 'ស្ថិតក្រោមការអភិវឌ្ឍន៍';
	@override late final _TranslationsCommonKm common = _TranslationsCommonKm._(_root);
	@override List<String> get months => [
		'មករា',
		'កុម្ភៈ',
		'មីនា',
		'មេសា',
		'ឧសភា',
		'មិថុនា',
		'កក្កដា',
		'សីហា',
		'កញ្ញា',
		'តុលា',
		'វិច្ឆិកា',
		'ធ្នូ',
	];
	@override late final _TranslationsCloseDepositModelKm closeDepositModel = _TranslationsCloseDepositModelKm._(_root);
	@override late final _TranslationsAutoRejectedScreenKm autoRejectedScreen = _TranslationsAutoRejectedScreenKm._(_root);
	@override late final _TranslationsPasscodeKm passcode = _TranslationsPasscodeKm._(_root);
	@override late final _TranslationsLoginScreenKm loginScreen = _TranslationsLoginScreenKm._(_root);
	@override List<String> get dayAgo => [
		'ថ្ងៃនេះ',
		'ម្សិលមិញ',
		'ចន្ទ',
		'អង្គារ',
		'ពុធ',
		'ព្រហស្បតិ៍',
		'សុក្រ',
		'សៅរ៍',
		'អាទិត្យ',
	];
	@override late final _TranslationsErrorsKm errors = _TranslationsErrorsKm._(_root);
	@override late final _TranslationsBiometricKm biometric = _TranslationsBiometricKm._(_root);
	@override late final _TranslationsMoveScreenKm moveScreen = _TranslationsMoveScreenKm._(_root);
	@override late final _TranslationsLoginKm login = _TranslationsLoginKm._(_root);
	@override late final _TranslationsHomeKm home = _TranslationsHomeKm._(_root);
	@override late final _TranslationsAssetKm asset = _TranslationsAssetKm._(_root);
	@override late final _TranslationsQrCodeKm qrCode = _TranslationsQrCodeKm._(_root);
	@override late final _TranslationsLoyaltyKm loyalty = _TranslationsLoyaltyKm._(_root);
	@override late final _TranslationsProductKm product = _TranslationsProductKm._(_root);
	@override late final _TranslationsVerifyPasscodeScreenKm verifyPasscodeScreen = _TranslationsVerifyPasscodeScreenKm._(_root);
	@override late final _TranslationsLanguageKm language = _TranslationsLanguageKm._(_root);
	@override late final _TranslationsWelcomeScreenKm welcomeScreen = _TranslationsWelcomeScreenKm._(_root);
	@override late final _TranslationsNotificationKm notification = _TranslationsNotificationKm._(_root);
	@override List<String> get greeting => [
		'អរុណ​សួស្តី',
		'ទិវាសួស្តី',
		'សាយណ្ហសួស្តី',
	];
	@override late final _TranslationsVerifyNumberPhoneScreenKm verifyNumberPhoneScreen = _TranslationsVerifyNumberPhoneScreenKm._(_root);
	@override late final _TranslationsVerifyOTPScreenKm verifyOTPScreen = _TranslationsVerifyOTPScreenKm._(_root);
	@override late final _TranslationsEKYCIntroScreenKm eKYCIntroScreen = _TranslationsEKYCIntroScreenKm._(_root);
	@override late final _TranslationsIdentificationVerifyIntroScreenKm identificationVerifyIntroScreen = _TranslationsIdentificationVerifyIntroScreenKm._(_root);
	@override late final _TranslationsPersonalInformationKm personalInformation = _TranslationsPersonalInformationKm._(_root);
	@override late final _TranslationsConfirmEKycInformationScreenKm confirmEKycInformationScreen = _TranslationsConfirmEKycInformationScreenKm._(_root);
	@override late final _TranslationsPasswordCreateScreenKm passwordCreateScreen = _TranslationsPasswordCreateScreenKm._(_root);
	@override late final _TranslationsPasscodeCreateScreenKm passcodeCreateScreen = _TranslationsPasscodeCreateScreenKm._(_root);
	@override late final _TranslationsConfirmPasscodeScreenKm confirmPasscodeScreen = _TranslationsConfirmPasscodeScreenKm._(_root);
	@override late final _TranslationsProcessingScreenKm processingScreen = _TranslationsProcessingScreenKm._(_root);
	@override late final _TranslationsManualReviewScreenKm manualReviewScreen = _TranslationsManualReviewScreenKm._(_root);
	@override late final _TranslationsOnboardingSuccessScreenKm onboardingSuccessScreen = _TranslationsOnboardingSuccessScreenKm._(_root);
	@override late final _TranslationsVerificationProcessScreenKm verificationProcessScreen = _TranslationsVerificationProcessScreenKm._(_root);
	@override late final _TranslationsUpdateEmailScreenKm updateEmailScreen = _TranslationsUpdateEmailScreenKm._(_root);
	@override late final _TranslationsUpdateOccupationScreenKm updateOccupationScreen = _TranslationsUpdateOccupationScreenKm._(_root);
	@override late final _TranslationsRegisterBiometricScreenKm registerBiometricScreen = _TranslationsRegisterBiometricScreenKm._(_root);
	@override late final _TranslationsSuccessScreenKm successScreen = _TranslationsSuccessScreenKm._(_root);
	@override late final _TranslationsCardLimitSettingKm cardLimitSetting = _TranslationsCardLimitSettingKm._(_root);
	@override late final _TranslationsCardKm card = _TranslationsCardKm._(_root);
	@override late final _TranslationsCardTabScreenKm cardTabScreen = _TranslationsCardTabScreenKm._(_root);
	@override late final _TranslationsCardStatementKm cardStatement = _TranslationsCardStatementKm._(_root);
	@override late final _TranslationsCardHistoryKm cardHistory = _TranslationsCardHistoryKm._(_root);
	@override late final _TranslationsFilterCardKm filterCard = _TranslationsFilterCardKm._(_root);
	@override late final _TranslationsSelectCreditCardKm selectCreditCard = _TranslationsSelectCreditCardKm._(_root);
	@override late final _TranslationsCustomerKm customer = _TranslationsCustomerKm._(_root);
	@override late final _TranslationsProfileKm profile = _TranslationsProfileKm._(_root);
	@override late final _TranslationsTransferKm transfer = _TranslationsTransferKm._(_root);
	@override late final _TranslationsAccountKm account = _TranslationsAccountKm._(_root);
	@override late final _TranslationsCurrencyTypeKm currencyType = _TranslationsCurrencyTypeKm._(_root);
	@override late final _TranslationsCardRepaymentKm cardRepayment = _TranslationsCardRepaymentKm._(_root);
	@override late final _TranslationsBillPaymentKm billPayment = _TranslationsBillPaymentKm._(_root);
	@override List<String> get dateTimeDesc => [
		'ថ្ងែស្អេក',
		'ថ្ងៃនេះ',
		'ម្សិលមិញ',
	];
	@override late final _TranslationsUserDevicesKm userDevices = _TranslationsUserDevicesKm._(_root);
	@override late final _TranslationsWithdrawKm withdraw = _TranslationsWithdrawKm._(_root);
	@override late final _TranslationsQrTransferKm qrTransfer = _TranslationsQrTransferKm._(_root);
	@override late final _TranslationsFxExchangeRateKm fxExchangeRate = _TranslationsFxExchangeRateKm._(_root);
	@override late final _TranslationsTaskToDoKm taskToDo = _TranslationsTaskToDoKm._(_root);
	@override late final _TranslationsEditLayoutKm editLayout = _TranslationsEditLayoutKm._(_root);
	@override late final _TranslationsSaveBillBeneficiaryKm saveBillBeneficiary = _TranslationsSaveBillBeneficiaryKm._(_root);
	@override late final _TranslationsSearchBillBeneficiaryKm searchBillBeneficiary = _TranslationsSearchBillBeneficiaryKm._(_root);
	@override late final _TranslationsQuickActionKm quickAction = _TranslationsQuickActionKm._(_root);
	@override String get endJson => '';
}

// Path: common
class _TranslationsCommonKm extends _TranslationsCommonEn {
	_TranslationsCommonKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get value => 'តម្លៃ';
	@override String get remove => 'ដកចេញ';
	@override String get dayOfTheWeek => 'ថ្ងៃនៃសប្តាហ៍';
	@override String get dayOfTheMonth => 'ថ្ងៃនៃខែ';
	@override String get apply => 'អនុវត្ត';
	@override String get all => 'ទាំងអស់';
	@override String get back => 'ត្រឡប់';
	@override String get backHome => 'ត្រឡប់មកទំព័ដើម';
	@override String get goToHome => 'ទៅកាន់ទំព័រដើម';
	@override String get save => 'រក្សាទុក';
	@override String get forceUpdate => 'ធ្វើបច្ចុប្បន្នភាពកំណែចុងក្រោយ';
	@override String get proceed => 'ដំណើរការ';
	@override String get success => 'ជោគជ័យ';
	@override String get next => 'បន្ទាប់';
	@override String get cancel => 'បោះបង់';
	@override String get agree => 'យល់ព្រម';
	@override String get searchHint => 'ស្វែងរក';
	@override String get ok => 'យល់ព្រម';
	@override String get close => 'បិទ';
	@override String get deny => 'បដិសេធ';
	@override String get male => 'ប្រុស';
	@override String get female => 'ស្រី';
	@override String get ticketBox => 'ប្រអប់សំបុត្រ';
	@override String get orther => 'ផ្សេងៗ';
	@override String get warning => 'ព្រមាន';
	@override String get select => 'ជ្រើសរើស';
	@override String get retry => 'ព្យាយាមម្តងទៀត';
	@override String get termsAndConditions => 'លក្ខខណ្ឌ';
	@override String get learnMore => 'ស្វែងយល់បន្ថែម';
	@override String get seeAll => 'មើលទាំងអស់';
	@override String get updateNow => 'ធ្វើបច្ចុប្បន្នភាពឥឡូវនេះ ';
	@override String get applicationUpdate => 'ការធ្វើបច្ចុប្បន្នកម្មវិធី';
	@override String get optional => 'ជម្រើស';
	@override String get phoneNumber => 'លេខទូរស័ព្ទ';
	@override String get letBeginTitle => 'ចាប់ផ្តើម';
	@override String get confirm => 'យល់ព្រម';
	@override String get areSureWantDisable => ' តើ​អ្នក​ប្រាកដ​ឬអត់ចង់​បិទ​ការ​ផ្ទៀងផ្ទាត់​ការ​សម្គាល់​អត្តសញ្ញាណ​?';
	@override String get atLeast8CharactersWarning => 'យ៉ាងហោចណាស់ចំនួន ៨ តួអក្សរដោយគ្មានការដកឃ្លា​ - យ៉ាងហោចណាស់អ្នកត្រូវបញ្ចូល៨ តួអក្សរដោយគ្មានការរាប់បញ្ចូលការដកឃ្លា។ / តិចបំផុតអ្នកត្រូវបញ្ចូល​​ ៨ តួអក្សរដោយគ្មានការរាប់បញ្ចូលការដកឃ្លា។';
	@override String get passcodeConsiderWarning => 'សូម ជៀសវាងប្រើប្រាស់លេខសម្ងាត់ដដែលៗ ឬលេខសម្ងាត់ងាយស្រួលទាយ';
	@override String get descriptionForceUpdate => 'មាន​កំណែ​ថ្មី​មួយ​ដែល​មាន​ក្នុង​ឃ្លាំង។ សូម​ធ្វើ​បច្ចុប្បន្ន​ប្រើ​ដើម្បី​ការ​សុវត្ថិភាព​និង​ការ​បង្ហាញ​ប្រើប្រាស់​របស់​អ្នក។';
	@override String get processing => 'កំពុងដំណើរការ';
	@override String get accountNumber => '​លេខ​គណនី';
	@override String get networkSetting => 'កំណត់បណ្តាញ';
	@override String get settings => 'ការកំណត់ផ្សេងៗ';
	@override String get tryLater => 'ព្យាយាមលើកក្រោយ';
	@override String get callHotLine => 'តេទៅធនគារ';
	@override String get numberHintText => 'ឧទាហរណ៍ ១២៣៤៥៦';
	@override String get email => 'សារអេឡិចត្រូនិក';
	@override String get emailHintText => 'អាស័យដ្ឋានសារអេឡិចត្រូនិក';
	@override String get notNow => 'មិនមែនឥឡូវនេះទេ';
	@override String get login => 'ចូល';
	@override String get done => 'រួចរាល់';
	@override String get more => 'ច្រើន';
	@override String get copyToClipboard => 'ចម្លងទៅកាន់ក្តារតម្បៀតខ្ទស់';
	@override String get account => 'គណនី';
	@override String get share => 'ចែករំលែក';
	@override String get filter => 'តម្រង';
	@override String get timeRange => 'ចន្លោះពេលវេលា';
	@override String get reset => 'កំណត់ឡើងវិញ';
	@override String get here => 'ទីនេះ';
	@override String get update => 'ធ្វើបច្ចុប្បន្នភាព';
	@override String get noResultFound => 'លទ្ធផលរកមិនឃើញ';
	@override String get emptyList => 'បញ្ជីទទេ';
	@override String get from => 'ពី';
	@override String get to => 'ទៅ​';
	@override String get no => 'ទេ';
	@override String get yes => 'បាទ/ចាស';
	@override String get fiveMinutes => '៥ នាទី';
	@override String get threeMinutes => '៣ នាទី';
	@override String get oneMinute => '១ នាទី';
	@override String get thritySeconds => '៣០ វិនាទី';
	@override String get edit => 'កែសម្រួល';
	@override String get review => 'ផ្ទៀងផ្ទាត់';
	@override String get finish => 'បញ្ចប់';
	@override String get tryAgain => 'ព្យាយាមម្តងទៀត';
	@override String get favorite => 'ចំណង់ចំណូលចិត្ត';
	@override String get time => 'ពេលវេលា';
	@override String get free => 'ឥតគិតថ្លៃ';
	@override String get amount => 'ចំនួន';
	@override String get logOut => 'ចាកចេញ';
	@override String get version => 'កំណែកម្មវិធី';
	@override String get sureWantLogOutiBank => 'អ្នកចង់ចាកចេញ iBank ចេញពីឧបករណ៍នេះទេ?';
	@override String get custom => 'ផ្ទាល់ខ្លួន';
	@override String get downloaded => 'បានទាញយក';
	@override String get wouldLikeContinue => 'តើអ្នកចង់បន្តទេ? - តើអ្នកចង់បន្តទៀតដែរទេ?';
	@override String get notAvailable => 'មិនអាច';
	@override String get congratulation => 'អបអរសាទរ!';
	@override String get note => 'ចំណាំ:';
	@override String get keep => 'រក្សា';
	@override String get change => 'ផ្លាស់ប្តូរ';
	@override String get delete => 'លុប';
	@override String get copied => 'ចម្លង';
	@override String get repeat => 'ធ្វើម្តងទៀត';
	@override String get backToWelcomeScreen => 'ត្រឡប់ទៅកាន់អេក្រង់ស្វាគមន៍';
	@override String get open => 'បើក';
	@override String get failed => 'បរាជ័យ';
	@override String get borrow => 'ខ្ចី';
	@override String get register => 'ចុះឈ្មោះ';
	@override String remainTimeString({required Object time}) => '${time}s';
	@override String get unableSendOTPSMS => 'មិនអាចផ្ញើ OTP តាមរយៈ SMS';
	@override String get weSendOTPViaSMS => 'យើងមិនអាចផ្ញើ OTP តាមរយៈ SMS ទេ។ ឥឡូវនេះយើងនឹងផ្ញើវាទៅអ៊ីមែលដែលបានចុះឈ្មោះរបស់អ្នក។ តើអ្នកយល់ព្រមទេ?';
	@override String get unableSendOTP => 'មិនអាចផ្ញើ OTP';
	@override String get youRegisteredEmail => 'អ្នកមិនបានចុះឈ្មោះអាស័យដ្ឋានអ៊ីមែលរបស់អ្នកទេ យើងមិនអាចផ្ញើលេខកូដ OTP ទៅអ្នកបានទេ';
	@override String get weUnableSendOTP => 'យើងមិនអាចផ្ញើ OTP ទៅអ្នកបានទេ។ សូមទាក់ទងទៅកាន់លេខទូរស័ព្ទសម្រាប់ជំនួយ';
	@override String get doYouWantTologoutDevice => 'អ្នកចង់ចាកចេញ iBank ចេញពីឧបករណ៍នេះទេ?';
	@override String get home => 'ផ្ទះ';
}

// Path: closeDepositModel
class _TranslationsCloseDepositModelKm extends _TranslationsCloseDepositModelEn {
	_TranslationsCloseDepositModelKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get earlyClosureSuccessfully => 'ការបិទមុនបានជោគជ័យ';
	@override String get name => 'ឈ្មោះ';
	@override String get receivingAccount => 'គណនីទទួល';
	@override String get time => 'ពេលវេលា';
	@override String get earlyClosureFailed => 'ការបិទមុនបរាជ័យ';
}

// Path: autoRejectedScreen
class _TranslationsAutoRejectedScreenKm extends _TranslationsAutoRejectedScreenEn {
	_TranslationsAutoRejectedScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get verificationRejected => 'ការផ្ទៀងផ្ទាត់ត្រូវបានបដិសេធ';
	@override String get weRegretToInform => 'យើងសោកស្តាយក្នុងការជូនដំណឹងដល់អ្នកថាសំណើផ្ទៀងផ្ទាត់របស់អ្នកត្រូវបានបដិសេធ។ សូមព្យាយាមម្តងទៀត ឬហៅទូរស័ព្ទទៅកាន់សហការីរបស់យើងសម្រាប់ជំនួយ';
	@override String get weRegeToInform => 'យើងសោកស្តាយក្នុងការជូនដំណឹងដល់អ្នកថាសំណើផ្ទៀងផ្ទាត់របស់អ្នកត្រូវបានបដិសេធ។ អ្នកបានព្យាយាមអស់ហើយ។ សូមអញ្ជើញទៅកាន់សាខាធនាគារ iBank ឬទូរស័ព្ទទៅកាន់សហការីរបស់យើងសម្រាប់ការគាំទ្រ។';
	@override String get branchesLocation => 'ទីតាំងសាខាធនាគារ';
}

// Path: passcode
class _TranslationsPasscodeKm extends _TranslationsPasscodeEn {
	_TranslationsPasscodeKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get enterYourPasscode => 'វាយលេខសម្ងាត់របស់អ្នក';
	@override String get forgotPasscode => 'ភ្លេចលេខសម្ងាត់?';
	@override String get currentPasscode => 'លេខសម្ងាត់បច្ចុប្បន្ន';
	@override String get createNewPasscode => 'បង្កើតលេខសម្ងាត់ថ្មី';
	@override String get confirmPasscode => 'បញ្ជាក់លេខសម្ងាត់';
	@override String get invalidPasscodeError => 'លេខសម្ងាត់មិនត្រឹមត្រូវ';
	@override String get wrongPasscode => 'ខុសលេខសម្ងាត់';
	@override String get cancel => 'បោះបង់';
	@override String get mContinue => 'បន្ត';
	@override String get avoidPasscode => 'ជៀសវាងប្រើលេខសម្ងាត់ដែល៖';
	@override String get consecutiveNumbers => '• លេខរៀងគ្នា​ (ឧ. 123456)';
	@override String get repeatingNumbers => '• លេខជាន់គ្នា​ (ឧ. 111111)';
	@override String get kindlyOTP => 'សូមបញ្ចូល OTP ដែលបានផ្ញើទៅលេខទូរស័ព្ទរបស់អ្នក *******';
	@override String get pleaseDonNotUseConsecutiveNumber => 'សូម​កុំ​ប្រើ​លេខ​រៀងគ្នា​ ';
	@override String get pleaseDonNotUseRepeatNumber => 'សូម​កុំ​ប្រើ​លេខ​ដដែលៗ';
	@override String get pleaseEnterPasscodeMatchingOld => 'សូមបញ្ចូលលេខសម្ងាត់ដែលត្រូវនឹងលេខកូដដែលអ្នកទើបតែបង្កើត';
}

// Path: loginScreen
class _TranslationsLoginScreenKm extends _TranslationsLoginScreenEn {
	_TranslationsLoginScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get deviceHasBeenRemoved => 'ឧបករណ៍នេះត្រូវបានដកចេញ';
}

// Path: errors
class _TranslationsErrorsKm extends _TranslationsErrorsEn {
	_TranslationsErrorsKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get canNotSMSServer => 'មិនអាចភ្ជាប់ទៅម៉ាស៊ីនមេសារជាដៃសម្រាប់អ៊ីមែលបានទេ សូមព្យាយាមម្តងទៀតក្រោយមក';
	@override String get deviceHasBeenUnregistered => 'ឧបករណ៍នេះមិនត្រូវបានចុះឈ្មោះទេ សូមចូលម្តងទៀតដើម្បីចុះឈ្មោះឧបករណ៍នេះ';
	@override String get emptyPhoneNumber => 'សូមបញ្ចូលលេខទូរស័ព្ទ';
	@override String get invalidPhoneNumber => 'សូមបញ្ចូលលេខទូរសព្ទដែលមានសុពលភាព';
	@override String get passwordFormatErrorMessage => 'ចំនួនពាក្យ​សម្ងាត់​ត្រូវ​មាន​យ៉ាង​ហោច​ណាស់ ៨ តួ ដោយ​គ្មាន​ចន្លោះ';
	@override String get confirmPasswordNotMatch => 'ពាក្យសម្ងាត់ដែលបានបញ្ជាក់មិនត្រូវគ្នា';
	@override String get passcodeMismatch => 'លេខសម្ងាត់មិនត្រូវគ្នា។ សូមប្រាកដថាលេខកូដសម្ងាត់ដែលបានបញ្ជាក់ត្រូវនឹងលេខកូដដែលអ្នកបានបញ្ចូលមុននេះ។';
	@override String get accessLockedError => 'ការចូលប្រើរបស់អ្នកត្រូវបានបិទដំណើរការជាបណ្តោះអាសន្ន។ ដើម្បីទទួលបានការចូលប្រើឡើងវិញ សូមទាក់ទងមកយើងខ្ញុំតាមរយៈខ្សែទូរសព្ទ៖';
	@override String get networkTryAgainMessage => 'មានបញ្ហាមួយចំនួនជាមួយការតភ្ជាប់ សូមព្យាយាមម្តងទៀត';
	@override String get accountLockedMessage => 'គណនីត្រូវបានចាក់សោជាបណ្តោះអាសន្ន';
	@override String get serverUnknownError => 'បញ្ហាប្រព័ន្ធម៉ាស៊ីនមេខាងក្នុង';
	@override String get serviceNotAvailable => 'សេវាកម្មមិនអាចប្រើបានទេ';
	@override String get noInternetAccess => 'អ៊ីនធឺណិតមិនដំណើរការ';
	@override String get notSupportedMobileProvider => 'មិនគាំទ្រអ្នកផ្តល់សេវាទូរសព្ទទេ';
	@override String get topupPhoneInvalid => 'ទម្រង់លេខទូរស័ព្ទមិនត្រឹមត្រូវ';
	@override String topupAmountInvalid({required Object min, required Object max}) => 'ចំនួនទឹកប្រាក់ត្រូវតែមានចន្លោះពី \$${min} ដល់ \$${max}';
	@override String get topupAmountNotAllowAccount => 'ការបញ្ចូលទឹកប្រាក់តាមទូរស័ព្ទមិនអនុញ្ញាតឱ្យប្រើគណនីប្រាក់រៀលទេ';
	@override String get notSupportUSDAccount => 'Not support USD Account​​  ​​​​​មិនគាំទ្រគណនី ដុល្លា';
	@override String get faceMatchingFailed => 'ការផ្ទៀងផ្ទាត់មុខបានបរាជ័យ';
	@override TextSpan accountLockedDescription({required InlineSpanBuilder phoneTap}) => TextSpan(children: [
		const TextSpan(text: 'លេខ​សម្ងាត់​មិន​ត្រឹមត្រូវ​បាន​បញ្ចូល ៥ ដង។ គណនីរបស់អ្នកត្រូវបានបិទជាបណ្តោះអាសន្នដោយសារហេតុផលសុវត្ថិភាព។ ដើម្បីទទួលបានការចូលប្រើឡើងវិញ សូមអញ្ជើញទៅកាន់សាខា ឬទាក់ទងតាមទូរសព្ទលេខ៖ '),
		phoneTap(''),
	]);
	@override String get temporarilyLockedHotline => 'គណនីរបស់អ្នកត្រូវបានបិទជាបណ្តោះអាសន្ន ដោយសារការផ្គូផ្គងផ្ទៃមុខ ៣ ដង មិនត្រឹមត្រូវ។ សូមព្យាយាមម្តងទៀតបន្ទាប់ពី ២៤ម៉ោង ឬទាក់ទងមកយើងតាមរយៈខ្សែទូរសព្ទ';
	@override String get fail => 'បរាជ័យ';
	@override String get pleaseUpdateTimeSettings => 'សូមអាប់ដេតពេលវេលានៅក្នុងការកំណត់។';
	@override String get pleaseTryAgain => 'សូមព្យាយាមម្តងទៀត';
	@override String get cannotVerifyConfirmation => 'មិនអាចផ្ទៀងផ្ទាត់ការបញ្ជាក់របស់អ្នកបានទេ';
	@override String get youHaveRejected => 'អ្នកបានបដិសេធការផ្លាស់ប្តូរទៅ iBank';
	@override String get movingRejected => 'ការផ្លាស់ប្តូរត្រូវបានបដិសេធ';
	@override String get onlyMakeRequest => 'អ្នកអាចធ្វើការស្នើសុំនេះបាន 2 ដងក្នុងមួយថ្ងៃ សូមរង់ចាំ 24 ម៉ោងដើម្បីសាកល្បងម្តងទៀត';
	@override String get serviceDisruptionTitle => 'ការរអាក់រអួលសេវាកម្មបណ្តោះអាសន្ន';
	@override String get serviceDisruptionMessage => 'យើងសូមអភ័យទោសចំពោះភាពរអាក់រអួល។ សូម​ព្យាយាម​ម្តង​ទៀត​នៅ​ពេល​ក្រោយ';
	@override String get pleaseTryAgainAfter => 'សូមព្យាយាមម្តងទៀតបន្ទាប់ពី ២៤ ម៉ោង ឬទាក់ទងមកយើងតាមរយៈខ្សែទូរសព្ទ';
	@override String get timeOutTitle => 'អស់រយៈពេល';
	@override String get timeOutMessage => 'ពេលវេលា​របស់​អ្នក​ត្រូវ​បាន​អស់។ ដោយសារហេតុផលសុវត្ថិភាព សូមចូលម្តងទៀត';
	@override String get internetErrorTitle => 'ការភ្ជាប់អ៊ីនធឺណិតមិនដំណើរការ';
	@override String get internetErrorMessage => 'ការភ្ជាប់អ៊ីនធឺណិតរបស់អ្នកមិនដំណើរការ។ សូមពិនិត្យមើលការភ្ជាប់ Wi-Fi ឬទិន្នន័យអ៊ីនធឺណិតទូរសព្ទរបស់អ្នក';
	@override String balanceInsufficient({required Object balance, required Object otherCurrency}) => 'សមតុល្យដែលមានរបស់អ្នកគឺ ${balance} ឬសមមូលក្នុង ${otherCurrency}';
	@override String get loginFailed => 'ការចូលប្រើបានបរាជ័យ';
	@override String get wrongOTP => 'OTP មិនត្រឹមត្រូវ';
	@override String get missUserName => 'មិនមានឈ្មោះអ្នកប្រើប្រាស់';
	@override String get userNotFound => 'រកមិនឃើញអ្នកប្រើប្រាស់ទេ';
	@override String get passInvalid => 'ពាក្យសម្ងាត់មិនត្រឹមត្រូវ';
	@override String get userIsDisabled => 'គណនីអ្នកប្រើត្រូវបានផ្ដាច់';
	@override String get wrongPasscode => 'លេខកូដសម្ងាត់មិនត្រឹមត្រូវ';
	@override String get otpReachLimit => 'OTP បានល់ើសការកំណត់';
	@override String get loginExpire => 'ការចូលផុតកំណត់';
	@override String get logginError => 'កំហុសក្នុងការចូលប្រើប្រាស់';
	@override String get deviceNotFound => 'មិនអាចរកឃើញឧបករណ៍';
	@override String get internalServerError => 'កំហុសម៉ាស៊ីនមេខាងក្នុង';
	@override String get confirmationExpired => 'ការបញ្ជាក់បានផុតកំណត់';
	@override String get invalidSingedData => 'ទិន្នន័យមិនត្រឹមត្រូវ';
	@override String get invalidEmail => 'អ៊ីមែលមិនត្រឹមត្រូវ';
	@override String get invalidIdCard => 'កាតសម្គាល់មិនត្រឹមត្រូវ';
	@override String get invalidPasscode => 'លេខសម្ងាត់មិនត្រឹមត្រូវ';
	@override String get confirmPassNotmatch => 'ការបញ្ជាក់ពាក្យសម្ងាត់មិនត្រឹមត្រូវ';
	@override String get enrollBiometricsSettings => 'សូមចុះឈ្មោះទិន្នន័យជីវមាត្ររបស់អ្នកនៅក្នុងការកំណត់ឧបករណ៍របស់អ្នកដើម្បីបន្ត។';
	@override String get biometricsNotEnrolled => 'តម្រូវឲ្យដាក់ទិន្នន័យជីវមាត្រ';
	@override String get openSettings => 'បើកការកំណត់';
	@override String get notification => 'ការជូនដំណឹង';
	@override String inforNotification({required Object type}) => 'ការចូល Face ID ត្រូវបានផ្ដាច់ដោយសារតែការផ្លាស់ប្តូររបស់អ្នកក្នុងការចុះឈ្មោះលេខសម្គាល់ ${type} របស់ឧបករណ៍។';
	@override String get face => 'មុខ';
	@override String get touch => 'ប៉ះ';
	@override String get jailbreakAppErrorMessage => 'ឧបករណ៍របស់អ្នកគឺ root ឬ jailBroken!';
	@override String get requestTookTooLongToProcess => 'សំណើចំណាយពេលយូរទៅដល់ដំណើរការ';
	@override String get contentRequestTookToLongTime => 'អ្នកអាចសាកល្បងម្ដងទៀត ឬបិទកម្មវិធីហើយបើកវាម្តងទៀត។ សូមប្រាកដថាអ្នកពិនិត្យការតភ្ជាប់អ៊ីនធឺណិតរបស់អ្នក ដើម្បីប្រាកដថាអ្នកកំពុងអ៊ិនធឺណិត';
}

// Path: biometric
class _TranslationsBiometricKm extends _TranslationsBiometricEn {
	_TranslationsBiometricKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get touch => 'ស្នាមម្រាមដៃ';
	@override String get face => 'FaceID';
}

// Path: moveScreen
class _TranslationsMoveScreenKm extends _TranslationsMoveScreenEn {
	_TranslationsMoveScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get iHaveConfirmedMove => 'ខ្ញុំបានបញ្ជាក់ក្នុងការផ្លាស់ប្តូរ';
	@override String get move => 'ផ្លាស់ប្តូរ';
	@override String get pleaseInformed => 'សូមជម្រាបជូនថាអក្ននឹងត្រូវលុបចេញពី BIC Mobile បន្ទាប់ពីការផ្លាស់ប្តូរទៅ iBank. សូមចូលទៅ BIC Mobile ដើម្បីបញ្ជាក់សកម្មភាពរបស់អ្នក. អ្នកអាចធ្វើសំណើនេះបាន 2 ដងក្នុងមួយថ្ងៃ.';
	@override String get confirmMovingIBank => 'បញ្ជាក់ក្នុងការផ្លាស់ប្តូរទៅ iBank';
	@override String get youMovingFrom => 'អ្នកកំពុងផ្លាស់ប្តូរពី BIC Mobile ទៅ iBank';
	@override String get pleaseTapBICMobile => 'សូមចុចលើសារជូនដំណឹងរបស់ BIC Mobile ដើម្បីបញ្ជាក់ពីសកម្មភាពរបស់អ្នក';
	@override String get userGuide => 'ការណែនាំ';
	@override String get yourBICMobileAccountWill => 'គណនី BIC Mobile របស់អ្នកនឹងត្រូវបានបិទដំណើរការនៅពេលផ្ទេរទៅកម្មវិធី iBank ។';
	@override String get userGuideMovingIBank => 'សូមមើលកាតណែនាំដើម្បីផ្លាស់ប្តូរទៅ iBnak';
	@override String get doesThisFunctionWork => 'តើមុខងារនេះដំណើរការយ៉ាងដូចម្តេច?';
	@override String get step1ClickConfirm => 'ជំហានទី 1: ចុច "ផ្លាស់ទី" នៅលើ បញ្ជាក់ការផ្លាស់ទីទៅអេក្រង់ iBank';
	@override String get step2TapNotification => 'ជំហានទី 2៖ ចុចលើការជូនដំណឹងលើ BIC Mobile ដើម្បីបញ្ជាក់ការផ្លាស់ទៅ iBank';
	@override String get tapTheNotification => 'ចុចលើការជូនដំណឹង';
	@override String get step3BackIBank => 'ជំហានទី 3៖ ត្រឡប់ទៅកម្មវិធី iBank ហើយបន្តដំណើរការផ្ទៀងផ្ទាត់អត្តសញ្ញាណ';
	@override String get step4SetUpPasscode => 'ជំហានទី 4៖ ដាក់លេខសម្ងាត់ថ្មី ហើយបញ្ចប់។';
	@override String get shouldCannotReceive => 'តើខ្ញុំគួរធ្វើដូចម្តេចប្រសិនបើខ្ញុំមិនអាចទទួលបានការជូនដំណឹងនៅលើកម្មវិធី BIC Mobile?';
	@override String get update1BIC => '1. ធ្វើបច្ចុប្បន្នភាព BIC Mobile របស់អ្នកទៅជំនាន់ចុងក្រោយបំផុត។';
	@override String get please2DeviceSettings => '2. សូមពិនិត្យមើលការកំណត់ឧបករណ៍របស់អ្នក អ្នកត្រូវអនុញ្ញាតឱ្យ BIC Mobile ផ្ញើការជូនដំណឹង។';
	@override String get above3Word => '3. ប្រសិនបើចំនុចខាងលើមិនដំណើរទេ អ្នកប្រហែលជាត្រូវលុបកម្មវិធី BIC Mobile ហើយដំឡើងវាម្តងទៀតនៅលើឧបករណ៍របស់អ្នក។ សូមអនុញ្ញាតឱ្យ BIC Mobile ផ្ញើការជូនដំណឹង ហើយសាកល្បងដំណើរការផ្លាស់ទីម្តងទៀត។';
}

// Path: login
class _TranslationsLoginKm extends _TranslationsLoginEn {
	_TranslationsLoginKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'ចូលគណនី';
	@override String get welcomeBack => 'សូមស្វាគមន៍មកវិញ';
	@override String get forgotPassword => 'ភ្លេចលេខសម្ងាត់?';
	@override String get button => 'បន្ទាប់';
	@override String get tranfer => 'ផ្ទេរ';
	@override String get qrCode => 'QR កូដ';
	@override List<String> get bottomFunc => [
		'ទីតាំង',
		'អត្រាប្តូរប្រាក់',
		'សំណួរញឹកញាប់',
		'ជំនួយ',
	];
}

// Path: home
class _TranslationsHomeKm extends _TranslationsHomeEn {
	_TranslationsHomeKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get backAgainToExit => 'ចុចប៊ូតុង “ថយក្រោយ” ម្តងទៀតដើម្បីចេញ';
	@override String get allAccounts => 'គណនីទាំងអស់';
	@override String get supports => 'ជំនួយ';
	@override String get accountDetails => 'ព័ត៌មានលម្អិតពីគណនី';
	@override String get availableCreditLimit => 'កម្រិតកំណត់ឥណទានដែលមាន';
	@override String get creditLimit => 'កម្រិតកំណត់ឥណទាន';
	@override String get cardManagement => 'ការគ្រប់គ្រងកាត';
	@override String get lock => 'បិទដំណើរការ';
	@override String get youHaveSomeTasksToDo => 'អ្នកមានកិច្ចការមួយចំនួនត្រូវធ្វើ';
	@override String get favorites => 'ចំណង់ចំណូលចិត្ត';
	@override String get applyForACreditCardWithUnlimitedBenefits => 'ដាក់ស្នើកាតឥណទានជាមួយអត្ថប្រយោជន៍គ្មានដែនកំណត់';
	@override String get iBankBusiness => 'iBank Business';
	@override String get streamlinesFinacialManagementForYourBussiness => 'ធ្វើឱ្យការគ្រប់គ្រងហិរញ្ញវត្ថុសម្រាប់អាជីវកម្មរបស់អ្នកមានប្រសិទ្ធភាព';
	@override String get activity => 'សកម្មភាព';
	@override String get support => 'ជំនួយ';
	@override String get ourCustomerServiceHotlineIsAvailable247ReadyToAssistYou => 'ខ្សែទូរសព្ទផ្នែកសេវាអតិថិជនរបស់យើងគឺអាចទាក់ទងបាន ២៤/៧ និងត្រៀមខ្លួនជាស្រេចដើម្បីជួយអ្នក។';
	@override String get hotline => 'ខ្សែទូរសព្ទ​';
	@override String get email => 'សារអេឡិចត្រូនិក';
	@override String get request => 'ស្នើសុំ';
	@override String get title => 'ទំព័រដើម';
	@override String get newTransfer => 'ផ្ទេរប្រាក់ថ្មី';
	@override String get mobileTopUp => 'បញ្ចូលប្រាក់ទូរសព្ទ';
	@override String get linkEWallet => 'ភ្ជាប់កាបូបអេឡិចត្រូនិក';
	@override String get atmWithdrawal => 'ដកប្រាក់ ATM';
	@override String get billPayment => 'ទូទាត់វិក្កយបត្រ';
	@override String get editFavorites => 'កែសម្រួលចំណូលចិត្ត';
	@override String get cardList => 'បញ្ជីកាត';
	@override String get cardDetail => 'ព័ត៌មានលម្អិតរបស់កាត';
	@override String get expiry => 'ផុតកំណត់';
	@override String get shareAccountText => 'សួស្តី! សូមស្វែងរកព័ត៌មានលម្អិតគណនី iBank របស់ខ្ញុំខាងក្រោម៖ ';
	@override String get accountName => 'ឈ្មោះគណនី';
	@override String get accountNumber => 'លេខគណនី';
	@override String get copyAccountNumber => 'ចម្លងលេខគណនី';
	@override String get shareViaSocialMedia => 'ចែករំលែកតាមបណ្ដាញសង្គម';
	@override String get downloadAccountQRCode => 'ទាញយកQRកូតគណនី';
	@override String get copied => 'ចម្លង​';
	@override String get used => 'បានប្រើ';
	@override String get yourFavoriteFunctions => 'មុខងារដែលអ្នកចូលចិត្ត';
	@override String get functionList => 'បញ្ជីមុខងារ';
	@override String get pleaseSelectUpTo8FunctionsFromTheListBelow => 'សូមជ្រើសរើសមុខងាររហូតដល់ 8 ពីបញ្ជីខាងក្រោម';
	@override String get savedFavoritesSuccessfully => 'បានរក្សាទុកក្នុងចំណូលចិត្តដោយជោគជ័យ';
	@override String get saveChanges => 'រក្សាទុកការផ្លាស់ប្តូរ?';
	@override String get doYouWantToSaveTheChangeYouMade => 'តើអ្នកចង់រក្សាទុកការផ្លាស់ប្តូរដែលអ្នកបានធ្វើទេ?';
	@override String get introducingNewFeatures => 'ណែនាំមុខងារថ្មី';
	@override String get internationalTransferRightOnibank => 'ការផ្ទេរអន្តរជាតិត្រង់លើ iBank';
	@override String get addCardToGpay => 'បន្ថែមកាតទៅ GPay';
	@override String get setupNow => 'កំណត់ឥឡូវនេះ';
	@override String get homeContinue => 'បន្ត';
	@override String get youDontHaveAnyCard => 'អ្នកមិនមានកាតណាមួយទេ';
}

// Path: asset
class _TranslationsAssetKm extends _TranslationsAssetEn {
	_TranslationsAssetKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get viewCard => 'មើលកាត';
	@override String get viewlistCard => 'មើលកាតបញ្ជី';
	@override String get closeCard => 'បិទកាត';
	@override String get closeCardDescription => 'សកម្មភាពនេះមិនអាចត្រឡប់វិញបានទេ។ អ្នកនឹងមិនអាចប្រើកាតនេះបានទៀតទេ';
	@override String get lost => 'បាត់';
	@override String get stolen => 'លួច';
	@override String get damage => 'ខូចខាត';
	@override String get fraudulent => 'ការបោកប្រាស់';
	@override String get otherReason => 'ហេតុផលផ្សេងទៀត';
	@override String get otherReasonHint => 'បញ្ចូលហេតុផលនៅទីនេះ';
	@override String closeCardReviewDescription({required Object cardType}) => 'អ្នកនឹងបិទ ${cardType}';
	@override String get cardholderName => 'ឈ្មោះអ្នកកាន់កាត';
	@override String get linkedAccount => 'គណនីដែលភ្ជាប់';
	@override String get purposeOfClosing => 'គោលបំណងនៃការបិទ';
	@override String get closeCardReviewWarning => 'បន្ទាប់ពីអ្នកបិទកាត អ្នកនឹងមិនអាចធ្វើប្រតិបត្តិការណាមួយបានទេ និងប្រតិបត្តិការទាំងអស់ដែលបានធ្វើក្រោមកាតនេះនឹងបាត់រលាយ។';
	@override String get closeCardSuccessful => 'បិទកាតដោយជោគជ័យ';
	@override String get renameCard => 'ប្ដូរឈ្មោះកាត';
	@override String get cardName => 'ឈ្មោះកាត';
	@override String get cardNickname => 'ឈ្មោះហៅក្រៅកាត';
	@override String get renameCardSuccessDescription => 'ការកំណត់ដែនកំណត់កាតត្រូវបានធ្វើបច្ចុប្បន្នភាពដោយជោគជ័យ។';
	@override String get cardLimitSettingSuccessDescription => 'ការកំណត់ដែនកំណត់កាតត្រូវបានធ្វើបច្ចុប្បន្នភាពដោយជោគជ័យ។';
	@override String get linkAccount => 'ភ្ជាប់គណនី';
	@override String get unlockCardSuccessful => 'បើកដំណើរការកាតជោគជ័យ';
	@override String get estimatedInterest => 'ការប្រាក់ប៉ាន់ស្មាន';
	@override String get lockCardSuccessful => 'បិទដំណើរការការតបានជោគជ័យ';
	@override String get updateEmailAddress => 'ធ្វើបច្ចុប្បន្នភាពអាសយដ្ឋានអ៊ីមែល';
	@override String get updateEmailAddressDecs => 'សូមអាប់ដេតអ៊ីមែលរបស់អ្នកនៅក្នុងការកំណត់ទម្រង់ ដើម្បីទទួលបានរបាយការណ៍គណនីតាមរយៈអ៊ីមែល';
	@override List<String> get changePincodeSteps => [
		'លេខសម្ងាត់បច្ចុប្បន្ន',
		'លេខសម្ងាត់ថ្មី',
		'បញ្ជាក់លេខសម្ងាត់ថ្មី',
	];
	@override String get changeCardPin => 'ប្តូរលេខសម្ងាត់កាត';
	@override String get changeCardPinNote => 'ពិចារណាដើម្បីជៀសវាងការប្រើលេខសម្ងាត់ដែលងាយនឹងសន្និដ្ឋាន';
	@override String get changeCardPinSuccessfully => 'ប្តូរលេខសម្ងាត់កាតដោយជោគជ័យ!';
	@override String get confirmPincodeError => 'លេខសម្ងាត់មិនត្រឹមត្រូវទេ។ សូមព្យាយាមម្ដងទៀត!';
	@override late final _TranslationsAssetGPayKm gPay = _TranslationsAssetGPayKm._(_root);
	@override String get titleNavigation => 'គណនី និងកាត';
	@override String get titleTab => 'គណនី';
	@override String get card => 'កាត';
	@override String get saving => 'សន្សំ';
	@override String get openDate => 'កាលបរិច្ឆេទបើក';
	@override String get earlyClosureInterest => 'អត្រាការប្រាក់ការបិទមុន';
	@override String get earlyClosureInterestAmount => 'ចំនួនទឹកប្រាក់ការប្រាក់នៃការបិទមុន';
	@override String get tax => 'ពន្ធ';
	@override String get principalAmount => 'ចំនួនទឹកប្រាក់ដើម';
	@override String get thisMightEffect => 'The value may vary depending on the system, the number is for reference only.';
	@override String get loan => 'ប្រាក់កម្ចី';
	@override String get depositAccountProcessingNoteDesc => 'គណនីប្រាក់បញ្ញើមានកាលកំណត់របស់អ្នកកំពុងត្រូវបានដំណើរការ ហើយនឹងមានសម្រាប់មើលក្នុងពេលបន្តិចទៀតនេះ។ សូមពិនិត្យមើលម្តងទៀតក្នុងពេលឆាប់ៗនេះ។';
	@override String get deposit => 'ដាក់ប្រាក់';
	@override String get collectTotalInterestAmount => 'ប្រមូលចំនួនការប្រាក់សរុបដែលបានទទួល (រួមទាំងពន្ធ)';
}

// Path: qrCode
class _TranslationsQrCodeKm extends _TranslationsQrCodeEn {
	_TranslationsQrCodeKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'QR';
	@override String get scanQR => 'ស្កេន QR';
	@override String get alignFrameWithQRCode => 'តម្រឹមស៊ុមជាមួយ QR កូដ';
	@override String get uploadQR => 'បង្ហោះ QR';
	@override String get flash => 'ពិល';
	@override String get myQR => 'QR របស់ខ្ញុំ';
	@override String get unsupportedQrCode => 'QR កូដមិនដំណើរការ';
	@override String get noPermissionCameraTitle => 'គ្មានការអនុញ្ញាត';
	@override String get cameraNoPermission => 'ដើម្បីស្កេន QR សូមអនុញ្ញាតឲ្យ iBank ចូលប្រើកាមេរ៉ារបស់អ្នក។';
	@override String get noPermissionLibrary => 'ដើម្បីអាប់ឡូត QR សូមអនុញ្ញាតឲ្យ iBank ចូលប្រើបណ្ណាល័យរូបថតរបស់អ្នក។';
}

// Path: loyalty
class _TranslationsLoyaltyKm extends _TranslationsLoyaltyEn {
	_TranslationsLoyaltyKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get rewardDetails => 'ព័ត៌មានលម្អិតរង្វាន់';
	@override String get price => 'តម្លៃ';
	@override String get termsOfUse => 'ល័ក្ខខ័ណ្ឌនៃការប្រើប្រាស់';
	@override String get giftCollections => 'ការប្រមូលផ្ដុំអំណោយ';
	@override String get enterVoucherCode => 'បញ្ចូលលេខកូដប័ណ្ណ';
	@override String get title => 'សេចក្ដីស្មោះត្រង់';
	@override String get all => 'ទាំងអស់';
	@override String get topUp => 'បន្ថែម';
	@override String get billPayment => 'ការទូទាត់វិក្កយបត្រ';
	@override String get internationalTransfer => 'ការផ្ទេរអន្តរជាតិ';
	@override String get ncsTransfer => 'ការផ្ទេរ NCS';
	@override String get iBankReward => 'iBank រង្វាន់';
	@override String get silverMember => 'សមាជិកប្រាក់';
	@override String get iCoin => 'iCoin';
	@override String get memberPrivileges => 'អត្ថប្រយោជន៍សមាជិក';
	@override String get useNow => 'ប្រើឥឡូវនេះ';
	@override String get tracingCode => 'លេខកូដតាមដាន';
	@override String get value => 'តម្លៃ';
	@override String get validityPeriod => 'រយៈពេលមានសុពលភាព';
	@override String get rewardType => 'ប្រភេទរង្វាន់';
	@override String get redeemSuccessfully => 'ដោះលែងបានជោគជ័យ';
	@override String get historyActivity => 'សកម្មភាពប្រវត្តិ';
	@override String get dailyEarned => 'ចំណូលប្រចាំថ្ងៃ';
	@override String get weeklyEarned => 'ចំណូលប្រចាំសប្តាហ៍';
	@override String get monthlyEarned => 'ចំណូលប្រចាំខែ';
	@override String get expried => 'ផុតកំណត់';
	@override String get transactionID => 'លេខសម្គាល់ប្រតិបត្តិការ';
	@override String get processedDate => 'កាលបរិច្ឆេទដំណើរការ';
	@override String get transactionType => 'ប្រភេទប្រតិបត្តិការ';
	@override String get help => 'ជំនួយ';
}

// Path: product
class _TranslationsProductKm extends _TranslationsProductEn {
	_TranslationsProductKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'ផលិតផល';
	@override String get ourProducts => 'ផលិតផល​របស់យើង';
	@override String get homeLoanDesc => 'ជាមួយនឹងឥណទានគេហដ្ឋានរបស់ iBank ការធ្វើឱ្យសុបិនរបស់អ្នកក្លាយជាការពិតគឺងាយស្រួល';
	@override String get homeLoan => 'ឥណទានគេហដ្ឋាន';
	@override String get carLoan => 'ឥណទានរថយន្ត';
	@override String get carLoanDesc => 'អាចជួយអ្នកក្នុងការធ្វើជាម្ចាស់យានជំនិះផ្ទាល់ខ្លួនរបស់អ្នកជាមួយនឹងការទូទាត់ប្រចាំខែសមរម្យ។';
	@override String get creditCardDesc => 'សូមរីករាយជាមួយចំណាយដ៏ល្អជាមួយកាតឥណទានរបស់យើង។';
	@override String get lowInterestRates => 'អត្រាការប្រាក់ទាប';
	@override String get speedyApproval => 'ការអនុម័តយ៉ាងរហ័ស';
	@override String get flexibleLoanTermsRepayment => 'លក្ខខណ្ឌកម្ចីដែលអាចបត់បែនបាន និងការទូទាត់សង';
	@override String get homeLoanDesc1 => 'ចំនួនឥណទានរហូតដល់ 250,000 ដុល្លារអាមេរិក';
	@override String get homeLoanDesc2 => 'រយៈពេលឥណទានរហូតដល់ 20 ឆ្នាំ';
	@override String get homeLoanDesc3 => 'ការទូទាត់អាចបត់បែនបាន (ការបង់រំលោះ រំលោះដោយផ្នែក) ការទូទាត់សងគ្រាប់កាំភ្លើង';
	@override String get carLoanDesc1 => 'ចំនួនឥណទានរបស់អ្នកដល់ 70% នៃតម្លៃរថយន្ត';
	@override String get carLoanDesc2 => 'រយៈពេលឥណទាន៖ ៥ ឆ្នាំ';
	@override String get carLoanDesc3 => 'ការបង់រំលោះ៖ បង់រំលោះប្រចាំខែ';
	@override String get carLoanDesc4 => 'ស្នើសុំទិញរថយន្តថ្មីស្រឡាង ឬរថយន្តប្រើហើយដែលមានអាយុតិចជាង 10 ឆ្នាំ។';
	@override String get account => 'គណនី';
	@override String get save => 'រក្សាទុក';
	@override String get borrow => 'ខ្ចី';
}

// Path: verifyPasscodeScreen
class _TranslationsVerifyPasscodeScreenKm extends _TranslationsVerifyPasscodeScreenEn {
	_TranslationsVerifyPasscodeScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get passcode => 'លេខសម្ងាត់';
	@override String get pleaseEnterPasscode => 'សូមវាយលេខសម្ងាត់របស់អ្នក';
	@override String get wrongPasscode => 'លេខសម្ងាត់ខុស';
	@override String get yourAccountLocked => 'គណនីរបស់អ្នកត្រូវបានចាក់សោ';
	@override String get yourAccountIsTemporarilyLocked => 'ប្រូហ្វាលរបស់អ្នកត្រូវបានចាក់សោរជាបណ្តោះអាសន្នដោយសារតែមានការសាកល្បងផ្ទៀងផ្ទាត់ច្រើនពេក ដែលមិនត្រឹមត្រូវ។ សូមទាក់ទងមកមជ្ឈមណ្ឌលទំនាក់ទំនង ឬចូលមកសាខាមួយ ដើម្បីទទួលបានជំនួយ។.';
}

// Path: language
class _TranslationsLanguageKm extends _TranslationsLanguageEn {
	_TranslationsLanguageKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get english => 'អង់គ្លេស';
	@override String get khmer => 'ខ្មែរ';
	@override String get chinese => 'ចិន';
	@override String get title => 'ភាសា';
	@override String get englishShort => 'អង់គ្លេស';
	@override String get khmerShort => 'ខ្មែរ';
	@override String get chineseShort => 'ចិន';
}

// Path: welcomeScreen
class _TranslationsWelcomeScreenKm extends _TranslationsWelcomeScreenEn {
	_TranslationsWelcomeScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'សូមស្វាគមន៍មកកាន់ធនាគារ iBank';
	@override String get subtitle => 'ត្រៀមខ្លួនទទួលយកបទពិសោធន៍នៃការគ្រប់គ្រងហិរញ្ញវត្ថុដ៏រលូននៅចុងម្រាមដៃរបស់អ្នក';
	@override String get buttonTitle => 'តោះ​ទៅ';
	@override String get login => 'ចូលគណនី';
	@override String get financialOverview => 'ទិដ្ឋភាពទូទៅហិរញ្ញវត្ថុ';
	@override String get signup => 'ចុះឈ្មោះ';
	@override String get manageYourCardInApp => 'គ្រប់គ្រងកាតរបស់អ្នកនៅក្នុងកម្មវិធី';
	@override String get openFixedDepositOnline => 'បើកប្រាក់បញ្ញើមានកាលកំណត់តាមអ៊ីនធឺណិត';
}

// Path: notification
class _TranslationsNotificationKm extends _TranslationsNotificationEn {
	_TranslationsNotificationKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'ការជូនដំណឹង';
	@override String get noData => 'គ្មានការជូនដំណឹង';
	@override String get notificationPermissionDesc => 'ដើម្បីទទួលបានការជូនដំណឹង សូមអនុញ្ញាត iBank ចូលទៅកាន់ការជូនដំណឹងរបស់អ្នក';
	@override String get tabBalance => 'សមតុល្យ';
	@override String get tabInbox => 'ប្រអប់សារ';
	@override String get tabPromotion => 'ការផ្សព្វផ្សាយ';
	@override String get actions => 'សកម្មភាពនានា';
	@override String get deleteNotifyTitle => 'លុបសារជូនដំណឹង';
	@override String get deleteNotifyContent => 'តើអ្នកប្រាកដទេថា អ្នកចង់លុបការជូនដំណឹងនេះ?';
	@override String get makeRead => 'សម្គាល់ថាបានអាន';
	@override String get deleteNotify => 'លុប';
	@override String get no => 'ទេ';
	@override String get yes => 'បាទ/ចាស';
	@override String get showUnread => 'បង្ហាញថាមិនទាន់បានអានតែប៉ុណ្ណោះ';
	@override String get deleteSuccess => 'ដំណឹងទាំងអស់ត្រូវបានលុប';
	@override String get today => 'ថ្ងៃនេះ';
	@override String get yesterday => 'មិ្សលមិញ';
	@override String get readAllNotificontent => 'តើអ្នកចង់សម្គាល់ដំណឹងអស់ថាបានអាន?';
	@override String get cancel => 'បោះបង់';
	@override String get agree => 'យល់ព្រម';
	@override String get readAll => 'អានទាំងអស់';
	@override String get fromAccount => 'ពីគណនី';
	@override String get toAccount => 'ទៅគណនី';
	@override String get toAccountName => 'ទៅឈ្មោះគណនី';
	@override String get transactionTime => 'ពេលវេលាប្រតិបត្តិការ';
	@override String get tracingCode => 'លេខកូដតាមដាន';
	@override String get description => 'ពិពណ៌នា';
}

// Path: verifyNumberPhoneScreen
class _TranslationsVerifyNumberPhoneScreenKm extends _TranslationsVerifyNumberPhoneScreenEn {
	_TranslationsVerifyNumberPhoneScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'លេខទូរសព្ទរបស់អ្នក';
	@override String get subtitle => 'សូមបញ្ចូលលេខទូរសព្ទរបស់អ្នក';
	@override String get referralCodeTitle => 'កូដយោង';
	@override String get conditionWarning => 'ចុច បន្ទាប់ អ្នកយល់ព្រមនឹងលក្ខខណ្ឌបើកគណនីឌីជីថលធនាគារ iBank។';
	@override String get termsAndConditions => 'ខចែង និងលក្ខខណ្ឌ';
	@override String get unregisteredPhoneNumber => 'លេខទូរសព្ទមិនទាន់ចុះក្នុងបញ្ជី';
	@override String get thePhoneNumberSignFirst => 'លេខទូរសព្ទមិនត្រូវបានចុះក្នុងបញ្ជី។ សូម ចុះឈ្មោះជាមុន';
	@override String get cancel => 'បោះបង់';
	@override String get signUp => 'ចុះឈ្មោះ';
	@override String get login => 'ចូលគណនី';
	@override String get phoneAlreadyExists => 'លេខទូរសព្ទមានរួចហើយ';
	@override String get loginPhoneNumber => 'អ្នកអាចចូលដោយប្រើប្រាស់លេខទូរសព្ទនេះ';
	@override String get selectCountry => 'ជ្រើសប្រទេស';
}

// Path: verifyOTPScreen
class _TranslationsVerifyOTPScreenKm extends _TranslationsVerifyOTPScreenEn {
	_TranslationsVerifyOTPScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'បញ្ចូលលេខ OTP';
	@override String subtitle({required Object phone}) => 'សូមបញ្ចូលលេខ OTPដែលបានផ្ញើរទៅកាន់លេខទូរស័ព្ទដៃរបស់លោកអ្នក ${phone}';
	@override String subtitleEmail({required Object email}) => 'សូមបញ្ចូល OTP ដែលបានផ្ញើទៅអ៊ីមែល ${email} របស់អ្នក';
	@override String get resendOTP => 'ផ្ញើរលេខOTPម្តងទៀត';
	@override String get resendOTPAgain => 'លេខOTPអាចនឹងធ្វើការផ្ញើរម្តងទៀតបាននៅក្នុង';
	@override String get otpAttemptsExceeded => 'ការព្យាយាម OTP លើសពីដែនកំណត់។ សូមព្យាយាមម្តងទៀតបន្ទាប់ពី 30 នាទី។';
}

// Path: eKYCIntroScreen
class _TranslationsEKYCIntroScreenKm extends _TranslationsEKYCIntroScreenEn {
	_TranslationsEKYCIntroScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get passportPhotoTitle => 'ថតរូបលិខិតឆ្លងដែន';
	@override String get idCardPhotoTitle => 'ថតរូបអត្តសញ្ញាណបណ្ណ';
	@override String get passportSubtitle => 'សូម ប្រាកដថាអ្នកមានលិខិតឆ្លងដែនរបស់អ្នករួចរាល់សម្រាប់ការថតរូប';
	@override String get idCardSubtitle => 'សូម ប្រាកដថាអ្នកមានអត្តសញ្ញាណបណ្ណរបស់អ្នករួចរាល់សម្រាប់ការថតរូប';
	@override String get tipsTitle => 'គន្លឹះ';
	@override String get passportTipsDescription1 => 'ដាក់ក្រដាសមួយនៅពីលើលិខិតឆ្លងដែន ដើម្បីជៀសវាងការចាំងពន្លឺ';
	@override String get passportTipsDescription2 => 'រំកិលទូរសព្ទរបស់អ្នកយឺតៗទៅជិត និងឆ្ងាយពីលិខិតឆ្លងដែន រហូតទាល់តែអ្នកឃើញស៊ុមពណ៌បៃតង';
	@override String get idCardTipsDescription1 => 'ដាក់ក្រដាសមួយនៅពីលើអត្តសញ្ញាណប័ណ្ណ ដើម្បីជៀសវាងការចាំងពន្លឺ';
	@override String get idCardTipsDescription2 => 'ដាក់ក្រដាសមួយនៅពីលើអត្តសញ្ញាណប័ណ្ណ ដើម្បីជៀសវាងការចាំងពន្លឺ';
	@override String get changeToIdCard => 'ប្តូរទៅអត្តសញ្ញាណបណ្ណ';
	@override String get changeToPassport => 'ប្តូរទៅលិខិតឆ្លងដែន';
}

// Path: identificationVerifyIntroScreen
class _TranslationsIdentificationVerifyIntroScreenKm extends _TranslationsIdentificationVerifyIntroScreenEn {
	_TranslationsIdentificationVerifyIntroScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'ការផ្ទៀងផ្ទាត់អត្តសញ្ញាណ';
	@override String get subtitle => 'យើងនឹងថតរូបអ្នកមួយចំនួន។ សូមប្រាកដថាអ្នកបានអានការណែនាំទាំងអស់មុននឹងចាប់ផ្តើម';
	@override String get headDescription => 'សូមដាក់មុខ និងចង្ការរបស់អ្នកនៅក្នុងរង្វង់';
	@override String get ensureLightDescription => 'សូមប្រាកដថាពន្លឺមិនងងឹត ឬភ្លឺពេក';
	@override String get assetsDescription => 'សូមកុំពាក់វ៉ែនតា និងមួក';
}

// Path: personalInformation
class _TranslationsPersonalInformationKm extends _TranslationsPersonalInformationEn {
	_TranslationsPersonalInformationKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'ព័ត៌មានផ្ទាល់ខ្លួន';
	@override String get subtitle => 'តាមការកំណត់ដោយច្បាប់ យើងត្រូវការប្រមូលព័ត៌មានផ្ទាល់ខ្លួនរបស់អ្នក ដើម្បីបើកគណនីរបស់អ្នក។';
	@override String get fullName => 'ឈ្មោះពេញ';
	@override String get dob => 'ថ្ងៃ ខែ ឆ្នាំ កំណើត';
	@override String get gender => 'ភេទ';
	@override String get height => 'កម្ពស់';
	@override String get placeOfBirth => 'ទីកន្លែងកំណើត';
	@override String get permanentAddress => 'អសយដ្ឋានអចិន្ត្រៃយ៍';
	@override String get idOrPassportNumber => 'លេខអត្តសញ្ញាណបណ្ណ/លិខិតឆ្លងដែន';
	@override String get dateOfIssue => 'កាលបរិច្ឆេទចេញ';
	@override String get dateOfExpiry => 'កាលបរិច្ឆេទផុតកំណត់';
	@override String get currentAddress => 'អសយដ្ឋានបច្ចុប្បន្ន';
	@override String get cityOrProvince => 'ក្រុង/ខេត្ត';
	@override String get districtOrKhan => 'ស្រុក/ខណ្ឌ';
	@override String get communeOrSangkat => 'ឃុំ/សង្កាត់';
	@override String get village => 'ភូមិ';
	@override String get houseNo => 'ផ្ទះលេខ';
	@override String get streetNo => 'ផ្លូវលេខ';
	@override String get maritalStatus => 'ស្ថានភាពគ្រួសារ';
	@override String get occupation => 'មុខរបរ';
}

// Path: confirmEKycInformationScreen
class _TranslationsConfirmEKycInformationScreenKm extends _TranslationsConfirmEKycInformationScreenEn {
	_TranslationsConfirmEKycInformationScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'យើងត្រូវបានតម្រូវដោយច្បាប់ក្នុងការស្នើសុំព័ត៌មានឯកជនរបស់អ្នកដើម្បីបើកគណនីរបស់អ្នក';
	@override String get confirmInfomationTitle => 'បញ្ជាក់ព័ត៌មានរបស់អ្នក';
	@override String get sameAddressDescription => 'អាសយដ្ឋានបច្ចុប្បន្នរបស់ខ្ញុំគឺដូចគ្នាទៅនឹងអាសយដ្ឋានអចិន្ត្រៃយ៍';
	@override String get scanTitle => 'ស្កេនម្តងទៀត';
}

// Path: passwordCreateScreen
class _TranslationsPasswordCreateScreenKm extends _TranslationsPasswordCreateScreenEn {
	_TranslationsPasswordCreateScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'បង្កើតលេខសម្ងាត់';
	@override String get subtitle => 'សូមចងចាំលេខសម្ងាត់នេះក្នុងករណីត្រូវការផ្លាស់ប្តូរលេខសម្ងាត់ និងឧបករណ៍';
	@override String get passwordTitle => 'បង្កើតលេខសម្ងាត់';
	@override String get passwordHintText => 'បង្កើតលេខសម្ងាត់';
	@override String get confirmPasswordTitle => 'បញ្ជាក់លេខសម្ងាត់';
}

// Path: passcodeCreateScreen
class _TranslationsPasscodeCreateScreenKm extends _TranslationsPasscodeCreateScreenEn {
	_TranslationsPasscodeCreateScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'កំពុងបញ្ជូលលេខសម្ងាត់របស់អ្នក';
	@override String get subtitle => 'ចងចាំលេខសម្ងាត់នេះ ដើម្បីអនុញ្ញាតប្រតិបត្តិការ និងសម្រាប់ការចូលនាពេលអនាគត';
	@override String get invalidPasscodeError => 'លេខសម្ងាត់់មិនអាចប្រើបាន';
}

// Path: confirmPasscodeScreen
class _TranslationsConfirmPasscodeScreenKm extends _TranslationsConfirmPasscodeScreenEn {
	_TranslationsConfirmPasscodeScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'បញ្ជាក់លេខសម្ងាត់របស់អ្នក';
	@override String get subtitle => 'ចងចាំលេខសម្ងាត់នេះ ដើម្បីអនុញ្ញាតប្រតិបត្តិការ និងសម្រាប់ការចូលនាពេលអនាគត';
}

// Path: processingScreen
class _TranslationsProcessingScreenKm extends _TranslationsProcessingScreenEn {
	_TranslationsProcessingScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get identificationMessage => 'យើងកំពុងផ្ទៀងផ្ទាត់អត្តសញ្ញាណរបស់អ្នក';
	@override String incorrectPasscode({required Object count}) => 'លេខសម្ងាត់មិនត្រឹមត្រូវ (ការប៉ុនប៉ងនៅសល់ ${count})';
}

// Path: manualReviewScreen
class _TranslationsManualReviewScreenKm extends _TranslationsManualReviewScreenEn {
	_TranslationsManualReviewScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'តម្រូវឱ្យមានការត្រួតពិនិត្យ';
	@override String get subtitle => 'សូមរង់ចាំខណៈពេលដែលធនាគារផ្ទៀងផ្ទាត់ព័ត៌មានរបស់អ្នក។ អរគុណ​សម្រាប់​ការ​រងចាំរបស់​អ្នក!';
}

// Path: onboardingSuccessScreen
class _TranslationsOnboardingSuccessScreenKm extends _TranslationsOnboardingSuccessScreenEn {
	_TranslationsOnboardingSuccessScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'ការចុះឈ្មោះបានបញ្ចប់!';
	@override String get subtitle => 'គណនីសន្សំឌីជីថលរបស់អ្នកត្រូវបានបើកដោយជោគជ័យ។ សូមស្វាគមន៍មកកាន់ធនាគារ iBank!';
}

// Path: verificationProcessScreen
class _TranslationsVerificationProcessScreenKm extends _TranslationsVerificationProcessScreenEn {
	_TranslationsVerificationProcessScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'ដំណើរការផ្ទៀងផ្ទាត់';
	@override String get subtitle => 'ដំណើរការផ្ទៀងផ្ទាត់កំពុងចំណាយពេលយូរជាងការរំពឹងទុក។ អ្នកនឹងត្រូវបានជូនដំណឹងតាមអ៊ីមែល និងសារ SMS នៅពេលដែលវារួចរាល់';
}

// Path: updateEmailScreen
class _TranslationsUpdateEmailScreenKm extends _TranslationsUpdateEmailScreenEn {
	_TranslationsUpdateEmailScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get description => 'យើងនឹងធ្វើបច្ចុប្បន្នភាពជូនលោកអ្នកលើការផ្លាស់ប្តូរសំខាន់ៗ មុខងារ និងអត្ថប្រយោជន៍ថ្មីៗ';
}

// Path: updateOccupationScreen
class _TranslationsUpdateOccupationScreenKm extends _TranslationsUpdateOccupationScreenEn {
	_TranslationsUpdateOccupationScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'ជ្រើសរើសមុខរបររបស់អ្នកនៅទីនេះ';
	@override String get otherOccupationTitle => 'មុខរបរផ្សេងៗ';
}

// Path: registerBiometricScreen
class _TranslationsRegisterBiometricScreenKm extends _TranslationsRegisterBiometricScreenEn {
	_TranslationsRegisterBiometricScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get faceIdTitle => 'ចុះឈ្មោះ Face ID';
	@override String get touchIdTitle => 'ចុះឈ្មោះ Touch ID';
	@override String get faceIdSubTitle => 'Face ID​ អាចប្រើប្រាស់ដើម្បីចូល ឬអនុញ្ញាតប្រតិបត្តិការ';
	@override String get touchIdSubTitle => 'Touch ID​ អាចប្រើប្រាស់ដើម្បីចូល ឬអនុញ្ញាតប្រតិបត្តិការ';
	@override String get later => 'ពេលក្រោយ';
	@override String get deviceNotSupportBiometric => 'ឧបករណ៍របស់អ្នកមិនអាចប្រើប្រាស់ការផ្ទៀងផ្ទាត់ជីវមាត្រទេ (ស្នាមម្រាមដៃ ឬលេខសម្គាល់មុខ)';
	@override String get authenticationFailed => 'ការផ្ទៀងផ្ទាត់បរាជ័យ';
	@override String get done => 'រួចរាល់';
}

// Path: successScreen
class _TranslationsSuccessScreenKm extends _TranslationsSuccessScreenEn {
	_TranslationsSuccessScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'អបអរសាទរ';
	@override String get subtitle => 'គណនីធនាគារឌីជីថលរបស់អ្នកត្រូវបានដំណើរការដោយជោគជ័យនៅលើឧបករណ៍នេះ។ សូមស្វាគមន៍មកកាន់ iBank!';
	@override String get goHome => 'ទៅទំព័រដើម';
	@override String get registrationComplete => 'ការចុះឈ្មោះបានបញ្ចប់!';
	@override String get haveChangedPasscodeSuccessfully => 'អ្នកបានផ្លាស់ប្តូរលេខកូដសម្ងាត់ដោយជោគជ័យ';
	@override String get digitalBankingAccountActivated => 'គណនីធនាគារឌីជីថលរបស់អ្នកបានដំណើរការដោយជោគជ័យ។ សូមស្វាគមន៍មកកាន់ iBank!';
	@override String get updateSuccessfully => 'ធ្វើបច្ចុប្បន្នភាពដោយជោគជ័យ';
	@override String get youEnabledFaceIDTouchID => 'អ្នកបានបើក Face ID/Touch ID';
	@override String get youEnabledFaceID => 'អ្នកបានបើក Face ID';
	@override String get youEnabledTouchID => 'អ្នកបានបើក Touch ID';
	@override String get movingComplete => 'ការផ្លាស់ទីបានបញ្ចប់!';
	@override String get youHaveSuccessFylly => 'អ្នកបានផ្លាស់ទីទៅ iBank ដោយជោគជ័យ។ រីករាយនឹងការប្រើប្រាស់!';
	@override String get youDisableFaceIDTouchID => 'អ្នកបានបិទ Face ID/Touch ID';
	@override String get youDisableFaceID => 'អ្នកបានបិទ Face ID';
	@override String get youDisableTouchID => 'អ្នកបានបិទ Touch ID';
	@override String get updateFailPleaseTryAgain => 'ធ្វើបច្ចុប្បន្នភាពបរាជ័យ។ សូមព្យាយាមម្តងទៀត';
}

// Path: cardLimitSetting
class _TranslationsCardLimitSettingKm extends _TranslationsCardLimitSettingEn {
	_TranslationsCardLimitSettingKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'ការកំណត់ដែនកំណត់កាត';
	@override String get onlinePayment => 'ការទូទាត់តាមអនឡាញ';
	@override String get internationalPayment => 'ការទូទាត់អន្តរជាតិ';
	@override String get atmWithdrawal => 'ដកប្រាក់តាមម៉ាស៊ីនATM';
	@override String get posPayment => 'ការទូទាត់តាមម៉ាស៊ីនឆូតកាត';
	@override String get contactlessPayment => 'ការទូទាត់គ្មានការប៉ះផ្ទាល់';
	@override String get dailySpendingLimit => 'ដែនកំណត់ការចំណាយប្រចាំថ្ងៃ';
	@override String get enterAmount => 'បញ្ចូលចំនួនទឹកប្រាក់';
	@override String get numberOfPurchase => 'ចំនួនការបញ្ជាទិញ';
	@override String get transactions => 'ប្រតិបត្តិការ';
	@override String get cashWithdrawalDailyCountLimit => 'ដែនកំណត់នៃការដកប្រាក់ប្រចាំថ្ងៃ';
	@override String get enterRemark => 'បញ្ចូលការកត់សម្គាល់';
	@override String get maximum => 'អតិបរមា';
	@override String get times => 'ចំំនួនដង';
	@override String get apply => 'អនុវត្ត';
	@override String get dailySpendingLimitErrorMsg => 'ដែនកំណត់ចំណាយប្រចាំថ្ងៃមិនត្រឹមត្រូវទេ។';
	@override String get numberOfPurchaseErrorMsg => 'ចំនួននៃការទិញមិនត្រឹមត្រូវទេ។';
	@override String get cashWithdrawalDailyCountLimitErrorMsg => 'ដែនកំណត់នៃការដកសាច់ប្រាក់ប្រចាំថ្ងៃមិនមានសុពលភាពទេ។';
}

// Path: card
class _TranslationsCardKm extends _TranslationsCardEn {
	_TranslationsCardKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'កាត';
	@override String get cashFlow => 'លំហូរសាច់ប្រាក់';
	@override String get lockCard => 'បិទដំណើរការកាត';
	@override String get unlockCard => 'បើកដំណើរការកាត';
	@override String get history => 'ប្រវត្តិ';
	@override String get cardInfo => 'ព័ត៌មានកាត';
	@override String get statement => 'របាយការណ៍គណនី';
	@override String get activeCardSuccess => 'កាតដំណើរការជោគជ័យ';
	@override String get cardIsReady => 'កាតរបស់អ្នករួចរាល់សម្រាប់ប្រើប្រាស់';
	@override String get branches => 'សាខា';
	@override String get cardInformation => 'ព័ត៌មានកាត';
	@override String get cardName => 'ឈ្មោះកាត';
	@override String get cardNumber => 'លេខកាត';
	@override String get expiredDate => 'ថ្ងៃផុតកំណត់';
	@override String get cvv => 'CVV';
	@override String get locked => 'បិទដំំណើរការ';
	@override String get validThru => 'សុពលភាពរហូតដល់';
	@override String get pinCodeResetFee => 'ថ្លៃសេវាកំណត់ PIN កូដឡើងវិញ';
	@override String get openNewAccount => 'បើកគណនីថ្មី';
	@override String get linkAccount => 'ភ្ជាប់គណនី';
	@override String get sourceAccountNotAvailableTitle => 'ប្រភពគណនីមិនមាន';
	@override String get sourceAccountNotAvailableSubtitle => 'គ្មានគណនីប្រភពដើម្បីតភ្ជាប់';
	@override String get sourceAccountNotAvailableSubtitleWithoutThereAre => 'មិនមានគណនីដើម្បីតភ្ជាប់';
	@override String get confirmUnlockMessage => 'តើអ្នកប្រាកដទេថា អ្នកចង់បើកដំណើរការកាតនេះ?';
	@override String get confirmLockMessage => 'តើអ្នកប្រាកដទេថា អ្នកចង់បិទដំណើរការកាតនេះ?';
	@override String get unlockSuccess => 'បើកដំណើរការកាតជោគជ័យ';
	@override String get lockSuccess => 'បិទដំណើរការការតបានជោគជ័យ';
	@override String get lock => 'បិទដំណើរការ';
	@override String get activate => 'ដាក់ដំណើរការ';
	@override String get forgotPinTitle => 'ភ្លេចកូដ PIN កាត';
	@override String get unlock => 'បើកដំណើរការ';
	@override String get openNew => 'បើកថ្មី';
	@override String get creditCard => 'កាតឥណទាន';
	@override String get createCardPinCode => 'បង្កើត PIN កូដកាត';
	@override String get confirmCardPinCode => 'បញ្ជាក់ PIN កូដ';
	@override String get pleaseEnterThePinCodeYouJustCreated => 'សូម បញ្ចូល PIN កូដ ដែលអ្នកទើបបង្កើត';
	@override String get cardPinCode => 'PIN កូដកាត';
	@override String get setUpCardPinCode => 'កំណត់ PIN កូដ ដើម្បីធានាសុវត្ថិភាពសម្រាប់កាតរបស់អ្នក';
	@override String get pinCodeRemind => 'សូមជៀសវាងការប្រើប្រាស់ PIN ដដែលៗ ឬ PIN កូដងាយស្រួលទាយ';
	@override String get debitCard => 'កាតឥណពន្ធ';
	@override String get savings => 'សន្សំ';
	@override String get selectSourceAccount => 'ជ្រើសគណនីប្រភព';
	@override String get cardLimitsetting => 'កំណត់ដែនកំណត់កាត';
	@override String get forgotPin => 'ភ្លេច PIN?';
	@override String get changePin => 'ប្តូរ PIN';
	@override String get renameCard => 'ប្តូរឈ្មោះកាត';
	@override String get closeCard => 'បិទកាត';
	@override String get viewCard => 'ពិនិត្យកាត';
	@override String get cardType => 'ប្រភេទកាត';
	@override String get annualFee => 'ថ្លៃសេវាប្រចាំឆ្នាំ';
	@override String get createCardInProcess => 'ការបង្កើតកាតកំពុងដំណើរការ';
	@override String get createCardInProcessDescription => 'កាតនិម្មិត iBank របស់អ្នកកំពុងត្រូវបានបង្កើត ហើយនឹងរួចរាល់ក្នុងពេលឆាប់ៗនេះ';
	@override String get free => 'ឥតគិតថ្លៃ';
	@override String get issuingFee => 'ការចេញថ្លៃសេវា';
	@override String get createPaymentFailed => 'បង្កើតការទូទាត់បានបរាជ័យ';
	@override String get createPaymentFailedDescription => 'យើងមិនអាចបង្កើតការបង់ប្រាក់របស់អ្នកបានទេ។ សូមព្យាយាមម្តងទៀត ឬទាក់ទងមកយើងដើម្បីជាជំនួយ';
	@override String get createCardFailed => 'បង្កើតកាតបានបរាជ័យ';
	@override String get createCardFailedDescription => 'យើងមិនអាចបង្កើតកាតរបស់អ្នកបានទេ។ សូមព្យាយាមម្តងទៀត ឬទាក់ទងមកយើងដើម្បីជាជំនួយ';
	@override String get issuanceFee => 'ថ្លៃចេញ';
	@override String get createCardSuccessTitle => 'បង្កើតកាតដោយជោគជ័យ';
	@override String get createCardSuccessDescription => 'កាតឥណពន្ធនិម្មិតរបស់អ្នកត្រូវបានបង្កើតដោយជោគជ័យ';
	@override String get selectCard => 'ជ្រើសរើសកាត';
	@override String get iBankMasterCardClassic => 'ប័ណ្ណឥណពន្ធនិម្មិត iBank Mastercard';
	@override String get iBankMasterCardClassicSubtitle => 'លក្ខណៈពិសេសដែលអាចបត់បែនបាន បំពេញតម្រូវការទាំងអស់ដល់កម្រិតអតិបរមា។';
	@override String get detailsAndBenefits => 'ព័ត៌មានលម្អិត និងអត្ថប្រយោជន៍';
	@override String get iBankMasterCardClassicDescription1 => 'លើកលែងថ្លៃសេវាគ្រប់ប្រភេទ រួមមាន ថ្លៃចេញបណ្ណ ថ្លៃប្រចាំឆ្នាំ ថ្លៃដកប្រាក់ ATM ក្នុងស្រុក ថ្លៃចេញប័ណ្ណឡើងវិញ។';
	@override String get iBankMasterCardClassicDescription2 => 'រីករាយជាមួយការប្រាក់មិនកំណត់រយៈពេលលើសមតុល្យគណនី (ជាមួយនឹងអត្រាការប្រាក់ ០.៣% ក្នុងមួយឆ្នាំសម្រាប់ចំនួនទឹកប្រាក់ចាប់ពី ១០០ លានរៀល និង ០.៧% ក្នុងមួយឆ្នាំសម្រាប់ចំនួនទឹកប្រាក់ចាប់ពី ៥០០ លានរៀល)។';
	@override String get iBankMasterCardClassicDescription3 => 'ឱកាសទិញក្នុងតម្លៃសមរម្យបំផុត ជាមួយនឹងការបញ្ចុះតម្លៃរហូតដល់ ៥០%។';
	@override String get feeAndRate => 'ថ្លៃសេវា និងអត្រាការប្រាក់';
	@override String get iBankMasterCardNote => 'ចំណាំ៖ តារាងតម្លៃខាងលើមិនរួមបញ្ចូលអាករលើតម្លៃបន្ថែមទេ។ តម្លៃអាចប្រែប្រួលអាស្រ័យលើរយៈពេលនីមួយៗ។ សម្រាប់ព័ត៌មានលម្អិត សូមមើលនៅទីនេះ';
	@override String get creditPlatinum => 'Credit Platinum';
	@override String get creditClassic => 'Credit Classic';
	@override String get creditGold => 'Credit Gold';
	@override String get withdrawAmount => 'ចំនួនទឹកប្រាក់ដែលដក';
	@override String atmWithdrawalRules({required Object min, required Object max}) => 'អប្បបរមាក្នុងមួយប្រតិបត្តិការ: ${min}\nអតិបរមាក្នុងមួយប្រតិបត្តិការ: ${max}';
	@override String get virtualDebit => 'ឥណពន្ធនិម្មិត';
	@override String get debit => 'ឥណពន្ធ​';
	@override String get credit => 'ឥណទាន';
	@override String get atm => 'ATM';
	@override String get virtualDebitCard => 'កាតឥណពន្ធនិមិត្ម';
	@override String get expiryDate => 'ថ្ងៃផុតកំណត់';
	@override String get validFrom => 'សុពលភាពពី';
	@override String get createCard => 'កាតឥណទាន';
	@override String get remainingStatementBalance => 'របាយការណ៍សមតុល្យនៅសល់';
	@override String get minimumPayment => 'ទូទាត់អប្បបរមា';
	@override String get payBefore => 'ទូទាត់់មុន';
	@override String get repayment => 'ទូទាត់ឡើងវិញ';
	@override String get availableCreditLimit => 'កម្រិតកំណត់ឥណទានដែលមាន';
	@override String get totalBalance => 'សមតុល្យសរុប';
	@override String get enterTheLast4DigitsOfTheCard => 'បញ្ចូលលេខ ៤​ ខ្ទង់ក្រោយនៃកាត';
	@override String get creditLimit => 'កម្រិតកំណត់ឥណទាន';
	@override String get youHaveNoCard => 'អ្នកមិនមានកាតទេ';
	@override String get openVirtualCard => 'បើកកាតនិម្មិត';
	@override String get cardLimitUpdateSuccessfull => 'ការកំណត់ដែនកំណត់កាតត្រូវបានធ្វើបច្ចុប្បន្នភាពដោយជោគជ័យ';
	@override String get cardNameValidateMsg => 'ឈ្មោះកាតមិនត្រឹមត្រូវទេ';
	@override String get creditClassicItem1 => 'ឥណទានដែលខ្ពស់បំផុត';
	@override String get creditClassicItem2 => 'ដកប្រាក់';
	@override String get creditClassicItem3 => 'ភាពងាយស្រួល';
	@override String get creditClassicItem4 => 'ទិញមុន បង់ពេលក្រោយ';
	@override String get creditClassicItem5 => 'ការផ្សព្វផ្សាយ';
	@override String get creditClassicItemDesc1 => 'ចំនួនកំណត់រហូតដល់​ 500,000 ដុល្លាអាមេរិក';
	@override String get creditClassicItemDesc2 => 'ដកប្រាក់ពីម៉ាស៊ីន ATM ទូទាំងពិភពលោក គ្រប់ទីកន្លែងដែលនិមិត្តសញ្ញា Mastercard អាចមើលឃើញ។';
	@override String get creditClassicItemDesc3 => 'Mastercard Classic ត្រូវ​បាន​ទទួល​យក​នៅ​ទីតាំង​ពាណិជ្ជករ​រាប់​លាន​កន្លែង​នៅ​ទូទាំង​ពិភពលោក ដែល​លាតសន្ធឹង​តាម​ភោជនីយដ្ឋាន សណ្ឋាគារ និង​អ្នក​លក់​រាយ​តាម​អ៊ីនធឺណិត។ គ្រប់គ្រងកាតឥណទានរបស់អ្នកយ៉ាងងាយស្រួលតាមរយៈកម្មវិធី iBank Mobile ។';
	@override String get creditClassicItemDesc4 => 'រីករាយជាមួយការប្រាក់ 0% រហូតដល់ 45 ថ្ងៃសម្រាប់ប្រតិបត្តិការនៃការទិញ។ ឥតគិតថ្លៃ៖ រហូតដល់ 5 សន្លឹកបន្ថែម។';
	@override String get creditClassicItemDesc5 => 'រីករាយជាមួយការបញ្ចុះតម្លៃផ្តាច់មុខ និងការផ្តល់ជូនពិសេសជាច្រើន និងការផ្តល់ជូនក្តៅៗពី iBank Mastercard';
	@override String get creditGoldItem1 => 'ឥណទានដែលខ្ពស់បំផុត';
	@override String get cardHolderName => 'ឈ្មោះអ្នកកាន់កាត';
	@override String get creditGoldItem2 => 'ភាពដែលអាចកើតឡើងគ្មានដែនកំណត់';
	@override String get creditGoldItem3 => 'ទិញមុន បង់ពេលក្រោយ';
	@override String get creditGoldItem4 => 'អភ័យឯកសិទ្ធិ';
	@override String get creditGoldItemDesc1 => 'ចំនួនកំណត់រហូតដល់​ 500,000 ដុល្លាអាមេរិក';
	@override String get creditGoldItemDesc2 => 'មិនថាអ្នកកំពុងប្រើវានៅក្នុងស្រុក ឬក្រៅប្រទេសទេ សូមជឿជាក់លើការទទួលយកកាតរបស់អ្នកជាសកល។ ចូលប្រើសណ្ឋាគារ ភោជនីយដ្ឋាន និងកន្លែងកម្សាន្តជាង 16,000 នៅទូទាំងពិភពលោក។ កាតរបស់អ្នកធានានូវភាពងាយស្រួល និងការទទួលយកគ្រប់ទីកន្លែងដែលការធ្វើដំណើររបស់អ្នកនាំអ្នក។ ត្រួតពិនិត្យកាតឥណទានរបស់អ្នកយ៉ាងងាយស្រួលតាមរយៈកម្មវិធី iBank Mobile ។';
	@override String get creditGoldItemDesc3 => 'រីករាយជាមួយការប្រាក់ 0% រហូតដល់ 45 ថ្ងៃសម្រាប់ប្រតិបត្តិការនៃការទិញ។ ឥតគិតថ្លៃ៖ រហូតដល់ 5 សន្លឹកបន្ថែម។';
	@override String get creditGoldItemDesc4 => 'ទទួលយកអត្ថប្រយោជន៍ផ្តាច់មុខជាមួយ iBank Mastercard រួមទាំងការបញ្ចុះតម្លៃពិសេស រង្វាន់ជាសាច់ប្រាក់ និងច្រើនទៀត។ លើសពីនេះ រីករាយនឹងភាពប្រណីតនៃការចូលប្រើប្រាស់ដោយឥតគិតថ្លៃទៅកាន់ Airport Premium Lounge រហូតដល់បីដងដោយមិនគិតថ្លៃ។';
	@override String get creditPlatinumItem1 => 'ភាពផ្តាច់មុខ';
	@override String get creditPlatinumItem2 => 'ឥណទានដែលខ្ពស់បំផុត';
	@override String get creditPlatinumItem3 => 'ភាពដែលអាចកើតឡើងគ្មានដែនកំណត់';
	@override String get creditPlatinumItem4 => 'ទិញមុន បង់ពេលក្រោយ';
	@override String get creditPlatinumItem5 => 'អភ័យឯកសិទ្ធិ';
	@override String get creditPlatinumItemDesc1 => 'អំណាចទិញអតិបរមាសម្រាប់អតិថិជនផ្តាច់មុខបំផុតរបស់យើង។';
	@override String get creditPlatinumItemDesc2 => 'ចំនួនកំណត់រហូតដល់​ 500,000 ដុល្លាអាមេរិក';
	@override String get creditPlatinumItemDesc3 => 'មិនថាអ្នកកំពុងប្រើប្រាស់វាក្នុងប្រទេស ឬក្រៅប្រទេសទេ សូមប្រាកដថាអ្នកបានទទួលយកកាតរបស់អ្នកទូទាំងពិភពលោក។ ចូលប្រើសណ្ឋាគារ ភោជនីយដ្ឋាន និងកន្លែងកម្សាន្តជាង 16,000 នៅទូទាំងពិភពលោក។ កាតរបស់អ្នកធានានូវភាពងាយស្រួល និងការទទួលយកគ្រប់ទីកន្លែងដែលការធ្វើដំណើររបស់អ្នកដឹកនាំ។ គ្រប់គ្រងកាតឥណទានរបស់អ្នកយ៉ាងងាយស្រួលតាមរយៈកម្មវិធី iBank Mobile ដែលងាយស្រួលប្រើ។';
	@override String get creditPlatinumItemDesc4 => 'រីករាយជាមួយការប្រាក់ 0% រហូតដល់ 45 ថ្ងៃសម្រាប់ប្រតិបត្តិការនៃការទិញ។ ឥតគិតថ្លៃ៖ រហូតដល់ 5 សន្លឹកបន្ថែម។';
	@override String get creditPlatinumItemDesc5 => 'ទទួលយកអត្ថប្រយោជន៍ផ្តាច់មុខជាមួយ BIC Mastercard រួមទាំងការបញ្ចុះតម្លៃពិសេស រង្វាន់ជាសាច់ប្រាក់ និងច្រើនទៀត។ លើសពីនេះ រីករាយនឹងភាពប្រណីតនៃការចូលប្រើប្រាស់ដោយឥតគិតថ្លៃទៅកាន់ Airport Premium Lounge រហូតដល់ទៅប្រាំដងដោយមិនគិតថ្លៃ។';
	@override String get openCreditCardRegistration => 'បើកការចុះឈ្មោះកាតឥណទាន';
	@override String get nationalIDCard => 'អត្តសញ្ញាណបណ្ណ';
	@override String get reviewInformation => 'ពិនិត្យព័ត៌មាន';
	@override String get registrationSuccessful => 'ការចុះឈ្មោះបានជោគជ័យ';
	@override String get creditSuccessDesc => 'សូមអរគុណចំពោះការចាប់អារម្មណ៍របស់អ្នកចំពោះផលិតផលកាតឥណទានរបស់ iBank ។ ព័ត៌មានរបស់អ្នកត្រូវបានកត់ត្រាទុក។ ក្រុមសេវាកម្មអតិថិជនរបស់យើងនឹងទាក់ទងអ្នកឱ្យបានឆាប់តាមដែលអាចធ្វើទៅបាន។';
	@override String get creditCardClassicTitle => 'កាតឥណទាន Classic Mastercard';
	@override String get creditCardGoldTitle => 'កាតឥណទាន Gold Mastercard';
	@override String get creditCardPlatinumTitle => 'កាតឥណទាន Platinum Mastercard';
	@override String get maximumDailyLimit => '\$ 2,000 លីនេអ៊ែរការណ៍របស់ថ្ងៃរបស់ខ្ពស់បំផុត';
	@override String get neverHaveToDeal => 'មិនត្រូវឱ្យចិត្តអោយបាត់បង់បន្ថែមជាមួយកាតរបស់អ្នកម្តងទៀតទេ';
	@override String get secure => 'សុវត្ថិភាព';
}

// Path: cardTabScreen
class _TranslationsCardTabScreenKm extends _TranslationsCardTabScreenEn {
	_TranslationsCardTabScreenKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get totalLinkAccountBalance => 'សមតុល្យគណនីដែលបានភ្ជាប់សរុប';
	@override String get totalCreditLimit => 'ដែនកំណត់ឥណទានសរុប';
	@override String get totalOutstandingBalance => 'សមតុល្យទឹកប្រាក់នៅសល់សរុប';
	@override String get outstandingBalance => 'សមតុល្យនៅសល់';
	@override String numberOfCard({required Object amount}) => 'ចំនួនកាត៖ ${amount}';
	@override String get doNotHaveCardTitle => 'អ្នកមិនមានកាតនោះទេ';
	@override String get doNotHaveCardMessage => 'ស្វែងរកអត្ថប្រយោជន៍ទ្រព្យសម្បត្តិនៃកាតឥណទាន';
	@override String get doNotHaveCardMessageDebitCard => 'បើក និងរុករកអត្ថប្រយោជន៍ទាំងអស់នៃកាតឥណពន្ធ';
	@override String get openNewCard => 'បើកកាតថ្មី';
	@override String get explore => 'រុករក';
}

// Path: cardStatement
class _TranslationsCardStatementKm extends _TranslationsCardStatementEn {
	_TranslationsCardStatementKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'របាយការណ៍កាតឥណទាន';
	@override String get period => 'រយៈពេល';
	@override String get statementBalance => 'របាយការណ៍សមតុល្យ';
	@override String get cardNumber => 'លេខកាត';
	@override String get dueDate => 'កាលបរិច្ឆេទផុតកំណត់';
	@override String get supplementary => 'បន្តសុពលភាព';
	@override String get selectStatementPeriod => 'ជ្រើសរើសរយៈពេលរបាយការណ៍';
	@override String get emailMe => 'ផ្ញើអ៊ីម៉ែលមកខ្ញុំ';
	@override String get download => 'ទាញយក';
}

// Path: cardHistory
class _TranslationsCardHistoryKm extends _TranslationsCardHistoryEn {
	_TranslationsCardHistoryKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get month => 'ខែ';
	@override String get transactionDetails => 'ព័ត៌មានលម្អិតអំពីប្រតិបត្តិការ';
	@override String get lastMonth => 'ខែមុន';
	@override String get lastThreeMonth => 'បីខែចុងក្រោយ';
	@override String get custom => 'ជ្រើសរើស';
	@override String get transactionHistory => 'ប្រវត្តិប្រតិបត្តិការ';
	@override String get emptyTransactionList => 'លុបបញ្ជីប្រតិបត្តិការ';
	@override String get transactionList => 'បញ្ជីប្រតិបត្តិការ';
	@override String get transactionId => 'លេខសម្គាល់ប្រតិបត្តិការ';
	@override String get merchantName => 'ឈ្មោះអ្នកជំនួញ';
	@override String get country => 'ប្រទេស';
	@override String get transactionTime => 'ពេលវេលាប្រតិបត្តិការ';
	@override String get status => 'ស្ថានភាព';
	@override String get tracingCode => 'លេខកូដតាមដាន';
	@override String get timeRange => 'ថេរវេលា';
	@override String get fromAmount => 'ពីចំនួន';
	@override String get toAmount => 'ទៅចំនួន';
	@override String get approvalCode => 'លេខកូតអនុម័ត';
	@override String get lastSixMonth => '៦ខែចុងក្រោយ';
}

// Path: filterCard
class _TranslationsFilterCardKm extends _TranslationsFilterCardEn {
	_TranslationsFilterCardKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get validateBeforeDatetimeMessage => 'សូមជ្រើសរើសកាលបរិច្ឆេទមុនកាលបរិច្ឆេទបច្ចុប្បន្ន';
	@override String get validateLessThanDatetimeMessage => 'ចាប់ពីកាលបរិច្ឆេទត្រូវតែតិចជាងរហូតដល់កាលបរិច្ឆេទ';
	@override String get validateMaxRangeDaysMessage => 'សូមជ្រើសរើសរយៈពេលតិចជាង 90 ថ្ងៃ';
	@override String get requestType => 'ស្នើសុំ';
	@override String get systemUpdate => 'បច្ចុប្បន្នភាពប្រព័ន្ធ';
	@override String get balanceChanges => 'ផ្លាស់ប្តូរសមតុល្យ';
	@override String get fromAccount => 'ពីចំនួន';
	@override String get toAccount => 'ទៅចំនួន';
}

// Path: selectCreditCard
class _TranslationsSelectCreditCardKm extends _TranslationsSelectCreditCardEn {
	_TranslationsSelectCreditCardKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get virtualCard => 'កាតនិម្មិត';
	@override String get virtualCardDescription => 'មុខងារពេញលេញ អាចប្រើបានភ្លាមៗលើអ៊ីនធឺណិត ហើយសេវាកម្មជាច្រើនមិនគិតថ្លៃ';
	@override String get physicalCard => 'Physical Card';
	@override String get physicalCardDescription => 'កាតរូបវន្តបែបបុរាណ ងាយស្រួល និងជាមួយអត្ថប្រយោជន៍ជាច្រើន ដឹកជូនទៅដល់មាត់ទ្វាររបស់អ្នក';
	@override String get cardDeliveryAddress => 'អាសយដ្ឋានចែកចាយកាត';
	@override String get selectAddress => 'ជ្រើសរើសអាសយដ្ឋាន';
	@override String get linkedPaymentAccount => 'គណនីទូទាត់ដែលបានភ្ជាប់';
	@override String get termsAndCondition => 'ខចែង និងលក្ខខណ្ឌ';
	@override String get agreeTermsMessage => 'ដោយចុចលើពាក្យ បង្កើត អ្នកយល់ព្រមនឹងខចែង និងលក្ខខណ្ឌរបស់ធនាគារ iBank';
}

// Path: customer
class _TranslationsCustomerKm extends _TranslationsCustomerEn {
	_TranslationsCustomerKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get security => 'សុវត្ថិភាព';
	@override String get confirmPasscode => 'បញ្ជាក់លេខសម្ងាត់';
	@override String get changePasscode => 'ប្តូរលេខសម្ងាត់';
	@override String get curentPasscode => 'លេខសម្ងាត់បច្ចុប្បន្ន';
	@override String get forgotPasscode => 'ភ្លេចលេខសម្ងាត់?';
	@override String get description => 'សូមជៀសវាងការប្រើប្រាស់លេខសម្ងាត់ដដែលៗ ឬលេខសម្ងាត់ដែលងាយស្រួលទាយ';
	@override String get loginWithFaceid => 'ចូលដោយការសម្គាល់ផ្ទៃមុខ';
	@override String get loginWithFingerprint => 'ចូលដោយប្រើស្នាមម្រាមដៃ';
	@override String get authTransactionWithFaceid => 'ផ្ទៀងផ្ទាត់ប្រតិបត្តិការជាមួយការសម្គាល់ផ្ទៃមុខ';
	@override String get authTransactionWithFingerprint => 'ផ្ទៀងផ្ទាត់ប្រតិបត្តិការដោយប្រើស្នាមម្រាមដៃ';
	@override String get logoutAfter => 'ចាកចេញ បន្ទាប់ពី ៣​ នាទី';
	@override String get transactionLimit => 'កម្រិតកំណត់ប្រតិបត្តិការ';
	@override String get transactionOwnAccount => 'ផ្ទេរប្រាក់ទៅគណនីផ្ទាល់ខ្លួន';
	@override String limitTransactionRules({required Object value, required Object currency}) => 'ឈានដល់កម្រិតកំណត់អតិបរមា (${value} ${currency})';
	@override String get transactionToIbankAccount => 'ផ្ទេរប្រាក់់ទៅគណនី iBank';
	@override String get discardUpdateTransactionLimit => 'តើ​អ្នក​ប្រាកដ​ជា​ចង់​បោះបង់​ការដំឡើងការកំណត់​ប្រតិបត្តិការ​មែនទេ?';
	@override String get transactionOther => 'ផ្ទេរប្រាក់ និងការទូទាត់ផ្សេងៗ';
	@override String get perDay => 'ក្នុងមួយថ្ងៃ';
	@override String get perTransaction => 'ក្នុងមួយប្រតិបត្តិការ';
	@override String get edit => 'កែសម្រួល';
	@override String get save => 'រក្សាទុក';
	@override String get createNewRequest => 'បង្កើតសំណើថ្មី';
	@override String get requestTitle => 'ចំណងជើងសំណើ';
	@override String get placeholder => 'កន្លែងដាក់បណ្តោះអាសន្ន';
	@override String get requestDetail => 'ព័ត៌មានលម្អិតនៃសំណើរ';
	@override String get uploadImage => 'បង្ហោះរូបភាព';
	@override String get create => 'បង្កើត';
	@override String get detailDescription => 'ពិពណ៌នា';
	@override String get type => 'ប្រភេទ';
	@override String get transactionID => 'លេខសម្គាល់ប្រតិបត្តិការ';
	@override String get tracingCode => 'លេខកូដតាមដាន';
	@override String get time => 'ពេលវេលា';
	@override String get requestType => 'ប្រភេទសំណើ';
	@override String get transaction => 'ប្រតិបត្តិការ';
	@override String get status => 'ស្ថានភាព';
	@override String get traceID => 'លេខសម្គាល់តាមដាន';
	@override String get titleOfRequest => 'ចំណងជើងសំណើ';
}

// Path: profile
class _TranslationsProfileKm extends _TranslationsProfileEn {
	_TranslationsProfileKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get myProfile => 'ប្រវត្តិរូបរបស់ខ្ញុំ';
	@override String get personalInformation => 'ព័ត៌មានផ្ទាល់ខ្លួន';
	@override String get buildingName => 'ឈ្មោះអគារ';
	@override String get egUKCONDOROOM => 'ឧទាហរណ៍ Star Building 123៣';
	@override String get username => 'ឈ្មោះអ្នកប្រើប្រាស់';
	@override String get fullName => 'ឈ្មោះពេញ';
	@override String get gender => 'ភេទ';
	@override String get maritalStatus => 'ស្ថានភាពគ្រួសារ';
	@override String get dateOfBirth => 'ថ្ងៃ ខែ ឆ្នាំ កំណើត';
	@override String get eKYCStatus => 'ស្ថានភាព KYC';
	@override String get homeBranch => 'ស្នាក់ការ​ក​ណ្តា​ល';
	@override String get contactInformation => 'ព័ត៌មានទំនាក់ទំនង';
	@override String get phoneNumber => 'លេខទូរស័ព្ទ';
	@override String get email => 'អ៊ីម៉ែល';
	@override String get pleaseUpdateYourEmail => 'សូមធ្វើបច្ចុប្បន្នភាពអ៊ីមែលរបស់អ្នក';
	@override String get address => 'អាសយដ្ឋាន';
	@override String get newAddress => 'អាសយដ្ឋានថ្មី';
	@override String get updateSuccessfully => 'ធ្វើបច្ចុប្បន្នភាពដោយជោគជ័យ';
	@override String get thankYouForUpdatingInfo => 'សូមអរគុណសម្រាប់ការធ្វើបច្ចុប្បន្នព័ត៌មានរបស់អ្នក';
	@override String get viewProfile => 'មើលប្រូហ្វាល';
	@override String get changeAddress => 'ប្តូរអាសយដ្ឋាន';
	@override String get currentAddress => 'អាសយដ្ឋានបច្ចុប្បន្ន';
	@override String get changeEmail => 'ប្ដូរអ៊ីម៉ែល';
	@override String get currentEmailAddress => 'ប្ដូរអ៊ីម៉ែលបច្ចុប្បន្ន';
	@override String get newEmailAddress => 'ប្ដូរអ៊ីម៉ែលថ្មី';
	@override String get transactionLimit => 'កំណត់ប្រតិបត្តិការ';
	@override String get edit => 'កែប្រែ';
	@override String get save => 'រក្សាទុក';
	@override String get emailToIBank => 'ផ្ញើអ៊ីមែលទៅ iBank';
	@override String get location => 'ទីតាំង';
	@override String get socialMedia => 'បណ្តាញសង្គម';
	@override String get facebook => 'Facebook';
	@override String get instagram => 'Instagram';
	@override String get telegram => 'Telegram';
	@override String get tiktok => 'Tiktok';
	@override String get linkedIn => 'LinkedIn';
	@override String get youtube => 'Youtube';
	@override String get security => 'សុវត្ថិភាព';
	@override String get loginWithFaceID => 'ចូលប្រើប្រាស់ដោយស្កេនផ្ទៃមុខ';
	@override String get authenticateTransactionsWithFaceID => 'ផ្ទៀងផ្ទាត់ប្រតិបត្តិការជាមួយការសម្គាល់ផ្ទៃមុខ';
	@override String get changePasscode => 'ប្តូរលេខសម្ងាត់';
	@override String get logOutAfter3minutes => 'ចាកចេញ បន្ទាប់ពី ៣ នាទី';
	@override String get logOutAfter => 'ចាកចេញ បន្ទាប់់';
	@override String get smsBanking => 'សារ SMS Banking';
	@override String get emailNotification => '​សារក្នុងអ៊ីម៉ែល';
	@override String get emailNotificationSettingDes => 'មិនមានអ៊ីមែលដែលបានចុះឈ្មោះទេ។ សូមចូលទៅកាន់ ប្រូហ្វាលហើយបញ្ចូលអ៊ីមែលរបស់អ្នកនៅទីនោះ។';
	@override String get balanceNotificationAtLoginScreen => 'ការជូនដំំណឹងសមតុល្យលើអេក្រង់';
	@override String get balanceNotificationAtLoginScreenDes => 'មើលការជូនដំណឹងអំពីការផ្លាស់ប្តូរសមតុល្យដោយគ្មាន\nការ​ចូល​ក្នុង';
	@override String get groupBalanceNotification => 'ការជូនដំណឹងអំពីសមតុល្យ';
	@override String get notificationSettings => 'កំណត់ការជូនដំណឹង';
	@override String get selectAccount => 'ជ្រើសរើសគណនី';
	@override String get transferToOwnAccount => 'ផ្ទេរប្រាក់ទៅគណនីផ្ទាល់ខ្លួន';
	@override String get perDay => 'ក្នុងមួយថ្ងៃ';
	@override String get perTransaction => 'ក្នុងមួយប្រតិបត្តិការ';
	@override String get transferToiBankAccount => 'ផ្ទេរប្រាក់ទៅគណនី iBank';
	@override String get otherTransferAndPayments => 'ផ្ទេរប្រាក់ និងទូទាត់ផ្សេងៗ';
	@override String get profileAndSettings => 'ប្រូហ្វាល និងការកំណត់';
	@override String get setDefaultAccount => 'កំណត់គណនីគោល';
	@override String get language => 'ភាសា';
	@override String get support => 'ការគាំទ្រ';
	@override String get lastLogin => 'ការចូលចុងក្រោយ';
	@override String get device => 'ឧបករណ៍';
	@override String get changeLanguageSuccessMessage => 'ប្តូរភាសាជោគជ័យ';
	@override String get setDefaultAccountSuccess => 'អ្នកបានកំណត់គណនីគោលដោយជោគជ័យ';
	@override String get updateAvatar => 'ធ្វើបច្ចុប្បន្នភាពរូបតំណាង';
	@override String get chooseFromLibrary => 'ជ្រើសរើសពីអាលប៊ុមថតរូប';
	@override String get takePicture => 'ថតរូប';
	@override String get deleteAvatar => 'លុបរូបតំណាង';
	@override String get reTake => 'ថតឡើងវិញ';
	@override String get useThisPhoto => 'ប្រើប្រាស់រូបថតនេះ';
	@override String get deleteAvatarMessage => 'តើអ្នកប្រាកដថាអ្នកចង់លុបរូបភាពនេះមែនទេ?';
	@override String get avatarDeletedSuccessfully => 'រូបតំណាងត្រូវបានលុបដោយជោគជ័យ';
	@override String get noImage => 'គ្មានរូបភាព';
	@override String get avatarUpdateSuccessfully => 'រូបតំណាងត្រូវបានធ្វើបច្ចុប្បន្នភាពដោយជោគជ័យ';
	@override String get successfullyRevoked => 'បានលុបចោលដោយជោគជ័យ';
	@override String get revokedMsg => 'ឥឡូវនេះអ្នកអាចចូលក្នុងឧបករណ៍ណាមួយដែលអ្នកចង់ចុះឈ្មោះ!';
	@override String get updateTxnLimitSuccess => 'ការកំណត់ប្រតិបត្តិការរបស់អ្នកបានធ្វើបច្ចុប្បន្នភាពដោយជោគជ័យ';
	@override String get emailHint => 'ឧទាហរណ៍ abc@yyy.zzz';
	@override String get numberHintText => 'ឧទាហរណ៍ 123';
	@override String get upgradeKYC => 'ធ្វើ​បច្ចុប្បន្ន KYC';
	@override String get profileLogOut => 'តើអ្នកប្រាកដថាអ្នកចង់ចាកចេញពី iBank?';
	@override String get displaySetting => 'ការកំណត់ការបង្ហាញ';
	@override String get lightTitle => 'ពន្លឺ';
	@override String get darkTitle => 'ងងឹត';
	@override String get textSizeTitle => 'ទំហំ​អត្ថបទ';
	@override String get whatNewOnIBank => 'អ្វីថ្មីនៅលើ iBank?';
	@override String get dragAvatar => 'អូសរូបភាពជុំវិញដើម្បីកែតម្រូវ';
	@override String get smaller => 'តូចជាង';
	@override String get original => 'ដើម';
	@override String get bigger => 'ធំជាង';
}

// Path: transfer
class _TranslationsTransferKm extends _TranslationsTransferEn {
	_TranslationsTransferKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get forLunch => 'សម្រាប់អាហារថ្ងៃត្រង់';
	@override String get forDinner => 'សម្រាប់អាហារពេលល្ងាច';
	@override String get forCoffee => 'សម្រាប់ផឹកកាហ្វេ';
	@override String get forATrip => 'សម្រាប់ការធ្វើដំណើរ';
	@override String get earlierThanToday => 'កាលបរិច្ឆេទអនុវត្តមិនអាចមុនថ្ងៃនេះបានទេ';
	@override String get scheduleExchageDescription => 'អត្រាប្តូរប្រាក់នឹងត្រូវគណនានៅពេលដែលប្រតិបត្តិការនីមួយៗ។';
	@override String get scheduledTransactionContinued => 'ប្រតិបត្តិការត្រូវបានបន្ត!';
	@override String get scheduledTransactionUpdated => 'ប្រតិបត្តិការត្រូវបានធ្វើបច្ចុប្បន្នភាព!';
	@override String get scheduledTransactionPaused => 'ប្រតិបត្តិការត្រូវបានផ្អាក!';
	@override String get scheduledTransactionDeleted => 'ប្រតិបត្តិការត្រូវបានលុប!';
	@override String get editPeriodicTransfer => 'កែប្រែការផ្ទេរតាមគ្រា';
	@override String get transactionOrderScheduled => 'ការបញ្ជាទិញប្រតិបត្តិការត្រូវបានកំណត់ម៉ោង!';
	@override String get viewDetail => 'មើលព័ត៌មានលម្អិត';
	@override String totalTransactions({required Object numOfTransaction, required Object amountWithCurrency}) => '${numOfTransaction} ប្រតិបត្តិការ - ${amountWithCurrency}';
	@override String get transaction => 'ប្រតិបត្តិការ';
	@override String get ownAccount => 'ផ្ទេរទៅគណនីផ្ទាល់ខ្លួន';
	@override String get iBankAccount => 'ផ្ទេរទៅគណនីiBank​ ផ្សេងទៀត';
	@override String get periodicTransferTo => 'ផ្ទេរតាមពេលដែលកំណត់ទៅ';
	@override String get transferType => 'ប្រភេទប្រតិបត្តិការ';
	@override String get scheduleTransaction => 'ប្រតិបត្តិការផ្ទេរប្រាក់ត្រូវបានកំណត់';
	@override String transferScheduleDesctiption({required Object numberOfTransaction}) => 'ប្រតិបត្តិការចំនួន ${numberOfTransaction} ប្រតិបត្តិការនឹងត្រូវបានប្រតិបត្តិដោយស្វ័យប្រវត្តិក្នុងរយៈពេលដែលបានជ្រើសរើស';
	@override String get frequency => 'ញឹកញាប់';
	@override String dayOfMonth({required Object dayOfMonth}) => 'ថ្ងៃ${dayOfMonth}';
	@override String get oneTime => '១លើក';
	@override String get daily => 'រៀងរាល់ថ្ងៃ';
	@override String get weekly => 'រៀងរាល់អាទិត្យ';
	@override String get monthly => 'រៀងរាល់ខែ';
	@override String get transferToLocalBanksViaBakong => 'ផ្ទេរប្រាក់ទៅធនាគារក្នុងស្រុកតាមរយៈបាគង';
	@override String get newBeneficiary => 'អ្នកទទួលផលថ្មី។';
	@override String get transactionBelowThreshold => 'ចំនួនទឹកប្រាក់ប្រតិបត្តិការគឺទាបជាងកម្រិត';
	@override String get externalTnxRef => 'លេខសម្គាល់ប្រតិបត្តិការ';
	@override String get toAccount => 'អ្នកទទួល';
	@override String get equivalentAmount => 'ចំនួនទឹកប្រាក់ស្មើរនិង';
	@override String get thaiqrAllowOnlyKHR => 'អនុញ្ញាតសម្រាប់តែគណនី KHR ប៉ុណ្នោះ';
	@override String get thaiqrAllowOnlyKHRDescription => 'ការទូទាត់ប្រាក់ នៅប្រទេសថៃ តាមរយះ ThaiQR អនុញ្ញាតសម្រាប់តែគណនី KHR ប៉ុណ្នោះ';
	@override String get crossBorderQrTransfer => 'ការផ្ទេរ ប្រាក់ឆ្លងធនាគារតាមរយះ QRកូ';
	@override String get transfer => 'ផ្ទេរប្រាក់';
	@override String get toOwnAccount => 'ទៅគណនីផ្ទាល់ខ្លួន';
	@override String get toIBankAccount => 'ទៅគណនី iBank';
	@override String get toLocalBank => 'ទៅធនាគារក្នុងស្រុក';
	@override String get toBaKongWallet => 'ទៅគណនីបាគង';
	@override String get toCard => 'ទៅកាត';
	@override String get toInternational => 'ផ្ទេរប្រាក់ទៅអន្តរជាតិ';
	@override String get beneficiary => 'អ្នកទទួល';
	@override String get schedule => 'កាលវិភាគ';
	@override String get emptyBeneficiaryList => 'មិនមានអ្នកទទួលទទេ';
	@override String get createPeriodicTransfer => 'បង្កើតការផ្ទេរប្រាក់តាមកាលកំណត់';
	@override String get amount => 'ចំនួនទឹកប្រាក់';
	@override String get limit => 'កំណត់';
	@override String get description => 'ពិពណ៌នា';
	@override String get optional => '(មិនដាក់ក៏បាន)';
	@override String get currency => 'រូបិយប័ណ្ណ';
	@override String get transferToOwnAccount => 'ផ្ទេរប្រាក់ទៅគណនីផ្ទាល់ខ្លួន';
	@override String get transferToLocalBanks => 'ផ្ទេរប្រាក់ទៅធនាគារក្នុងស្រុក';
	@override String get transferToIBank => 'ផ្ទេរប្រាក់ទៅធនាគារ iBank';
	@override String get transferToBaKongWallet => 'ផ្ទេរប្រាក់ទៅគណនីបាគង';
	@override String get selectAccount => 'ជ្រើសរើសគណនី';
	@override String get review => 'ផ្ទៀងផ្ទាត់';
	@override String get toAccountNumber => 'ទៅលេខគណនី';
	@override String get beneficiaryName => 'ឈ្មោះអ្នកទទួល';
	@override String get beneficiaryBank => 'ធនាគារទទួល';
	@override String get descriptionText => 'ពិពណ៌នា';
	@override String get type => 'ប្រភេទ';
	@override String get confirm => 'បញ្ជាក់';
	@override String get edit => 'កែប្រែ';
	@override String get successfulTransaction => 'ប្រតិបត្តិការជោគជ័យ';
	@override String get processingTransaction => 'ប្រតិបត្តិការកំពុងដំណើរការ';
	@override String get transactionID => 'លេខសម្គាល់ប្រតិបត្តិការ';
	@override String get tracingCode => 'កូដតាមដាន';
	@override String get time => 'ពេលវេលា';
	@override String get newTransfer => 'ផ្ទេរប្រាក់';
	@override String get failedTransaction => 'ប្រតិបត្តិការបរាជ័យ';
	@override String get cancelTransactionTitle => 'បោះបង់ប្រតិបត្តិការ?';
	@override String get cancelTransactionContent => 'ព័ត៌មានដែលបានបញ្ចូលទាំងអស់នឹងត្រូវបានលុប';
	@override String get transferAmount => 'ចំនួនទឹកប្រាក់ផ្ទេរ';
	@override String get fee => 'ថ្លៃសេវា';
	@override String get totalAmount => 'ចំនួនទឹកប្រាក់​សរុប';
	@override String get iBank => 'ធនាគារ iBank';
	@override String defaultTransferNote({required Object account}) => '${account} ផ្ទេរប្រាក់';
	@override String get accountNoHintText => 'បញ្ចូលលេខគណនី';
	@override String get accountName => 'ឈ្មោះគណនី';
	@override String get service => 'សេវា';
	@override String get toBank => 'ទៅធនាគារ';
	@override String get selectBank => 'ជ្រើសរើសធនាគារ';
	@override String get bakong => 'បាគង';
	@override String get ownAccountTransferDescription => 'ផ្ទេរប្រាក់គណនីផ្ទាល់ខ្លួន';
	@override String get bakongTransferDescription => 'ផ្ទេរប្រាក់ធនាគារក្នុងស្រុកតាមរយៈបាគង';
	@override String get internalTransferDescription => 'ផ្ទេរប្រាក់ក្នុងប្រព័ន្ធធនាគារ';
	@override String get bakongWalletTransferDescription => 'ផ្ទេរប្រាក់ធនាគារក្នុងស្រុកតាមរយៈគណនីបាគង';
	@override String get oneAccountMessageForOwnTransfer => 'អ្នកមានគណនីតែមួយ';
	@override String limitAmountPerday({required Object amount, required Object currency}) => '${amount} ${currency}/ថ្ងៃ';
	@override String limitAmountPerTransaction({required Object amount, required Object currency}) => '${amount} ${currency}/ប្រតិបត្តិការ';
	@override String get toPhoneNumber => 'ទៅលេខទូរស័ព្ទ';
	@override String get create => 'បង្កើត';
	@override String get periodicTransfer => 'ការផ្ទេរប្រាក់តាមតាមកាលកំណត់';
	@override String get addNewBeneficiary => 'បន្ថែមអ្នកទទួលថ្មី';
	@override String get addNew => 'បន្ថែមថ្មី';
	@override String get transactionType => 'ប្រភេទប្រតិបត្តិការ';
	@override String get domesticTransfer => 'ការផ្ទេរប្រាក់ក្នុងស្រុក';
	@override String get bank => 'ធនាគារ';
	@override String get insufficientBalanceTitle => 'សមតុល្យមិនគ្រប់គ្រាន់';
	@override String get cancelCashWithdrawal => 'បោះបង់ការដកប្រាក់';
	@override String get cashToATMOnlyAppliesToUSDAccount => 'ផ្ទេរប្រាក់ទៅ ATM អនុញ្ញាតតែគណនីដុល្លារ​ ប៉ុណ្ណោះ។';
	@override String get cardlessATMWithdrawal => 'ការដកប្រាក់ ATM ដោយមិនប្រើកាត';
	@override String amountMustBeMultipleOf100({required Object amount, required Object currency}) => 'ចំនួនទឹកប្រាក់នៃការដកប្រាក់ត្រូវតែជាពហុគុណនៃ ${amount} ${currency}';
	@override String get setNickname => 'កំណត់ឈ្មោះហៅក្រៅ';
	@override String get addNewBeneficiarySuccessfully => 'បន្ថែមអ្នកទទួលថ្មីដោយជោគជ័យ';
	@override String get viewList => 'មើលបញ្ជី';
	@override String get viewInfo => 'មើលព័ត៌មាន';
	@override String get editNickName => 'កែប្រែឈ្មោះហៅក្រៅ';
	@override String get beneficiaryInformation => 'ព័ត៌មានអ្នកទទួល';
	@override String get name => 'ឈ្មោះ';
	@override String get nickName => 'ឈ្មោះហៅក្រៅ';
	@override String get accountInactiveMessage => 'គណនីអសកម្ម';
	@override String get pleaseEnterAccountNumber => 'សូមបញ្ចូលលេខគណនី';
	@override String get beneficiarySavedSuccessfully => 'អ្នកទទួលបានរក្សាទុកដោយជោគជ័យ';
	@override String get beneficiaryList => 'បញ្ជីអ្នកទទួល';
	@override String get beneficiaryEditedSuccessfully => 'អ្នកទទួលបានកែប្រែដោយជោគជ័យ';
	@override String get deletedSuccessfully => 'ការលុបបានជោគជ័យ';
	@override String get deleteBeneficiary => 'លុបអ្នកទទួល';
	@override String get deleteBeneficiaryMessage => 'តើអ្នកពិតជាចង់លុបបុគ្គលនេះចេញពីទំនាក់ទំនងរបស់អ្នកមែនទេ?';
	@override String get transactionHash => 'លេខ​កូដ Hash';
	@override String get saveBeneficiary => 'រក្សាទុកអ្នកទទួលផល';
	@override String get exceedsTransactionLimitError => 'ចំនួនទឹកប្រាក់ផ្ទេរលើសចំនួនកំណត់ក្នុងមួយប្រតិបត្តិការ';
	@override String minTransferAmountError({required Object amount}) => 'ចំនួនទឹកប្រាក់ផ្ទេរអប្បបរមាគឺ ${amount}';
	@override String get maxTransferAmountError => 'ការទូទាត់លើសពីការកំណត់ឥណទាន';
	@override String get sameAccountErrorMessage => 'គណនីអ្នកទទួលមិនត្រូវដូចគ្នាទៅនឹងគណនីដើមទេ។';
	@override String get accountNotFound => 'មិនមានគណនីនេះទេ';
	@override String get bakongWallet => 'គណនីបាគង';
	@override String get localBank => 'ធនាគារក្នុងស្រុក';
	@override String get bakongID => 'លេខសម្គាល់ Bankong';
	@override String get favoriteDeleted => 'បានលុបធាតុដែលពេញចិត្ត';
	@override String get total => 'សរុប';
	@override String get status => 'ស្ថានភាព';
	@override String get pause => 'ផ្អាក';
	@override String get delete => 'លុបចោល';
	@override String get createScheduleTransactionFailed => 'បង្កើតប្រតិបត្តិការតាមកាលវិភាគបានបរាជ័យ';
	@override String get reachLimitPFMTitle => 'ឈានដល់ដែនកំណត់ប្រតិបត្តិការ';
	@override String get reachLimitPMFMessage => 'អ្នក​បាន​ឈាន​ដល់​ដែន​កំណត់​នៃ​ការ​ចំណាយ​គណនី។ អ្នក​ត្រូវ​ដំឡើង​កម្រិត KYC របស់​អ្នក​សម្រាប់​ប្រតិបត្តិការ​ប្រចាំខែ​គ្មាន​ដែន​កំណត់';
}

// Path: account
class _TranslationsAccountKm extends _TranslationsAccountEn {
	_TranslationsAccountKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get totalBalance => 'ចំនួនសរុប';
	@override String get recieved => 'បានទទួល';
	@override String get spent => 'បានចំនាយ';
	@override String get change => 'ផ្លាស់ប្តូរ';
	@override String get accountList => 'បញ្ជីគណនី';
	@override String get balance => 'ចំំនួន';
	@override String get accountNumber => 'លេខគណនី';
	@override String get transfer => 'ការផ្ទេរប្រាក់';
	@override String get qrCode => 'QR កូដ';
	@override String get statement => 'របាយការណ៍';
	@override String get more => 'ច្រើនទៀត';
	@override String get transactionHistory => 'ប្រវត្តិប្រតិបត្តិការ';
	@override String get accountInfo => 'ព័ត៌មានរបស់លខគណនី';
	@override String get changeAccountName => 'ប្តូរឈ្មោះគណនី';
	@override String get viewLinkedInfo => 'មើលព័ត៌មានដែលបានភ្ជាប់';
	@override String get setAsDefaultAccount => 'កំណត់ជាគណនីលំនាំដើម';
	@override String get shareAccountDetail => 'ចែករំលែកព័ត៌មានលម្អិតអំពីគណនី';
	@override String get thisMonth => 'ខែនេះ';
	@override String get lastMonth => 'ខែមុន';
	@override String get last2Months => '២ ខែមុន';
	@override String get last3Months => '៣​ ខែមុន';
	@override String get byDate => 'តាមកាលបរិច្ឆេទ';
	@override String get accountStatement => 'របាយការណ៍គណនី';
	@override String get selectPeriod => 'ជ្រើសរើសរយៈពេល';
	@override String get pdfFile => 'ឯកសារជា PDF';
	@override String get emailMe => 'ផ្ទើសារមកកាន់ខ្ញុំ';
	@override String get download => 'ទាញយក';
	@override String get transactionDetail => 'ព័ត៌មានលម្អិតអំពីប្រតិបត្តិការ';
	@override String get transactionID => 'លេខ​សម្គាល់​ប្រតិ​ប​ត្ដិ​ការ';
	@override String get fromAccount => 'ពីគណនី';
	@override String get senderName => 'ឈ្មោះអ្នកផ្ញើ';
	@override String get toAccount => 'ទៅគណនី';
	@override String get toAccountName => 'ទៅគណនីឈ្មោះ';
	@override String get transactionTime => 'ពេលវេលាប្រតិបត្តិការ';
	@override String get tracingCode => 'លេខកូដសំរាប់តាមដាន';
	@override String get description => 'ការពិពណ៌នា';
	@override String get share => 'ចែករំលែក​';
	@override String get returnToSender => 'ត្រឡប់ទៅអ្នកផ្ញើវិញ';
	@override String get repeat => 'ធ្វើម្តងទៀត';
	@override String get splitBill => 'បែងចែកវិក្កយបត្រ';
	@override String get transferViaBakong => 'ផ្ទេរប្រាក់ទៅធនាគារក្នុងស្រុកតាមរយៈបាគង';
	@override String get linkedInfo => 'ព័ត៌មានដែលបានភ្ជាប់';
	@override String get linkedPhoneNumber => 'លេខទូរស័ព្ទដែលបានភ្ជាប់';
	@override String get linkedCards => 'កាតបានភ្ជាប់';
	@override String get iBankVISATravel => 'ការធ្វើដំណើរទិដ្ឋាការរបស់ iBank';
	@override String get primary => 'ដំបូង';
	@override String get qrImageSaveFailed => 'ការទាញយក RQ កូដដាក់ក្នុងអាល់ប៊ុមរូបថតត្រូវបានបរាជ័យ';
	@override String get addAmount => 'បន្ថែមចំនួន';
	@override String get all => 'ទាំងអស់';
	@override String get date => 'កាលបរិច្ឆេទ';
	@override String get creditToAccount => 'ការធ្វើប្រតិបក្តិពីឥណទានទៅគណនី';
	@override String get fromDateMustBeLessThanToDate => 'ការ​ ចាប់ពីផ្ដើមកាលបរិច្ឆេទត្រូវតែតិចជាង ដល់កាលបរិច្ឆេទ';
	@override String get setDefaultAccountSuccessfully => 'កំណត់គណនីលំនាំដើមទទួលបានជោគជ័យ';
	@override String get enterAccountName => 'បញ្ចូលឈ្មោះគណនី';
	@override String get accountNicknameUpdated => 'ឈ្មោះហៅក្រៅគណនីត្រូវបានធ្វើបច្ចុប្បន្នភាព';
	@override String get transactionFilter => 'តម្រងប្រតិបត្តិការ';
	@override String get incoming => 'ចូល';
	@override String get outgoing => 'ចេញ';
	@override String availableBalance({required Object amount, required Object currency}) => 'សមតុល្យដែលអាចប្រើបាន ${amount} ${currency}';
	@override String get last60Days => '៦០ មុន';
	@override String get last7Days => '៧ថ្ងៃចុងក្រោយ';
	@override String get last90Days => '៩០​ ថ្ងៃមុន';
	@override String get custom => 'កំណត់់';
	@override String get fromAmount => 'ពីគណនី';
	@override String get toAmount => 'ទៅចំនួន';
	@override String get accountInformation => 'ព័ត៌មានរបស់គណនី';
	@override String get accountType => 'ប្រភេទរបស់គណនី';
	@override String get accountName => 'ឈ្មោះរបស់គណនី';
	@override String get productDescription => 'ការពិពណ៌នារបស់ផលិផផល';
	@override String get floatAmount => 'ចំនួនទសភាគ';
	@override String get earmarkAmount => 'ចំនួនទឹកប្រាក់កំណត់';
	@override String get drawingLimit => 'ការកំណត់លើការដកប្រាក់';
	@override String get openSince => 'បើកចាប់តាំងពី';
	@override String get swiftTransferInstruction => 'ការណែនាំអំពីការផ្ទេរប្រាក់តាម SWIFT';
	@override String get banksAddress => 'អាសយដ្ឋានរបស់ធនាគារ:';
	@override String get tel => 'លេខទំនាក់ទំនង';
	@override String get field56A => 'ទីតាំង ៥៦A:';
	@override String get intermediaryBank => 'ធនាគារអន្តរការី';
	@override String get intermediarySWIFT => 'SWIFT អន្តរការី';
	@override String get intermediaryAddress => 'អាសយដ្ឋានអន្តរការី:';
	@override String get field57A => 'ទីតាំង ៥៧A:';
	@override String get beneficiaryBank => 'ធនាគារទទួល:';
	@override String get beneficiarySWIFT => 'SWIFT ទទួល:';
	@override String get beneficiaryAddress => 'អាសយដ្ឋានទទួល:';
	@override String get email => 'សារអេឡិចត្រូនិក:';
	@override String get field59A => 'ទីតាំង ៥៩A:';
	@override String get beneficiaryName => 'ឈ្មោះអ្នកទទួល:';
	@override String get beneficiaryAccountNumber => 'លេខគណនីអ្នកទទួល:';
	@override String get currentAccount => 'លេខគណនី​បច្ចុប្បន្ន';
	@override String get hiTherePleaseFindMyBICBankAccount => 'សួស្តី! សូមស្វែងរកព័ត៌មានលម្អិតនៃគណនីធនាគារ BIC របស់ខ្ញុំខាងក្រោម៖';
	@override String get totalSavingsAmount => 'ចំនួនសន្សំសរុប';
	@override String get openSavingAccount => 'បើកគណនីសន្សំ';
	@override String get list => 'បញ្ជី';
	@override String get principalAmount => 'ចំនួនដើម';
	@override String get downloadCertificate => 'ទាញយកវិញ្ញាបនបត្រ';
	@override String get settlement => 'ទូទាត់របាយការណ៏';
	@override String get interest => 'ការប្រាក់';
	@override String get term => 'លក្ខខណ្ឌ';
	@override String get valueDate => 'កាលបច្ឆេទការប្រាក់';
	@override String get selectTheReceivingAccount => 'ជ្រើសរើសគណនីដែលទទួលយក';
	@override String get earlySettlement => 'ទូទាត់របាយការណ៏ថ្មីៗ';
	@override String get earlySettlementQuestion => 'ប្រសិនបើអ្នកដកប្រាក់មុនថ្ងៃកំណត់ អ្នកនឹងបាត់បង់ការប្រាក់។ តើអ្នកប្រាកដថានៅចង់ដក់ប្រាក់មែនទេ?';
	@override String get maturityDate => 'កាលបរិច្ឆេទចុងគ្រា';
	@override String get stay => 'ស្ថិតនៅ';
	@override String get onMaturityDate => 'ក្នុងកាលបរិច្ឆេទចុងគ្រា';
	@override String get productType => 'ប្រភេទផលិតផល';
	@override String get productName => 'ឈ្មោះផលិតផល';
	@override String get currentPrincipal => 'ប្រាក់ដើមពេល​បច្ចុប្បន្ន';
	@override String get totalDisbursement => 'ចំនួនសរុបនៃការទូទាត់';
	@override String get totalDisbursementAmount => 'ចំនួនបញ្ចេញសរុប';
	@override String get branchName => 'ឈ្មោះសាខា';
	@override String get contractNumber => 'លេខកិច្ចសន្យា';
	@override String get referenceID => 'លេខយោង';
	@override String get originalTransaction => 'ប្រតិបត្តិការដើម';
	@override String get openDate => 'កាលបរិច្ឆេទបើក';
	@override String get nextCollectionDate => 'កាលបរិច្ឆេទប្រមូលបន្ទាប់';
	@override String get explore => 'ស្វែងរក';
	@override String get totalDebt => 'ជំពាក់សរុប';
	@override String get hereTransferInstruction => 'នេះគឺការណែនាំអំពីការផ្ទេរប្រាក់តាម SWIFT របស់ខ្ញុំ';
	@override String get sent => 'បានផ្ញើ';
	@override String get showInactive => 'បង្ហាញកាត់មិនដំណើរការ';
	@override String get hideInactive => 'លាក់កាត់ដំណើរការ';
	@override String get amountMustBeLessThanToAmount => 'ចំនួនទឹកប្រាក់ត្រូវតែតិចជាងចំនួនទឹកប្រាក់ត្រូវទូទាត់';
	@override String get status => 'ស្ថានភាព';
	@override String get noImage => 'គ្មានរូបភាព';
	@override String get selectDateRange => 'ជ្រើសរើសចន្លោះកាលបរិច្ឆេទ';
	@override String get enterAmount => 'បញ្ចូលចំនួនទឹកប្រាក់';
	@override String get overview => 'ទិដ្ឋភាពទូទៅ';
	@override String get own => 'ផ្ទាល់ខ្លួន';
	@override String get borrow => 'ខ្ចី';
	@override String get total => 'សរុប';
	@override String get noStatisticsYet => 'មិនទាន់មានស្ថិតិនៅឡើយទេ';
	@override String get noStatisticsYetContent => 'តារាងមើលទិដ្ឋភាពទូទៅរបស់អ្នកនឹងចាប់ផ្តើមតាមដាននៅពេលដែលអ្នកបើកកាតឥណទាន ឬខ្ចីប្រាក់';
	@override String get thereIsNoCardLinkedToThisAccount => 'ឥឡូវ​នេះ មិនមានកាតភ្ជាប់ជាមួយគណនីនេះទេ។';
	@override String get pleaseSelectDate6NearestMonths => 'សូមជ្រើសរើសការណ៍នៃកាលបរិច្ឆេទក្នុងរយៈពេល 6 ខែចុងក្រោយ។';
	@override String get pleaseSelectDate365NearestDays => 'សូមជ្រើសរើសការណ៍នៃកាលបរិច្ឆេទក្នុងរយៈពេល ១ ឆ្នាំចុងក្រោយ។';
	@override String get invalidDate => 'កាលបរិច្ឆេទ​មិន​ត្រឹមត្រូវ។';
	@override String get billPayment => 'ការទូទាត់វិក្កយបត្រ';
	@override String get openNewAccount => 'បើកគណនីថ្មី';
	@override String get openNewSaving => 'បើកគណនីសន្សំថ្មី';
	@override String get savingsAccount => 'គណនី​សន្សំ';
	@override String get fixedDeposit => 'ប្រាក់បញ្ញើមានកាលកំណត់';
	@override String get openSavingsAccount => 'បើកគណនីសន្សំ';
	@override String get savingAccountDesc => 'ការបើកគណនីសន្សំជាមួយiBankអ្នកនឹងទទួលបានអត្រាការប្រាក់ដ៏គួរឱ្យចាប់អារម្មណ៍ដែលអាចជួយអ្នកឱ្យសម្រេចបាននូវគោលដៅហិរញ្ញវត្ថុរបស់អ្នក។';
	@override String get fixedDepositDesc => 'ការរៀបចំផែនការសម្រាប់ការវិនិយោគរយៈពេលវែងជាមួយនឹងអត្រាការប្រាក់ដ៏អស្ចារ្យលើគណនីបញ្ញើមានកាលកំណត់ពី';
	@override String get selectNewAccountCurrency => 'ជ្រើសរើសរូបិយប័ណ្ណសំរាប់គណនីថ្មី។';
	@override String get despositAmount => 'ការដាក់ចំនួនទឹកប្រាក់';
	@override String despositAmountError({required Object amount, required Object currency}) => 'ចំនួនតូចបំផុតគឺ${amount} ${currency}';
	@override String get yourAreAboutToOpenNew => 'អ្នកកំពុងដំណើរការបង្កើតគណនីថ្មី';
	@override String get interestRate => 'អត្រាការប្រាក់ (p.a.)';
	@override String get sourceAccount => 'ប្រភពពិគណនី';
	@override String get openSavingAccountSuccessMsg => 'អ្នកបានបើកគណនីសន្សំថ្មីបានដោយជោគជ័យ';
	@override String get viewAccount => 'មើលគណនី';
	@override String get savingAccountDesc1 => '0.50% សម្រាប់គណនី USD និង 1.00% សម្រាប់គណនី KHR';
	@override String get savingAccountDesc2 => 'គ្មានថ្លៃសេវាប្រចាំខែបន្ត';
	@override String get savingAccountDesc3 => 'ការបើកគណនីមិនគិតថ្លៃ';
	@override String get failedToOpenSavingsAccount => 'បរាជ័យក្នុងការបើកគណនីសន្សំថ្មី។ សូមព្យាយាមម្តងទៀតឬទាក់ទងទៅកាន់លេខទូរសព្ទក្តៅរបស់យើងសម្រាប់ការគាំទ្រ។';
	@override String get savingAccountDesc4 => 'ត្រូវការការដាក់ប្រាក់ 10 USD ឬ 40,000 KHR ដើម្បីបើកគណនី';
	@override String get savingAccountRules => 'ត្រូវការការដាក់ប្រាក់ 50 USD ឬ 0 KHR ដើម្បីបើកគណនី';
	@override String get savingAccountDesc5 => 'អតិថិជនអាចបើកគណនីបន្ថែមបានពីរសម្រាប់ USD / KHR';
	@override String get savingAccountTerm => 'ដោយចុច "បន្ទាប់" អ្នកយល់ព្រមនឹងលក្ខខណ្ឌនិងលក្ខខណ្ឌរបស់ iBank';
	@override String get insufficientBalance => 'ចំនួនទឹកប្រាក់មិនគ្រប់គ្រាន់';
	@override String get insufficientBalanceDescription => 'គណនីរបស់អ្នកមិនមានចំនួនទឹកប្រាក់គ្រប់គ្រាន់ដើម្បីប្រតិបត្តិប្រតិបត្តិការនេះទេ។';
	@override String get reachedMaximumAccountLimitation => 'បានឈានដល់ដែនកំណត់គណនីអតិបរមា';
	@override String reachedMaximumAccountLimitationDesc({required Object currency}) => 'អ្នកមិនអនុញ្ញាតអោយរបើកគណនីថ្មីជារូបិយប័ណ្ណ ${currency} នោទេ ព្រោះអតិថិជនម្នាក់យើងអនុញ្ញាតអោយមានពីរគណនីតែប៉ុនោ។';
	@override String get attractiveInterestRate => 'អត្រាការប្រាក់ដែលអស្ចារ្យ';
	@override String get noOngoingMonthlyFee => 'គ្មានថ្លៃសេវាប្រចាំខែបន្ត';
	@override String get noFeeAccountOpening => 'គ្មានថ្លៃសេវាប្រចាំខែ';
	@override String get feesCharges => 'ថ្លៃសេវា & ការគិតថ្លៃ';
	@override String get ableToEarlySettlement => 'យើងអាចធ្វើធ្វើរបាយការតាំងពីដំបូង។';
	@override String get depositAccDesc1 => 'អ្នកទទួលចំណូលបានប្រាក់ដល់ 6.25% លើគណនីជាប្រាក់រៀលដែលចាប់ផ្តើមពី 2,000,000 រៀលខ្មែរ';
	@override String get depositAccDesc2 => 'អ្នកទទួលចំណូលបានប្រាក់ដល់ 6.25% លើគណនីជាប្រាក់ ដុល្លារដែលចាប់ផ្តើមពី 500 ដុល្លារអាមេរិក។';
	@override String get depositAccDesc3 => 'ជ្រើសរើសកម្រិតពេលវេលារយៈពេលចាប់ពី 3 ខែ ទៅរយៈពេលបីខែនិងប្រាំពីបីខែ';
	@override String get depositAccDesc4 => 'ការជ្រើសរើសការដាក់ប្រាក់ដែលទទួលបានការប្រាក់នៅពេលចុងគ្រាឬការប្រាក់ប្រចាំខែ';
	@override String get openFixedDeposit => 'បើកគណនីដាក់ប្រាក់បញ្ញើមានកាលកំណត់';
	@override String get interestPayment => 'ការបង់ការប្រាក់';
	@override String get depositAmount => 'ចំនួនទឹកលុយបានដាក់';
	@override String get maturityTerms => 'លក្ខខណ្ឌចុងគ្រា';
	@override String get maturityInstructions => 'ការណែនាំលក្ខខណ្ឌចុងគ្រា';
	@override String get depositTerm => 'ដោយចុច "បើក" អ្នកយល់ព្រមនឹងលក្ខខណ្ឌរបស់ iBank';
	@override String get interestPaymentOptions => 'ជម្រើសការបង់ការប្រាក់';
	@override String get interestAtMaturity => 'ការទទួលបា់នការប្រាក់ ពេលចុងគ្រា';
	@override String get interestAtMaturityDesc => 'ការប្រាក់បញ្ញើនឹងត្រូវបង់ទៅគណនីរបស់អ្នកនៅពេលដល់កំណត់ រួមជាមួយនឹងចំនួនប្រាក់ដើមបញ្ញើ';
	@override String get monthlyInterest => 'ការប្រាក់ប្រាំខែ';
	@override String get monthlyInterestDesc => 'ចំនួនការប្រាក់នឹងត្រូវបានបង់ទៅគណនីរបស់អ្នកជារៀងរាល់ខែ ហើយចំនួនទឹកប្រាក់ដើមដែលអ្នកបាដាក់នឹងត្រូវបានបង់នៅពេលចុងគ្រា។.';
	@override String get youreSendingADeposit => 'អ្នកកំពុងធ្វើប្រតិបត្តិការដាក់ប្រាក់';
	@override String get duration => 'រយៈពេល';
	@override String get noticeDesc => 'ចំនួនពន្ធអាចប្រែប្រួលទៅតាមស្ថានភាពលំនៅដ្ឋានរបស់អ្នក​ ហើយអ្នកនឹងទទួលបានការប្រាក់តាមកាលបរិច្ឆេទ';
	@override String get depoistResultSuccessDesc => 'អ្នកបានបើក​​ គណនីបញ្ញើមានកាលកំណត់បានដោយជោគជ័យ';
	@override String get closeAtMaturity => 'ជិតដល់ពេលកំណត់';
	@override String get time => 'ពេលវាលា';
	@override String get notice => 'សេចក្ដីជូនដំណឹង';
	@override String get initialDepositAmount => 'ការដាក់ចំនួនទឹកប្រាក់បញ្ញើដំបូង';
	@override String get depositResultFailedDesc => 'អ្នកបានបរាជ័យក្នុងការបើកគណនីបញ្ញើមានកាលកំណត់';
	@override String get tryAgain => 'ព្យាយាម​ម្ដង​ទៀត';
	@override String get originalAmount => 'គណនីដំបូង';
	@override String get transactionDetailsTitle => 'ព័ត៌មានលម្អិតអំពីប្រតិបត្តិការ';
	@override String get permissionImageFail => 'ដើម្បីទាញយូរ QR​ កូដ​ សូមអនុញ្ញាតអោយ iBank អាចធ្វើការចូលក្នុងរូបថតរបស់អ្នក។';
	@override String get changeAccountNickName => 'ផ្លាស់ប្តូរគណនីឈ្មោះហៅក្រៅរបស់អ្នក';
	@override String get accountNickname => 'ឈ្មោះគណនី ហៅក្រៅ';
	@override String get last30Days => '30 ថ្ងៃចុងក្រោយ';
	@override String get permissionSaveImageFail => 'ដើម្បីទាញយក QR សូមអនុញ្ញាតឱ្យ iBank អាចចូលអាល់ប៊ុមរូបថតរបស់អ្នក។';
	@override String get failedToDownload => 'អ្នកបរាជ័យក្នុងការទាញយក';
	@override String get payBill => 'បង់វិក្កយបត្រ';
	@override String get settleUp => 'ដោះស្រាយ';
	@override String get earlyClosure => 'បិទមុន';
	@override String get closeTermDepositEarly => 'ប្រសិនបើអ្នកបិទប្រាក់បញ្ញើសម្រាប់ការកំណត់មុន ការប្រាក់របស់អ្នកនឹងត្រូវបាត់បង់។ តើអ្នកពិតជាចង់បន្តទេ?';
	@override String get openNewDeposit => 'បើកការដាក់ប្រាក់ថ្មី';
}

// Path: currencyType
class _TranslationsCurrencyTypeKm extends _TranslationsCurrencyTypeEn {
	_TranslationsCurrencyTypeKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get usd => 'USD';
	@override String get khr => 'KHR';
}

// Path: cardRepayment
class _TranslationsCardRepaymentKm extends _TranslationsCardRepaymentEn {
	_TranslationsCardRepaymentKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'ការទូទាត់ឥណទាន';
	@override String get toCardNumber => 'ទៅលេខកាត';
	@override String get cardName => 'ឈ្មោះកាត';
	@override String get repaymentMethod => 'វិធីសាស្រ្តទូទាត់សង';
	@override late final _TranslationsCardRepaymentOptionKm option = _TranslationsCardRepaymentOptionKm._(_root);
}

// Path: billPayment
class _TranslationsBillPaymentKm extends _TranslationsBillPaymentEn {
	_TranslationsBillPaymentKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get deleteFavorite => 'លុបចូលចិត្តា';
	@override String get deleteFavoriteDescription => 'តើអ្នកប្រហែលជាចង់លុបវាប្រចាំមួយនេះមែនទេ?';
	@override String get billPayment => 'ការទូទាត់វិក្កយបត្រ';
	@override String get topUp => 'បញ្ចូលទឹកប្រាក់';
	@override String get internetTV => 'ការទូទាត់់អ៊ីនធឺណិត និងទូរទស្សន៍';
	@override String get utilities => 'បង់វិក្កយបត្រទឹក & ភ្លើង';
	@override String get education => 'ការអប់រំ';
	@override String get insurance => 'ធានារ៉ាប់រង';
	@override String get entertainment => 'កម្សាន្ត';
	@override String get realEstate => 'អចលនទ្រព្យ';
	@override String get tradingDistribution => 'ពាណិជ្ជកម្ម និងចែកចាយ';
	@override String get otherPayment => 'ការទូទាត់់ផ្សេងៗ';
	@override String get favorites => 'ចំណង់ចំណូលចិត្ត';
	@override String get schedule => 'កាលវិភាគ';
	@override String get schedulePayment => 'កាលវិភាគទូទាត់';
	@override String get phoneNumber => 'លេខទូរស័ព្ទ';
	@override String get enterPhoneNumber => 'បញ្ចូលលេខទូរស័ព្ទ';
	@override String get enterContactId => 'បញ្ចូលលេខសម្គាល់កិច្ចសន្យា';
	@override String get enterCustomerId => 'បញ្ចូលលេខសម្គាល់អតិថិជន';
	@override String get enterStudentId => 'បញ្ចូលលេខសម្គាល់សិស្ស';
	@override String get enterPolicyNumber => 'បញ្ចូលលេខសម្គាល់គោលនយោបាយ';
	@override String get enterSNumber => 'បញ្ចូលលេខ S';
	@override String get enterInvoiceId => 'បញ្ចូលលេខសម្គាល់វិក្កយបត្រ';
	@override String get enterSabbyAccount => 'បញ្ចូលគណនី Sabby';
	@override String get amount => 'ចំនួនទឹកប្រាក់';
	@override String get khr => 'រៀល';
	@override String get provider => 'អ្នកផ្តល់សេវា';
	@override String get paidTo => 'ទូទាត់ទៅកាន់';
	@override String get receiver => 'អ្នកទទួល';
	@override String get fee => 'ថ្លៃឈ្នួល';
	@override String get service => 'សេវាកម្ម';
	@override String get supportedProvider => 'អ្នកផ្តល់សេវាគាំទ្រ';
	@override String get cellcard => 'ប្រព័ន្ធ ​Cellcard';
	@override String get selectContact => 'ជ្រើសរើសលេខទំនាក់ទំនង';
	@override String get smart => 'ប្រព័ន្ធ​ Smart';
	@override String get yesPhone => 'ប្រព័ន្ធ​ Yesphone';
	@override String get coolTel => 'ប្រព័ន្ធ​ CoolTel';
	@override String get seatel => 'ប្រព័ន្ធ​ Seatel';
	@override String get metfone => 'ប្រព័ន្ធ​ Metfone';
	@override String get yourPhone => 'លេខទូរស័ព្ទ​របស់​អ្នក';
	@override String get contactId => 'លេខសម្គាល់កិច្ចសន្យា';
	@override String get customerId => 'លេខសម្គាល់អតិថិជន';
	@override String get invoiceId => 'លេខសម្គាល់វិក្កយបត្រ';
	@override String get studentId => 'លេខសម្គាល់សិស្ស';
	@override String get sabayAccount => 'គណនីសប្បាយ';
	@override String get policyNumber => 'លេខសម្គាល់គោលនយោបាយ';
	@override String get transactionId => 'លេខសម្គាល់ប្រតិបត្តិការ';
	@override String get tracingCode => 'លេខកូដសំរាប់តាមដាន';
	@override String get newPayment => 'ការទូទាត់ទឹកប្រាក់ថ្មី';
	@override String get paymentProcess => 'ប្រតិបត្តិការនៃការទូរទាត់ប្រាក់';
	@override String get successfulPayment => 'ការទូទាត់ទទួលបានជោគជ័យ';
	@override String get failedPayment => 'ការទូទាត់បានបរាជ័យ';
	@override String get submitBillError => 'ការទូទាត់បានបរាជ័យ';
	@override String get unableToProcess => 'មិនអាចដំណើរការបាន';
	@override String get paymentToProcess => 'ការទូទាត់កំពុងធ្វើំដំណើរការ';
	@override String get billNotFound => 'មិនមានវិក្កយបត្រ';
	@override String get cancelPaymentTitle => 'បោះបង់ការទូទាត់?';
	@override String get cancelPaymentDesc => 'ព័ត៌មានដែលបញ្ចូលទាំងអស់នឹងត្រូវបានលុប';
	@override String get noted => 'សម្គាល់: ';
	@override String get exchangeRateNoted => 'ចំនួនទឹកប្រាក់ដែលដកគឺគណនាដោយស្វ័យប្រវត្តិផ្អែកលើអត្រាប្តូរប្រាក់។';
	@override String get customerName => 'ឈ្មោះ​អតិថិជន';
	@override String get invalidCustomerId => 'អតិថិជនមិនមានក្នុងប្រព័ន្ធ';
	@override String get payBy => 'បង់ដោយ';
	@override String get expiryAt => 'ផុតកំណត់នៅ\n';
	@override late final _TranslationsBillPaymentDescKm desc = _TranslationsBillPaymentDescKm._(_root);
	@override String get exchangeRate => 'អត្រាប្តូរប្រាក់';
	@override String get paymentAmount => 'ចំនួនទឹកប្រាក់ត្រូវទូទាត់';
	@override String get debitAmount => 'ចំនួនទឹកប្រាក់ត្រូវដក';
	@override String get crossCurrencyNote => 'ចំនួនទឹកប្រាក់ដែលដកគឺគណនាដោយស្វ័យប្រវត្តិផ្អែកលើអត្រាប្តូរប្រាក់។';
	@override String get changeProvider => 'ប្តូរអ្នកផ្គត់ផ្គង់';
	@override String get changeProviderDesc => 'តើអ្នកប្រាកដទេថាចង់ផ្លាស់ប្តូរអ្នកផ្គត់ផ្គង់ក្នុងការទូទាត់វិក្កយបត្រនេះ?';
	@override String get edcAmountSupportTextfield => 'ចំនួនទឹកប្រាក់គួរតែនៅចន្លោះពី 100 ទៅ 400,000,000 រៀល';
	@override String get noFavorite => 'មិនមានគំរូ';
	@override String get createYourFirstFavorite => 'បង្កើតគំរូថ្មីសម្រាប់ការទូទាត់រហ័ស​​';
	@override String get addNewFavorite => 'ការបន្ថែមគំរូ';
	@override String get selectBillPaymentService => 'ជ្រើសរើសសេវាកម្មសំរាប់ទូទាត់វិក្កយបត្រ';
	@override String get invoiceExpiredTitle => 'វិក្កយបត្របានផុតកំណត់';
	@override String get edc => 'អគ្គិសនីកម្ពុជា';
	@override String get invalidInvoiceId => 'លេខសម្គាល់វិក្កយបត្រមិនត្រឹមត្រូវ';
	@override String get invalidAmount => 'ចំនួនទឹកប្រាក់មិនត្រឹមត្រូវ';
	@override String get exceedDailyLimit => 'លើសពីដែនកំណត់នៃការចំណាយប្រចាំថ្ងៃ';
	@override String get exceedMonthlyLimit => 'លើសដែនកំណត់នៃការចំនាយប្រចាំខែ';
	@override String get exceedTransactionLimit => 'លើសពីដែនកំណត់នៃការប្រតិបត្តិការ';
	@override String get insufficientBalanceDescription => 'ចំនួនទឹកប្រាក់ក្នុងគណនីរបស់អ្នកមិនគ្រប់គ្រាន់ដើម្បីប្រតិបត្តិប្រតិបត្តិការនេះទេ។ សូម​ព្យាយាម​ម្តង​ទៀត។';
	@override String get insufficientBalance => 'ចំនួនទឹកប្រាកមិនគ្រប់គ្រាន់';
	@override String get rename => 'ផ្លាក់ប្ដូឈ្មោះ';
	@override String get overdueDate => 'កាលបរិច្ឆេទផុតកំណត់';
	@override List<String> get dateTimeDesc => [
		'ថ្ងែស្អេក',
		'ថ្ងៃនេះ',
		'ម្សិលមិញ',
	];
	@override String minAmountValidateError({required Object minAmount}) => 'ចំនួនទឹកប្រាក់ទូទាត់តូចបំផុតគឺ ${minAmount}';
	@override String maxAmountValidateError({required Object maxAmount}) => 'ចំនួនទឹកប្រាក់ទូទាត់ធំបំផុតគឺ ${maxAmount}';
	@override String get noBillToPayError => 'មិនមានវិក្កយបត្រដែលត្រូវបង់';
	@override String get billExpiredError => 'វិក្កយបត្របានផុតកំណត់';
	@override String limitAmountTerms({required Object minAmount, required Object maxAmount, required Object currency}) => 'ចំនួនទឹកប្រាក់គួរតែនៅចន្លោះពី ${minAmount} ទៅ ${maxAmount} ${currency}';
	@override String get scanBarcodeAppbarTitle => 'ស្កេន QR/Barcode';
	@override String get alignFrameWithBarCode => 'តម្រឹមស៊ុមជាមួយ QR/Barcode';
	@override String get uploadBarcode => 'បង្ហោះ QR/Barcode';
	@override String get serviceSupports => 'សេវាកម្មរបស់យើងតែងាយស្រួលបានកម្មសិទ្ធិការរបស់កម្ពុជាប៉ុណ្ណោះ';
	@override String get edcInvalidCustomerId => 'អតិថិជនមិនមានក្នុងប្រព័ន្ធ។';
	@override String get partialPayNotAccepted => 'មិនអាចទូទាត់ប្រាក់តិចជាងប្រាក់ ត្រូវទូទាត់។';
	@override String get exceedPayNotAccepted => 'មិនអាចទូទាត់ប្រាក់ច្រើនជាងប្រាក់ត្រូវទូទាត់។';
	@override String get limitAmount => 'ចំនួនទឹកប្រាក់គួរតែនៅចន្លោះពី 100 ទៅ 400,000,000 រៀល';
	@override String get selectFavoriteBill => 'ជ្រើសរើសវិក័យប័ត្រដែលចូលចិត្ត';
	@override String get favoriteBill => 'វិក្កយបត្រចូលចិត្ត';
	@override String get bankReference => 'លេខសម្គាល់ធនាគារ';
	@override String get nickName => 'ឈ្មោះហៅក្រៅ';
	@override String get favoriteUpdateSuccess => 'ការធ្វើបច្ចុប្បន្នភាពដែលចូលចិត្តដោយជោគជ័យ';
	@override String get saveFavoriteSuccess => 'រក្សាទុកសំណព្វដោយជោគជ័យ';
	@override String get expiredDate => 'កាលបរិច្ឆេទផុតកំណត់';
	@override String subscriptAutoPayTC({required Object accountNo}) => 'ខ្ញុំយល់ព្រមថាគណនី ${accountNo} នឹងបង់ថ្លៃអគ្គិសនីដោយស្វ័យប្រវត្តិ បន្ទាប់ពី EDC ចេញវិក្កយបត្រប្រចាំខែនីមួយៗ។';
	@override String get duplicateSubscribedAcc => 'គណនីនេះត្រូវបានចុះឈ្មោះរួចហើយ';
	@override String get autoPaymentDuplicateSubscribe => 'អតិថិជនបានភា្ជប់រួចរាល់ម្ដងហើយ!';
	@override String get refCode => 'លេខសម្គាល់ប្រតិបត្តិការ';
}

// Path: userDevices
class _TranslationsUserDevicesKm extends _TranslationsUserDevicesEn {
	_TranslationsUserDevicesKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'ឧបករណ៍';
	@override String registerDate({required Object date}) => 'ថ្ងៃចុះឈ្មោះ៖ ${date}';
	@override String get warningMessage => 'មានតែទូរស័ព្ទមួយប៉ុណ្ណោះដែលអាចដំណើរការបានក្នុង​ពេលតែមួយ។ ដើម្បីប្រើកម្មវិធីនៅលើទូរស័ព្ទផ្សេងទៀត សូមផ្លាស់ប្តូរកម្មវិធីបច្ចុប្បន្នរបស់អ្នក មុនពេលចូលទៅក្នុងទូរស័ព្ទថ្មី។';
	@override String get revokeDevide => 'ដកហូតឧបករណ៍';
	@override String get revoke => 'ដកហូត';
	@override String get popUpWarningMessage => 'ធនាគារ iBank នឹងមិនស្នើសុំឱ្យអ្នកផ្លាស់ប្តូរទូរស័ព្ទរបស់អ្នកទេ។ រក្សាការប្រុងប្រយ័ត្ន ហើយត្រូវប្រាកដថាដើម្បីផ្លាស់ប្តូរទូរស័ព្ទ លុះត្រាតែអ្នកចង់ផ្លាស់ទីគណនីរបស់អ្នកទៅទូរស័ព្ទផ្សេងទៀត។';
}

// Path: withdraw
class _TranslationsWithdrawKm extends _TranslationsWithdrawEn {
	_TranslationsWithdrawKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get withdrawMsg => 'រួចរាល់ក្នុងការដកប្រាក់ពីម៉ាស៊ីន ATM';
	@override String get yourWithdrawCode => 'លេខកូដសំរាប់ដកប្រាក់';
	@override String get atmWithdrawal => 'ការដកប្រាក់តាមរយះ ATM';
}

// Path: qrTransfer
class _TranslationsQrTransferKm extends _TranslationsQrTransferEn {
	_TranslationsQrTransferKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'ការផ្ទេរប្រាក់តាមរយះ QR';
	@override String get exchangeRate => 'អត្រាប្តូរប្រាក់';
	@override String get debitAmount => 'ចំនួនទឹកប្រាក់បានដក';
}

// Path: fxExchangeRate
class _TranslationsFxExchangeRateKm extends _TranslationsFxExchangeRateEn {
	_TranslationsFxExchangeRateKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get fxRate => 'អត្រាប្តូរប្រាក់';
	@override String get iBankBuys => 'iBank ទិញ';
	@override String get iBankSells => 'iBank លក់';
	@override String get atmBranches => 'ម៉ាស៊ីនអេស៊ីធី និងសាខា';
	@override String get branches => 'សាខា';
	@override String get atm => 'ម៉ាស៊ីនអេស៊ីធី';
	@override String get faqs => 'សំណួរសួរញឹកញាប់';
	@override String get enterKeywords => 'បញ្ចូលពាក្យគន្លឹះ';
	@override String get lastUpdatedTime => 'ការផ្លាប្ដូពេលវាលាចុងក្រោយ';
	@override String get calculator => 'ម៉ាស៊ីនគិតលេខ';
	@override String get calculatorDescription => 'អត្រាប្តូរប្រាក់នឹងត្រូវគណនាដោយស្វ័យប្រវត្តិនៅពេលអ្នកបញ្ចូលទឹកប្រាក់ក្នុងប្រអប់រូបិយប័ណ្ណណាមួយ។';
	@override String get calculatorErrorMessage => 'អត្រាប្តូរប្រាក់កំពុងត្រួតពិនិត្យមើល. សូមព្យាយាមម្តងទៀត.';
	@override String get failedToDirection => 'បរាជ័យក្នុងការនាំទិសដៅ';
	@override String get failedToDirectionDescription => 'ដើម្បីបញ្ជូនទៅទីតាំងនេះ, សូមអនុញ្ញាតឱ្យ IBank ចូលដំណើរការទីតាំងរបស់អ្នក';
}

// Path: taskToDo
class _TranslationsTaskToDoKm extends _TranslationsTaskToDoEn {
	_TranslationsTaskToDoKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'ភារកិច្ចត្រូវធ្វើ';
	@override String get upgradingYourIdentityVerification => 'ការផ្លាស់ប្តូរផ្ទៀងផ្ទាត់អត្តសញ្ញាណរបស់អ្នក';
	@override String get enhanceYourBankingExperienceByUpgradingYourKYC => 'កែលម្អបទពិសោធន៍ធនាគាររបស់អ្នកដោយការផ្លាស់ប្តូរផ្ទៀងផ្ទាត់នៅ KYC ពត៍មានរបស់អ្នក';
	@override String get electriciteDuCambodge => 'អគ្គិសនីកម្ពុជា';
	@override String get customerID => 'លេខសម្គាល់អតិថិជន';
	@override String get creditCardRepayment => 'ការទូទាត់កាតឥណទាន';
	@override String get identityVerification => 'ការផ្ទៀងផ្ទាត់អត្តសញ្ញាណ';
	@override String get verifyYourIdentity => 'សូមផ្ទៀងផ្ទាត់អត្តសញ្ញាណរបស់អ្នក';
	@override String get makeTransactionWithHigherAmount => 'ការធ្វើប្រតិបត្តិការជាមួយចំនួនទឹកប្រាក់ខ្ពស់ជាងមុន';
	@override String get noLimitOfTransactionInAMonth => 'គ្មានការកំណត់នៃប្រតិបត្តិការក្នុងមួយខែ';
	@override String get receiveSpecialCareOfBankStaff => 'ទទួលការថែទាំពិសេសពីបុគ្គលិកធនាគារ';
	@override String get completeAllDocumentForFutureUsages => 'សូមបំពេញឯកសារទាំងអស់សម្រាប់ការប្រើប្រាស់នាពេលអនាគត';
	@override String get upgradingYourKycLevel => 'ការផ្លាស់ប្តូរមកកម្រិត KYC ថ្មី';
	@override String get upgradingYourEKYCDesc => 'ការណែនាំជាជំហាន ៗ ដើម្បីំអនុញ្ចាតិអោយអ្នកធ្វើតាមនៃការធ្វើឱ្យដំឡើង KYC របស់អ្នក។';
	@override String get step => 'ជំហាន';
	@override String get goToAnyIBankSBranch => 'ទៅកាន់សាខាណាមួយរបស់ iBank';
	@override String get contactTellerToRequestUpgradingKycLevel => 'ធ្វើការទាក់ទងទៅកាន់ Teller ដើម្បីស្នើសុំការដំឡើងកម្រិត KYC';
	@override String get providePersonalDocumentAsTellerGuideline => 'ផ្តល់ឯកសារផ្ទាល់ខ្លួនតាមការណែនាំរបស់ Teller';
	@override String get fillInARegistrationFormAndWaitForProcess => 'បំពេញបែបបទចុះឈ្មោះ នឹងរង់ចាំដំណើរការ';
	@override String get findIBankBranch => 'ស្វែងរកសាខា iBank';
	@override String get enableCamera => 'បើកការចូលប្រើកាមេរ៉ាដើម្បីបង្កើនបទពិសោធន៍ iBank របស់អ្នក';
	@override String get wouldLikeAccessCamera => '“iBank” ចង់ចូលប្រើកាមេរ៉ា របស់អ្នក';
	@override String get receiveRealNotificaiton => 'ទទួលបានការធ្វើបច្ចុប្បន្នភាពបច្ចុប្បន្នដោយមានការជូនដំណឹងតាមកម្មវិធី';
	@override String get wouldLikeSendNotificaion => '“iBank” ចង់ផ្ញើការជូនដំណឹងមកអ្នក';
}

// Path: editLayout
class _TranslationsEditLayoutKm extends _TranslationsEditLayoutEn {
	_TranslationsEditLayoutKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get editLayout => 'កែសម្រួលប្លង់';
	@override String get frequentTransfers => 'ការផ្ទេរញឹកញាប់';
	@override String get payBillsEffortlesslySecurely => 'បង់វិក្កយបត្ររបស់អ្នកបានយ៉ាងងាយស្រួលនិងសុវត្ថិភាព';
	@override String get transferFrequentBeneficiary => 'ផ្ទេរទៅអ្នកទទួលប្រាក់ញឹកញាប់របស់អ្នកបានយ៉ាងលឿននិងសុវត្ថិភាព';
	@override String get rechargeAccountOrMobile => 'បញ្ចូលលុយទៅក្នុងគណនីរបស់អ្នកឬទូរស័ព្ទបានយ៉ាងងាយស្រួល';
	@override String get noWidgetHidden => 'គ្មានវិជ្ជមានត្រូវបានលាក់';
	@override String get transactionLimit => 'កំណត់ប្រតិបត្តិការ';
	@override String get newFavoriteBill => 'វិក្កយបត្រចូលចិត្តថ្មី';
	@override String get attractiveInterestRate => 'អត្រាការប្រាក់គួរឲ្យទាក់ទាញ';
	@override String get notificationSetting => 'ការកំណត់ការជូនដំណឹង';
	@override String get setDefaultAccount => 'កំណត់គណនីលំនាំដើម';
	@override String get bookTicketsEffortlesslySecurely => 'កក់សំបុត្រយ៉ាងងាយស្រួលនិងសុវត្ថិភាព';
	@override String get noWidgetDisplayed => 'គ្មានវិជ្ជមានត្រូវបានបង្ហាញ';
	@override String get hiddenWidgets => 'វិជ្ជមានដែលបានលាក់';
	@override String get controlPrivacySettingsDataPreferences => 'គ្រប់គ្រងការកំណត់ភាពឯកជន និងចំណង់ចំណូលចិត្តទិន្នន័យរបស់អ្នក';
	@override String get flightBooking => 'ការកក់ជើងហោះហើរ';
	@override String get busBooking => 'ការកក់ឡានបស្ស';
	@override String get purchaseInsurance => 'ទិញប័ណ្ណធានារ៉ាប់រង';
	@override String get displayedWidgets => 'វិជ្ជមានដែលបានបង្ហាញ';
	@override String get dragWidgets => 'អូសវិជ្ជមានដើម្បីរៀបចំឡើងវិញឬលាក់ពួកវា ហើយរក្សាទុកការផ្លាស់ប្តូររបស់អ្នកនៅពេលបញ្ចប់។';
}

// Path: saveBillBeneficiary
class _TranslationsSaveBillBeneficiaryKm extends _TranslationsSaveBillBeneficiaryEn {
	_TranslationsSaveBillBeneficiaryKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'រក្សាទុកជាគំរូ';
}

// Path: searchBillBeneficiary
class _TranslationsSearchBillBeneficiaryKm extends _TranslationsSearchBillBeneficiaryEn {
	_TranslationsSearchBillBeneficiaryKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get title => 'បញ្ជីគំរូទាំងអស់';
}

// Path: quickAction
class _TranslationsQuickActionKm extends _TranslationsQuickActionEn {
	_TranslationsQuickActionKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get payments => 'ការទូទាត់';
	@override String get tranfer => 'ផ្ទេរ';
	@override String get topUp => 'បន្ថែម';
	@override String get qrScan => 'ស្កេន QR';
}

// Path: asset.gPay
class _TranslationsAssetGPayKm extends _TranslationsAssetGPayEn {
	_TranslationsAssetGPayKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get addGPaySuccessTitle => 'បន្ថែមទៅ GPay ដោយជោគជ័យ';
	@override String get addGPaySuccessDescription => 'កាតរបស់អ្នកត្រៀមខ្លួនរួចរាល់ដើម្បីបង់ប្រាក់នៅហាងជាមួយ GPay';
	@override String get guideToGPay => 'ការណែនាំទៅកាន់ GPay';
}

// Path: cardRepayment.option
class _TranslationsCardRepaymentOptionKm extends _TranslationsCardRepaymentOptionEn {
	_TranslationsCardRepaymentOptionKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get paymentDue => 'ការទូទាត់សងដល់ពេលកំណត់';
	@override String get minimumAmount => 'ចំនួនទឹកប្រាក់តិចបំផុត';
	@override String get totalBalance => 'ចំនួនទឹកប្រាក់់សរុប';
	@override String get optionalAmount => 'ចំំនួនទឹកប្រាក់លើកលែង';
	@override late final _TranslationsCardRepaymentOptionDescKm desc = _TranslationsCardRepaymentOptionDescKm._(_root);
}

// Path: billPayment.desc
class _TranslationsBillPaymentDescKm extends _TranslationsBillPaymentDescEn {
	_TranslationsBillPaymentDescKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get payForInternetTv => 'ទូទាត់ប្រាក់សម្រាប់អ៊ីនធឺណិតនិងទូរទស្សន៍។';
	@override String get payForElectricityWaterWaste => 'ទូទាត់ប្រាក់សម្រាប់អគ្គិសនី ទឹក និងសំណល់។';
	@override String get payForEducation => 'ទូទាត់ប្រាក់សម្រាប់ការអប់រំនិងថ្លៃសិក្សា។';
	@override String get payForGamesApps => 'ទូទាត់ប្រាក់សម្រាប់ហ្គេមនិងកម្មវិធី។';
	@override String get payForInsurance => 'ទូទាត់ប្រាក់សម្រាប់ធានារ៉ាប់រង។';
	@override String get payForRealEstate => 'ទូទាត់ប្រាក់សម្រាប់អចលនទ្រព្យ។';
	@override String get payForOther => 'ទូទាត់ប្រាក់សម្រាប់អ្នកផ្គត់ផ្គង់ផ្សេងទៀត។';
	@override String get payForTrading => 'ទូទាត់ប្រាក់ដល់ដៃគូជំនួញឬអ្នកចែកចាយ។';
}

// Path: cardRepayment.option.desc
class _TranslationsCardRepaymentOptionDescKm extends _TranslationsCardRepaymentOptionDescEn {
	_TranslationsCardRepaymentOptionDescKm._(_TranslationsKm root) : this._root = root, super._(root);

	@override final _TranslationsKm _root; // ignore: unused_field

	// Translations
	@override String get payForDue => 'សូមបង់​មុន​ថ្ងៃផុតកំណត់​ដើម្បី​បញ្ចៀសបង់​ថ្លៃ​សេវា​យឺត និង​ការប្រាក់';
	@override String get payForMinimumAmount => 'សូមបង់​មុន​ថ្ងៃផុតកំណត់​ដើម្បី​បញ្ចៀស​បង់ថ្លៃ​សេវា​នៅពេលយឺតបង់តាមការកំណត់។';
	@override String get payForTotalBalance => 'បំណុលដែលនៅសេសសល់ថ្មី + របាយការណ៍សមតុល្យដែលនៅសល់';
	@override String get payForOptionalAmount => 'សូមបញ្ចូលចំនួនទឹកប្រាក់ដែលអ្នកចង់បង់';
}

// Path: <root>
class _TranslationsZh extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsZh.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zh,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <zh>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	@override late final _TranslationsZh _root = this; // ignore: unused_field

	// Translations
	@override String get underDevelopment => 'Under development';
	@override late final _TranslationsCommonZh common = _TranslationsCommonZh._(_root);
	@override List<String> get months => [
		'一月',
		'二月',
		'三月',
		'四月',
		'五月',
		'六月',
		'七月',
		'八月',
		'九月',
		'十月',
		'十一月',
		'十二月',
	];
	@override late final _TranslationsCloseDepositModelZh closeDepositModel = _TranslationsCloseDepositModelZh._(_root);
	@override late final _TranslationsAutoRejectedScreenZh autoRejectedScreen = _TranslationsAutoRejectedScreenZh._(_root);
	@override late final _TranslationsPasscodeZh passcode = _TranslationsPasscodeZh._(_root);
	@override late final _TranslationsLoginScreenZh loginScreen = _TranslationsLoginScreenZh._(_root);
	@override List<String> get dayAgo => [
		'Today',
		'Yesterday',
		'Monday',
		'Tuesday',
		'Wednesday',
		'Thursday',
		'Friday',
		'Saturday',
		'Sunday',
	];
	@override late final _TranslationsErrorsZh errors = _TranslationsErrorsZh._(_root);
	@override late final _TranslationsBiometricZh biometric = _TranslationsBiometricZh._(_root);
	@override late final _TranslationsMoveScreenZh moveScreen = _TranslationsMoveScreenZh._(_root);
	@override late final _TranslationsLoginZh login = _TranslationsLoginZh._(_root);
	@override late final _TranslationsHomeZh home = _TranslationsHomeZh._(_root);
	@override late final _TranslationsAssetZh asset = _TranslationsAssetZh._(_root);
	@override late final _TranslationsQrCodeZh qrCode = _TranslationsQrCodeZh._(_root);
	@override late final _TranslationsLoyaltyZh loyalty = _TranslationsLoyaltyZh._(_root);
	@override late final _TranslationsProductZh product = _TranslationsProductZh._(_root);
	@override late final _TranslationsVerifyPasscodeScreenZh verifyPasscodeScreen = _TranslationsVerifyPasscodeScreenZh._(_root);
	@override late final _TranslationsLanguageZh language = _TranslationsLanguageZh._(_root);
	@override late final _TranslationsWelcomeScreenZh welcomeScreen = _TranslationsWelcomeScreenZh._(_root);
	@override late final _TranslationsNotificationZh notification = _TranslationsNotificationZh._(_root);
	@override List<String> get greeting => [
		'早上好,',
		'下午好,',
		'晚上好,',
	];
	@override late final _TranslationsVerifyNumberPhoneScreenZh verifyNumberPhoneScreen = _TranslationsVerifyNumberPhoneScreenZh._(_root);
	@override late final _TranslationsVerifyOTPScreenZh verifyOTPScreen = _TranslationsVerifyOTPScreenZh._(_root);
	@override late final _TranslationsEKYCIntroScreenZh eKYCIntroScreen = _TranslationsEKYCIntroScreenZh._(_root);
	@override late final _TranslationsIdentificationVerifyIntroScreenZh identificationVerifyIntroScreen = _TranslationsIdentificationVerifyIntroScreenZh._(_root);
	@override late final _TranslationsPersonalInformationZh personalInformation = _TranslationsPersonalInformationZh._(_root);
	@override late final _TranslationsConfirmEKycInformationScreenZh confirmEKycInformationScreen = _TranslationsConfirmEKycInformationScreenZh._(_root);
	@override late final _TranslationsPasswordCreateScreenZh passwordCreateScreen = _TranslationsPasswordCreateScreenZh._(_root);
	@override late final _TranslationsPasscodeCreateScreenZh passcodeCreateScreen = _TranslationsPasscodeCreateScreenZh._(_root);
	@override late final _TranslationsConfirmPasscodeScreenZh confirmPasscodeScreen = _TranslationsConfirmPasscodeScreenZh._(_root);
	@override late final _TranslationsProcessingScreenZh processingScreen = _TranslationsProcessingScreenZh._(_root);
	@override late final _TranslationsManualReviewScreenZh manualReviewScreen = _TranslationsManualReviewScreenZh._(_root);
	@override late final _TranslationsOnboardingSuccessScreenZh onboardingSuccessScreen = _TranslationsOnboardingSuccessScreenZh._(_root);
	@override late final _TranslationsVerificationProcessScreenZh verificationProcessScreen = _TranslationsVerificationProcessScreenZh._(_root);
	@override late final _TranslationsUpdateEmailScreenZh updateEmailScreen = _TranslationsUpdateEmailScreenZh._(_root);
	@override late final _TranslationsUpdateOccupationScreenZh updateOccupationScreen = _TranslationsUpdateOccupationScreenZh._(_root);
	@override late final _TranslationsRegisterBiometricScreenZh registerBiometricScreen = _TranslationsRegisterBiometricScreenZh._(_root);
	@override late final _TranslationsSuccessScreenZh successScreen = _TranslationsSuccessScreenZh._(_root);
	@override late final _TranslationsCardLimitSettingZh cardLimitSetting = _TranslationsCardLimitSettingZh._(_root);
	@override late final _TranslationsCardZh card = _TranslationsCardZh._(_root);
	@override late final _TranslationsCardTabScreenZh cardTabScreen = _TranslationsCardTabScreenZh._(_root);
	@override late final _TranslationsCardStatementZh cardStatement = _TranslationsCardStatementZh._(_root);
	@override late final _TranslationsCardHistoryZh cardHistory = _TranslationsCardHistoryZh._(_root);
	@override late final _TranslationsFilterCardZh filterCard = _TranslationsFilterCardZh._(_root);
	@override late final _TranslationsSelectCreditCardZh selectCreditCard = _TranslationsSelectCreditCardZh._(_root);
	@override late final _TranslationsCustomerZh customer = _TranslationsCustomerZh._(_root);
	@override late final _TranslationsProfileZh profile = _TranslationsProfileZh._(_root);
	@override late final _TranslationsTransferZh transfer = _TranslationsTransferZh._(_root);
	@override late final _TranslationsAccountZh account = _TranslationsAccountZh._(_root);
	@override late final _TranslationsCurrencyTypeZh currencyType = _TranslationsCurrencyTypeZh._(_root);
	@override late final _TranslationsCardRepaymentZh cardRepayment = _TranslationsCardRepaymentZh._(_root);
	@override late final _TranslationsBillPaymentZh billPayment = _TranslationsBillPaymentZh._(_root);
	@override List<String> get dateTimeDesc => [
		'明日',
		'今日',
		'昨日',
	];
	@override late final _TranslationsUserDevicesZh userDevices = _TranslationsUserDevicesZh._(_root);
	@override late final _TranslationsQrTransferZh qrTransfer = _TranslationsQrTransferZh._(_root);
	@override late final _TranslationsFxExchangeRateZh fxExchangeRate = _TranslationsFxExchangeRateZh._(_root);
	@override late final _TranslationsTaskToDoZh taskToDo = _TranslationsTaskToDoZh._(_root);
	@override late final _TranslationsWithdrawZh withdraw = _TranslationsWithdrawZh._(_root);
	@override late final _TranslationsEditLayoutZh editLayout = _TranslationsEditLayoutZh._(_root);
	@override late final _TranslationsSaveBillBeneficiaryZh saveBillBeneficiary = _TranslationsSaveBillBeneficiaryZh._(_root);
	@override late final _TranslationsSearchBillBeneficiaryZh searchBillBeneficiary = _TranslationsSearchBillBeneficiaryZh._(_root);
	@override late final _TranslationsQuickActionZh quickAction = _TranslationsQuickActionZh._(_root);
	@override String get endJson => '';
}

// Path: common
class _TranslationsCommonZh extends _TranslationsCommonEn {
	_TranslationsCommonZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get value => '价值';
	@override String get remove => '消除';
	@override String get dayOfTheWeek => '一周中的天';
	@override String get dayOfTheMonth => '每月日期';
	@override String get apply => '申请';
	@override String get all => '全部';
	@override String get back => '返回';
	@override String get backHome => '返回主页';
	@override String get goToHome => '前往主页';
	@override String get save => '储存';
	@override String get forceUpdate => '更新最新版本';
	@override String get success => '成功';
	@override String get next => '下一步';
	@override String get cancel => '取消';
	@override String get agree => '同意';
	@override String get searchHint => '搜索提示';
	@override String get ok => 'OK';
	@override String get close => '关闭';
	@override String get deny => '拒绝';
	@override String get male => '男性';
	@override String get female => '女性';
	@override String get orther => '其它';
	@override String get warning => '警告';
	@override String get select => '选择';
	@override String get retry => '重试';
	@override String get termsAndConditions => '条款与细则';
	@override String get learnMore => '更多';
	@override String get ticketBox => '票箱';
	@override String get seeAll => '全读';
	@override String get updateNow => '立即更新';
	@override String get applicationUpdate => '应用程序更新';
	@override String get optional => '选项';
	@override String get phoneNumber => '电话号码';
	@override String get letBeginTitle => '开始';
	@override String get confirm => '确认';
	@override String get areSureWantDisable => '您确定要禁用生物识别身份验证吗？';
	@override String get atLeast8CharactersWarning => '至少8个字母且无间隔';
	@override String get passcodeConsiderWarning => '避免使用重复或易猜的通行码';
	@override String get descriptionForceUpdate => '有新版本可用。请更新以确保安全性并提升您的体验';
	@override String get processing => '处理中';
	@override String remainTimeString({required Object time}) => '${time}s';
	@override String get accountNumber => '账户号码';
	@override String get networkSetting => '网络设置';
	@override String get settings => '设置';
	@override String get tryLater => '稍后再试';
	@override String get callHotLine => '拨打热线';
	@override String get numberHintText => '如.123456';
	@override String get email => '电邮';
	@override String get emailHintText => '电邮提示';
	@override String get notNow => '稍后';
	@override String get login => '登入';
	@override String get done => '完成';
	@override String get more => '更多';
	@override String get copyToClipboard => '复制到剪贴板';
	@override String get account => '账户';
	@override String get share => '分享';
	@override String get filter => '筛选';
	@override String get timeRange => '时长';
	@override String get reset => '重设';
	@override String get here => '此处';
	@override String get update => '更新';
	@override String get noResultFound => '无结果显示';
	@override String get emptyList => '清空列表';
	@override String get from => '从';
	@override String get to => '至';
	@override String get no => '否';
	@override String get yes => '是';
	@override String get fiveMinutes => '5分钟';
	@override String get threeMinutes => '3分钟';
	@override String get oneMinute => '1分钟';
	@override String get thritySeconds => '30秒';
	@override String get edit => '编辑';
	@override String get review => '审核';
	@override String get finish => '完成';
	@override String get tryAgain => '重试';
	@override String get favorite => '喜爱';
	@override String get time => '时间';
	@override String get free => '免费';
	@override String get amount => '金额';
	@override String get logOut => '登出';
	@override String get version => '应用版本';
	@override String get sureWantLogOutiBank => '您想要从这台设备注销 iBank 吗？';
	@override String get custom => '定制';
	@override String get downloaded => '下载';
	@override String get wouldLikeContinue => '您是否继续？';
	@override String get notAvailable => '不存在';
	@override String get congratulation => '恭喜!';
	@override String get note => '注意:';
	@override String get keep => '保留';
	@override String get change => '更改';
	@override String get delete => '删除';
	@override String get repeat => '重复';
	@override String get backToWelcomeScreen => '返回欢迎屏幕';
	@override String get open => '打开';
	@override String get borrow => '借用';
	@override String get proceed => '继续';
	@override String get doYouWantTologoutDevice => '您想要从这台设备注销 iBank 吗？';
	@override String get copied => '复制';
	@override String get failed => '复制';
	@override String get register => '注册';
	@override String get unableSendOTPSMS => '无法通过短信发送 OTP';
	@override String get weSendOTPViaSMS => '我们无法通过短信发送 OTP。我们将现在发送到您注册的电子邮件。您同意吗?';
	@override String get unableSendOTP => '无法发送 OTP';
	@override String get youRegisteredEmail => '您没有注册您的电子邮件地址，我们无法向您发送 OTP 代码';
	@override String get weUnableSendOTP => '我们无法向您发送 OTP。请拨打我们的热线寻求支持';
	@override String get home => '首页';
}

// Path: closeDepositModel
class _TranslationsCloseDepositModelZh extends _TranslationsCloseDepositModelEn {
	_TranslationsCloseDepositModelZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get earlyClosureSuccessfully => '提前关闭成功';
	@override String get name => '姓名';
	@override String get receivingAccount => '接收账户';
	@override String get time => '时间';
	@override String get earlyClosureFailed => '提前关闭失败';
}

// Path: autoRejectedScreen
class _TranslationsAutoRejectedScreenZh extends _TranslationsAutoRejectedScreenEn {
	_TranslationsAutoRejectedScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get verificationRejected => '验证被拒';
	@override String get weRegretToInform => '抱歉，您的验证要求已被拒绝。请重试或拨打我们的热线寻求支援';
	@override String get weRegeToInform => '抱歉，您的验证要求已被拒绝。您已达尝试限额。请亲临iBank分行或拨打我们的热线寻求支援';
	@override String get branchesLocation => '分行地点';
}

// Path: passcode
class _TranslationsPasscodeZh extends _TranslationsPasscodeEn {
	_TranslationsPasscodeZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get enterYourPasscode => '输入您的通行码';
	@override String get forgotPasscode => '忘记密码？';
	@override String get currentPasscode => '现有通行码';
	@override String get createNewPasscode => '创建新的通行码';
	@override String get confirmPasscode => '确认密码';
	@override String get invalidPasscodeError => '无效通行码错误';
	@override String get wrongPasscode => '通行码错误';
	@override String get cancel => '取消';
	@override String get mContinue => '继续';
	@override String get avoidPasscode => '避免通行码';
	@override String get consecutiveNumbers => '• 顺序号码 （如：123456)';
	@override String get repeatingNumbers => '• 重复号码 （如：111111)';
	@override String get kindlyOTP => '请输入发送到您手机号的 OTP *******';
	@override String get pleaseDonNotUseConsecutiveNumber => '请不要使用连续数字';
	@override String get pleaseDonNotUseRepeatNumber => '请不要使用重复数字';
	@override String get pleaseEnterPasscodeMatchingOld => '请输入与您刚刚创建的密码相匹配的密码';
}

// Path: loginScreen
class _TranslationsLoginScreenZh extends _TranslationsLoginScreenEn {
	_TranslationsLoginScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get deviceHasBeenRemoved => '此设备已被移除';
}

// Path: errors
class _TranslationsErrorsZh extends _TranslationsErrorsEn {
	_TranslationsErrorsZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get canNotSMSServer => '无法连接到短信服务器。请稍后再试。';
	@override String get deviceHasBeenUnregistered => '此设备尚未注册，请重新登入并注册此设备';
	@override String get emptyPhoneNumber => '请输入电话号码';
	@override String get invalidPhoneNumber => '请输入有效的电话号码';
	@override String get passwordFormatErrorMessage => '密码长度须至少8个字符并无间隔';
	@override String get confirmPasswordNotMatch => '此密码不匹配';
	@override String get passcodeMismatch => '通行码错配。请确保您之前输入的匹配通行码';
	@override String get accessLockedError => '您的通行暂时封锁。请拨打热线以重获通行';
	@override String get networkTryAgainMessage => '连接问题，请重试';
	@override String get accountLockedMessage => '账户已暂时封锁';
	@override String get serverUnknownError => '伺服器不明错误';
	@override String get serviceNotAvailable => '此服务不存在';
	@override String get noInternetAccess => '无网络状态';
	@override String get notSupportedMobileProvider => '不支持此手机';
	@override String get topupPhoneInvalid => '此手机号码格式无效';
	@override String get topupAmountNotAllowAccount => '手机无法使用瑞尔账户充值';
	@override String get notSupportUSDAccount => 'Not support USD Account';
	@override TextSpan accountLockedDescription({required InlineSpanBuilder phoneTap}) => TextSpan(children: [
		const TextSpan(text: '通行码输入错误已达5次，为了安全，您的账户已被封锁，请亲临分行或致电以重获通行 '),
		phoneTap(''),
	]);
	@override String get temporarilyLockedHotline => '因脸部识别匹配失败3次，您的账户已被封锁。请于24小时后重试或致电热线';
	@override String get fail => '失败';
	@override String get pleaseTryAgain => '请重试';
	@override String get youHaveRejected => '您已拒绝转移到 iBank';
	@override String get movingRejected => '转移被拒绝';
	@override String get onlyMakeRequest => '您每天只能提出 2 次请求。请等待 24 小时后重试该过程。';
	@override String get serviceDisruptionTitle => '哎呀，iBank 目前正在休息';
	@override String get serviceDisruptionMessage => '请稍后重试！感谢您的耐心等待！';
	@override String get pleaseTryAgainAfter => '请于24小时后重试或拨打热线与我们联系';
	@override String get timeOutTitle => '会话超时';
	@override String get timeOutMessage => 'Y您的登入时间已超时，安全起见，请再登入。';
	@override String get internetErrorTitle => '无网络连接';
	@override String get internetErrorMessage => '无法进行网络连接。请检查您的网络状态或手机数据连接';
	@override String balanceInsufficient({required Object balance, required Object otherCurrency}) => '您的可用余额为 ${balance} 或等值的 ${otherCurrency}';
	@override String get loginFailed => '登录失败';
	@override String get wrongOTP => 'OTP错误';
	@override String get missUserName => '缺少用户名';
	@override String get userNotFound => '用户未找到';
	@override String get passInvalid => '密码无效';
	@override String get userIsDisabled => '用户已被禁用';
	@override String get wrongPasscode => '密码错误';
	@override String get otpReachLimit => 'OTP 达到限制';
	@override String get loginExpire => '登录过期';
	@override String get logginError => '登录错误';
	@override String get deviceNotFound => '设备未找到';
	@override String get internalServerError => '内部服务器错误';
	@override String get confirmationExpired => '确认已过期';
	@override String get invalidSingedData => '签名数据无效';
	@override String get invalidEmail => '无效的电子邮件';
	@override String get invalidIdCard => '无效的身份证';
	@override String get invalidPasscode => '无效的密码';
	@override String get confirmPassNotmatch => '确认密码不匹配';
	@override String get jailbreakAppErrorMessage => '您的设备已root或已越狱！';
	@override String topupAmountInvalid({required Object min, required Object max}) => '金额必须在 \$${min} 到 \$${max} 之间';
	@override String get faceMatchingFailed => '人脸匹配失败';
	@override String get pleaseUpdateTimeSettings => '请在设置中更新时间。';
	@override String get cannotVerifyConfirmation => '无法验证您的确认信息。';
	@override String get enrollBiometricsSettings => '请在设备设置中注册您的生物特征数据以继续。';
	@override String get biometricsNotEnrolled => '生物特征注册要求';
	@override String get openSettings => '打开设置';
	@override String get notification => '通知';
	@override String inforNotification({required Object type}) => '由于您更改了设备的 ${type} ID 注册，Face ID 登录已禁用。';
	@override String get face => '脸部';
	@override String get touch => '触摸';
	@override String get requestTookTooLongToProcess => '请求处理时间过长';
	@override String get contentRequestTookToLongTime => '您可以重试或关闭应用程序并重新打开。请检查您的互联网连接以确保您在线';
}

// Path: biometric
class _TranslationsBiometricZh extends _TranslationsBiometricEn {
	_TranslationsBiometricZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get touch => '指纹';
	@override String get face => '脸部识别';
}

// Path: moveScreen
class _TranslationsMoveScreenZh extends _TranslationsMoveScreenEn {
	_TranslationsMoveScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get iHaveConfirmedMove => '我已确认迁移';
	@override String get move => '迁移';
	@override String get pleaseInformed => '请注意，您的账户将在迁移到iBank应用程序后停用BIC Mobile。请登录BIC Mobile确认您的操作。您每天只能提出2次请求。';
	@override String get confirmMovingIBank => '确认迁移到iBank';
	@override String get youMovingFrom => '您正在从BIC Mobile迁移到iBank';
	@override String get pleaseTapBICMobile => '请点击 BIC Mobile 的通知以确认您的操作。';
	@override String get userGuide => '用户指南';
	@override String get yourBICMobileAccountWill => '您的 BIC Mobile 账户将在迁移至 iBank 应用程序后停用。';
	@override String get userGuideMovingIBank => '迁移到 iBank 的用户指南';
	@override String get doesThisFunctionWork => '这个功能是如何工作的？';
	@override String get step1ClickConfirm => '• 第一步：在确认移至 iBank 屏幕上点击“移动”。';
	@override String get step2TapNotification => '•第二步：点击来自 BIC Mobile 的通知以确认移至 iBank。';
	@override String get tapTheNotification => '点击通知';
	@override String get step3BackIBank => '•第三步：返回 iBank 应用并继续身份验证过程。';
	@override String get step4SetUpPasscode => '•第四步：设置新的密码并完成。';
	@override String get shouldCannotReceive => '如果我在 BIC Mobile 应用程序上收不到通知，我该怎么办？';
	@override String get update1BIC => '1.更新您的 BIC Mobile 到最新版本';
	@override String get please2DeviceSettings => '2.请检查您的设备设置，您需要允许 BIC Mobile 发送通知。';
	@override String get above3Word => '3.如果以上方法都无效，请考虑删除 BIC Mobile 应用并重新在您的设备上安装。请允许 BIC Mobile 发送通知，然后再次尝试移动流程。';
}

// Path: login
class _TranslationsLoginZh extends _TranslationsLoginEn {
	_TranslationsLoginZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '登录';
	@override String get welcomeBack => '欢迎回来';
	@override String get forgotPassword => '忘记密码？';
	@override String get button => '下一步';
	@override String get tranfer => 'Transfer';
	@override String get qrCode => 'QR Code';
	@override List<String> get bottomFunc => [
		'位置',
		'汇率',
		'常见问题',
		'帮助',
	];
}

// Path: home
class _TranslationsHomeZh extends _TranslationsHomeEn {
	_TranslationsHomeZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get backAgainToExit => '再次按“返回”按钮退出';
	@override String get allAccounts => '全部账户';
	@override String get supports => '支持';
	@override String get accountDetails => '账户信息';
	@override String get availableCreditLimit => '可用信用额度';
	@override String get creditLimit => '信用额度';
	@override String get cardManagement => '卡管理';
	@override String get lock => '封锁';
	@override String get youHaveSomeTasksToDo => '您有任务需完成';
	@override String get favorites => '喜爱';
	@override String get applyForACreditCardWithUnlimitedBenefits => '一卡在手 福利满怀';
	@override String get iBankBusiness => 'iBank Business';
	@override String get streamlinesFinacialManagementForYourBussiness => '简化您的业务财务管理';
	@override String get activity => '激活';
	@override String get support => '支援';
	@override String get ourCustomerServiceHotlineIsAvailable247ReadyToAssistYou => '我们全天24小时的服务热线，给您最及时援助';
	@override String get hotline => '热线';
	@override String get email => '电邮';
	@override String get request => '请求';
	@override String get title => '标题';
	@override String get newTransfer => '新转账';
	@override String get mobileTopUp => '手机充值';
	@override String get linkEWallet => '连接线上钱包';
	@override String get atmWithdrawal => 'ATM提款';
	@override String get billPayment => '暂停服务';
	@override String get cardList => '列表';
	@override String get cardDetail => '银行卡信息';
	@override String get expiry => '会话超时';
	@override String get editFavorites => 'កែសម្រួលចំណូលចិត្ត';
	@override String get shareAccountText => '您好，您的ibank账户信息如下：';
	@override String get accountName => '账户名称';
	@override String get accountNumber => '账户号码';
	@override String get copyAccountNumber => '复制账户号码';
	@override String get shareViaSocialMedia => '通过社交媒体分享';
	@override String get downloadAccountQRCode => '下载账户二维码';
	@override String get copied => '复制';
	@override String get used => '已用';
	@override String get yourFavoriteFunctions => '您喜爱的功能';
	@override String get functionList => '功能列表';
	@override String get pleaseSelectUpTo8FunctionsFromTheListBelow => '请从下面的列表中选择最多8个功能。';
	@override String get savedFavoritesSuccessfully => '成功保存喜爱功能';
	@override String get saveChanges => '保存更改吗？';
	@override String get doYouWantToSaveTheChangeYouMade => '您要保存您所做的更改吗？';
	@override String get introducingNewFeatures => '介绍新功能';
	@override String get internationalTransferRightOnibank => '在iBank上进行国际转账';
	@override String get addCardToGpay => '添加卡到GPay';
	@override String get setupNow => '立即设置';
	@override String get homeContinue => '继续';
	@override String get youDontHaveAnyCard => '您没有任何卡';
}

// Path: asset
class _TranslationsAssetZh extends _TranslationsAssetEn {
	_TranslationsAssetZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get viewCard => '查看卡片';
	@override String get closeCard => '关闭卡片';
	@override String get closeCardDescription => '此操作不可逆。您将无法再次使用此卡片';
	@override String get lost => '丢失';
	@override String get stolen => '被盗';
	@override String get damage => '损坏';
	@override String get fraudulent => '欺诈';
	@override String get otherReason => '其他原因';
	@override String get otherReasonHint => '在此输入原因';
	@override String closeCardReviewDescription({required Object cardType}) => '您即将关闭 ${cardType}';
	@override String get cardholderName => '持卡人姓名';
	@override String get linkedAccount => '关联账户';
	@override String get purposeOfClosing => '关闭目的';
	@override String get closeCardReviewWarning => '关闭卡片后，您将无法进行任何交易，且所有在此卡片下进行的交易将消失。';
	@override String get closeCardSuccessful => '关闭卡片成功';
	@override String get renameCard => '重命名卡片';
	@override String get cardName => '卡片名称';
	@override String get renameCardSuccessDescription => '卡片限额设置已成功更新。';
	@override String get linkAccount => '关联账户';
	@override String get unlockCardSuccessful => '解锁卡片成功';
	@override String get lockCardSuccessful => '锁定卡片成功';
	@override List<String> get changePincodeSteps => [
		'当前密码',
		'新密码',
		'确认新密码',
	];
	@override String get changeCardPin => '更改卡片密码';
	@override String get changeCardPinNote => '考虑避免使用重复或易猜的密码';
	@override String get changeCardPinSuccessfully => '更改卡片密码成功！';
	@override String get confirmPincodeError => '密码不正确。请再试一次！';
	@override late final _TranslationsAssetGPayZh gPay = _TranslationsAssetGPayZh._(_root);
	@override String get titleNavigation => '账户和卡片';
	@override String get titleTab => '账户';
	@override String get card => '卡片';
	@override String get saving => '储蓄';
	@override String get openDate => '开户日期';
	@override String get earlyClosureInterest => '提前关闭利率';
	@override String get earlyClosureInterestAmount => '提前关闭利息金额';
	@override String get tax => '税';
	@override String get principalAmount => '本金金额';
	@override String get thisMightEffect => '数值可能因系统而异，该数字仅供参考。';
	@override String get loan => '贷款';
	@override String get viewlistCard => '查看列表卡片';
	@override String get cardNickname => '卡片昵称';
	@override String get cardLimitSettingSuccessDescription => '卡限额设置已成功更新。';
	@override String get estimatedInterest => '预计利息';
	@override String get updateEmailAddress => '更新电子邮件地址';
	@override String get updateEmailAddressDecs => '请在个人资料设置中更新您的电子邮件地址，以通过电子邮件接收账单。';
	@override String get depositAccountProcessingNoteDesc => '您的定期存款账户正在处理中，稍后即可查看。请稍后再来检查。';
	@override String get deposit => '存款';
	@override String get collectTotalInterestAmount => '收取总利息（含税）';
}

// Path: qrCode
class _TranslationsQrCodeZh extends _TranslationsQrCodeEn {
	_TranslationsQrCodeZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => 'QR';
	@override String get scanQR => '扫描二维码';
	@override String get alignFrameWithQRCode => '对齐二维码格式';
	@override String get uploadQR => '上载二维码';
	@override String get flash => 'Flash';
	@override String get myQR => '我的二维码';
	@override String get unsupportedQrCode => '二维码不支援';
	@override String get noPermissionCameraTitle => '没有权限';
	@override String get cameraNoPermission => '扫描二维码，请允许 iBank 访问您的摄像头。';
	@override String get noPermissionLibrary => '上传二维码，请允许 iBank 访问您的照片库。';
}

// Path: loyalty
class _TranslationsLoyaltyZh extends _TranslationsLoyaltyEn {
	_TranslationsLoyaltyZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get rewardDetails => '奖励详情';
	@override String get price => '价格';
	@override String get termsOfUse => '使用条款';
	@override String get giftCollections => '礼物集合';
	@override String get enterVoucherCode => '输入券码';
	@override String get title => '忠诚度';
	@override String get all => '全部';
	@override String get topUp => '充值';
	@override String get billPayment => '账单支付';
	@override String get internationalTransfer => '国际转账';
	@override String get ncsTransfer => 'NCS 转账';
	@override String get iBankReward => 'iBank 奖励';
	@override String get silverMember => '银会员';
	@override String get iCoin => 'iCoin';
	@override String get memberPrivileges => '会员特权';
	@override String get useNow => '立即使用';
	@override String get tracingCode => '追踪代码';
	@override String get value => '价值';
	@override String get validityPeriod => '有效期';
	@override String get rewardType => '奖励类型';
	@override String get redeemSuccessfully => '兑换成功';
	@override String get historyActivity => '历史活动';
	@override String get dailyEarned => '每日收入';
	@override String get weeklyEarned => '每周收入';
	@override String get monthlyEarned => '每月收入';
	@override String get expried => '已过期';
	@override String get transactionID => '交易ID';
	@override String get processedDate => '处理日期';
	@override String get transactionType => '交易类型';
	@override String get help => '帮助';
}

// Path: product
class _TranslationsProductZh extends _TranslationsProductEn {
	_TranslationsProductZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '产品';
	@override String get ourProducts => '我们的产品';
	@override String get homeLoanDesc => '通过iBank住房贷款，实现您的梦想变得容易';
	@override String get homeLoan => '住房贷款';
	@override String get carLoan => '汽车贷款';
	@override String get carLoanDesc => '帮助您通过可负担的月供拥有自己的车辆。';
	@override String get creditCardDesc => '享受优秀的信用卡消费能力。';
	@override String get lowInterestRates => '低利率';
	@override String get speedyApproval => '快速批准';
	@override String get flexibleLoanTermsRepayment => '灵活的贷款条件和还款方式';
	@override String get homeLoanDesc1 => '贷款金额高达25万美元';
	@override String get homeLoanDesc2 => '贷款期限长达20年';
	@override String get homeLoanDesc3 => '还款方式灵活（分期付款、摊销、部分付款），弹性还款';
	@override String get carLoanDesc1 => '贷款金额高达车辆价值的70%';
	@override String get carLoanDesc2 => '贷款期限：5年';
	@override String get carLoanDesc3 => '还款方式：月供';
	@override String get carLoanDesc4 => '适用于购买全新车辆或少于10年的二手车';
	@override String get account => '账户';
	@override String get save => '保存';
	@override String get borrow => '借';
}

// Path: verifyPasscodeScreen
class _TranslationsVerifyPasscodeScreenZh extends _TranslationsVerifyPasscodeScreenEn {
	_TranslationsVerifyPasscodeScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get passcode => '通行码';
	@override String get pleaseEnterPasscode => '请输入通行码';
	@override String get wrongPasscode => '通行码错误';
	@override String get yourAccountLocked => '您的账户已封锁';
	@override String get yourAccountIsTemporarilyLocked => '由于验证尝试次数过多，您的帐户已被暂时锁定。请联系呼叫中心或访问分行以获取帮助.';
}

// Path: language
class _TranslationsLanguageZh extends _TranslationsLanguageEn {
	_TranslationsLanguageZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get english => 'English';
	@override String get khmer => 'ខ្មែរ';
	@override String get chinese => '中文';
	@override String get title => 'Language';
	@override String get englishShort => 'ENG';
	@override String get khmerShort => 'ខ្មែរ';
	@override String get chineseShort => '中文';
}

// Path: welcomeScreen
class _TranslationsWelcomeScreenZh extends _TranslationsWelcomeScreenEn {
	_TranslationsWelcomeScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '欢迎来到iBank';
	@override String get subtitle => '指尖上漫游畅通无阻的金融体验';
	@override String get buttonTitle => '即刻开始';
	@override String get login => '登入';
	@override String get signup => '注册';
	@override String get financialOverview => '财务概况';
	@override String get manageYourCardInApp => '在应用程序中管理您的卡';
	@override String get openFixedDepositOnline => '在线开立定期存款';
}

// Path: notification
class _TranslationsNotificationZh extends _TranslationsNotificationEn {
	_TranslationsNotificationZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '任务待办';
	@override String get noData => '没有通知';
	@override String get notificationPermissionDesc => '为了接收通知，请允许 iBank 访问您的通知';
	@override String get tabBalance => '余额';
	@override String get tabInbox => '邮箱';
	@override String get tabPromotion => '促销';
	@override String get actions => '行动';
	@override String get deleteNotifyTitle => '删除_通知';
	@override String get deleteNotifyContent => '您是否确认删除此通知？';
	@override String get makeRead => '标注已读';
	@override String get deleteNotify => '删除';
	@override String get no => '否';
	@override String get yes => '是';
	@override String get showUnread => '仅显示未读';
	@override String get deleteSuccess => '所有通知皆删除成功';
	@override String get today => '今日';
	@override String get yesterday => '昨日';
	@override String get readAllNotificontent => '您是否想要标示所有通知已读？';
	@override String get cancel => '取消';
	@override String get agree => '同意';
	@override String get readAll => '全部已读';
	@override String get fromAccount => '从账户';
	@override String get toAccount => '至账户';
	@override String get toAccountName => 'T至账户名称';
	@override String get transactionTime => '交易时间';
	@override String get tracingCode => '追踪码';
	@override String get description => '描述';
}

// Path: verifyNumberPhoneScreen
class _TranslationsVerifyNumberPhoneScreenZh extends _TranslationsVerifyNumberPhoneScreenEn {
	_TranslationsVerifyNumberPhoneScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '您的手机号码';
	@override String get subtitle => '请输入您的电话号码';
	@override String get referralCodeTitle => '推荐码';
	@override String get conditionWarning => '点触“下一步”代表您已同意iBank数码账户开户条款与细则，以及iBank条款与细则';
	@override String get termsAndConditions => '条款与细则';
	@override String get unregisteredPhoneNumber => '电话号码未注册';
	@override String get thePhoneNumberSignFirst => 'T此电话号码尚未注册。请先注册';
	@override String get cancel => '取消';
	@override String get signUp => '注册';
	@override String get login => '登入';
	@override String get phoneAlreadyExists => '电话号码已存在';
	@override String get loginPhoneNumber => '您可用电话号码登入';
	@override String get selectCountry => '选择国家';
}

// Path: verifyOTPScreen
class _TranslationsVerifyOTPScreenZh extends _TranslationsVerifyOTPScreenEn {
	_TranslationsVerifyOTPScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '输入OTP';
	@override String subtitle({required Object phone}) => '请输入您手机刚收到的OTP ${phone}';
	@override String subtitleEmail({required Object email}) => '请填写发送到您的电子邮件 ${email} 的 OTP';
	@override String get resendOTP => '重发OTP';
	@override String get resendOTPAgain => 'OTP可再次重发';
	@override String get otpAttemptsExceeded => 'OTP尝试次数超限。请30分钟后再试';
}

// Path: eKYCIntroScreen
class _TranslationsEKYCIntroScreenZh extends _TranslationsEKYCIntroScreenEn {
	_TranslationsEKYCIntroScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get passportPhotoTitle => '拍摄护照';
	@override String get idCardPhotoTitle => '拍摄身份证';
	@override String get passportSubtitle => '请确保您备好护照供拍摄';
	@override String get idCardSubtitle => '请确保您备好身份证供拍摄';
	@override String get tipsTitle => '贴士';
	@override String get passportTipsDescription1 => '放置纸张在护照后方以避免强光';
	@override String get passportTipsDescription2 => '缓慢地将您的手机靠近或远离护照直至看到绿色边框';
	@override String get idCardTipsDescription1 => '放置纸张在身份证后方以避免强光';
	@override String get idCardTipsDescription2 => '放置纸张在身份证后方以避免强光';
	@override String get changeToIdCard => '更换至身份证';
	@override String get changeToPassport => '更换至护照';
}

// Path: identificationVerifyIntroScreen
class _TranslationsIdentificationVerifyIntroScreenZh extends _TranslationsIdentificationVerifyIntroScreenEn {
	_TranslationsIdentificationVerifyIntroScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '身份验证';
	@override String get subtitle => '我们将获取您的数张照片。请确保您在开始前已阅读所有指示';
	@override String get headDescription => '让您的头部与下巴在圆圈以内';
	@override String get ensureLightDescription => '确保您的拍摄光线过暗或过亮';
	@override String get assetsDescription => '请勿穿戴太阳眼睛或帽子';
}

// Path: personalInformation
class _TranslationsPersonalInformationZh extends _TranslationsPersonalInformationEn {
	_TranslationsPersonalInformationZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '主题';
	@override String get subtitle => '我们请求采集您的个人信息作为合法开户用途';
	@override String get fullName => '全名';
	@override String get dob => '出生日期';
	@override String get gender => '性别';
	@override String get height => '身高';
	@override String get placeOfBirth => '出生地点';
	@override String get permanentAddress => '永久地址';
	@override String get idOrPassportNumber => '身份证/护照号码';
	@override String get dateOfIssue => '签发日期';
	@override String get dateOfExpiry => '截止日期';
	@override String get currentAddress => '现有地址';
	@override String get cityOrProvince => '城市/省';
	@override String get districtOrKhan => '地区/县';
	@override String get communeOrSangkat => '公社/乡区';
	@override String get village => '村落';
	@override String get houseNo => '住家门牌号';
	@override String get streetNo => '街号';
	@override String get maritalStatus => '婚姻状况';
	@override String get occupation => '职业';
}

// Path: confirmEKycInformationScreen
class _TranslationsConfirmEKycInformationScreenZh extends _TranslationsConfirmEKycInformationScreenEn {
	_TranslationsConfirmEKycInformationScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get subtitle => '我们将征求您的个人信息作为合法开户用途';
	@override String get confirmInfomationTitle => '确认您的信息';
	@override String get sameAddressDescription => '我目前的地址相同于永久地址';
	@override String get scanTitle => '再次扫描';
}

// Path: passwordCreateScreen
class _TranslationsPasswordCreateScreenZh extends _TranslationsPasswordCreateScreenEn {
	_TranslationsPasswordCreateScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '创建密码';
	@override String get subtitle => '请记得此密码以防更改密码或设备';
	@override String get passwordTitle => '创建密码';
	@override String get passwordHintText => '输入您的密码';
	@override String get confirmPasswordTitle => '确认密码';
}

// Path: passcodeCreateScreen
class _TranslationsPasscodeCreateScreenZh extends _TranslationsPasscodeCreateScreenEn {
	_TranslationsPasscodeCreateScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '设置您的通行码';
	@override String get subtitle => '通行码乃个人验码，有时使用iBank程序时须提供';
	@override String get invalidPasscodeError => '无效通行码错误';
}

// Path: confirmPasscodeScreen
class _TranslationsConfirmPasscodeScreenZh extends _TranslationsConfirmPasscodeScreenEn {
	_TranslationsConfirmPasscodeScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '确认您的通行码';
	@override String get subtitle => '记着此通行码，有时使用iBANK程序时须提供';
}

// Path: processingScreen
class _TranslationsProcessingScreenZh extends _TranslationsProcessingScreenEn {
	_TranslationsProcessingScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get identificationMessage => '身份识别讯息';
	@override String incorrectPasscode({required Object count}) => '通行码不正确 (${count})';
}

// Path: manualReviewScreen
class _TranslationsManualReviewScreenZh extends _TranslationsManualReviewScreenEn {
	_TranslationsManualReviewScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '手动审核要求';
	@override String get subtitle => '请等待银行的手动核对您的信息，感谢您的耐心等待！';
}

// Path: onboardingSuccessScreen
class _TranslationsOnboardingSuccessScreenZh extends _TranslationsOnboardingSuccessScreenEn {
	_TranslationsOnboardingSuccessScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '注册完成！';
	@override String get subtitle => '您的数码储蓄账户开户成功。欢迎来到iBank！';
}

// Path: verificationProcessScreen
class _TranslationsVerificationProcessScreenZh extends _TranslationsVerificationProcessScreenEn {
	_TranslationsVerificationProcessScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '验证程序';
	@override String get subtitle => '此验证程序需耗费更长时间。稍安勿躁，一旦验证完成，您将获得电邮或手机短信通知。';
}

// Path: updateEmailScreen
class _TranslationsUpdateEmailScreenZh extends _TranslationsUpdateEmailScreenEn {
	_TranslationsUpdateEmailScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get description => '若有重大更动、新功能或福利，我们将为您保持更新';
}

// Path: updateOccupationScreen
class _TranslationsUpdateOccupationScreenZh extends _TranslationsUpdateOccupationScreenEn {
	_TranslationsUpdateOccupationScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '在此选择您的职业';
	@override String get otherOccupationTitle => '其它职业';
}

// Path: registerBiometricScreen
class _TranslationsRegisterBiometricScreenZh extends _TranslationsRegisterBiometricScreenEn {
	_TranslationsRegisterBiometricScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get faceIdTitle => '注册脸部识别认证';
	@override String get touchIdTitle => '注册指纹识别认证';
	@override String get faceIdSubTitle => '脸部识别认证可用于登入或授权交易';
	@override String get touchIdSubTitle => '指纹识别认证可用于登入或授权交易';
	@override String get later => '稍后';
	@override String get deviceNotSupportBiometric => '您的设备不支援生物特征识别技术（脸部或指纹识别）';
	@override String get authenticationFailed => '认证失败';
	@override String get done => '完成了';
}

// Path: successScreen
class _TranslationsSuccessScreenZh extends _TranslationsSuccessScreenEn {
	_TranslationsSuccessScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '恭喜';
	@override String get subtitle => '您的数字银行账户已成功在此设备上激活。欢迎使用 iBank！';
	@override String get goHome => '返回首页';
	@override String get registrationComplete => '注册完成！';
	@override String get haveChangedPasscodeSuccessfully => '您已成功更改密码';
	@override String get digitalBankingAccountActivated => '您的数字银行账户已成功激活。欢迎使用 iBank！';
	@override String get updateSuccessfully => '更新成功';
	@override String get youEnabledFaceIDTouchID => '您已启用 Face ID/Touch ID';
	@override String get youEnabledFaceID => '您已启用 Face ID';
	@override String get youEnabledTouchID => '您已启用 Touch ID';
	@override String get movingComplete => '迁移完成！';
	@override String get youHaveSuccessFylly => '您已成功迁移到 iBank。享受您的旅程吧！';
	@override String get youDisableFaceIDTouchID => '您已禁用 Face ID/Touch ID';
	@override String get youDisableFaceID => '您已禁用 Face ID';
	@override String get youDisableTouchID => '您已禁用 Touch ID';
	@override String get updateFailPleaseTryAgain => '更新失败。请再试一次';
}

// Path: cardLimitSetting
class _TranslationsCardLimitSettingZh extends _TranslationsCardLimitSettingEn {
	_TranslationsCardLimitSettingZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '题目';
	@override String get onlinePayment => '在线支付';
	@override String get internationalPayment => '国际支付';
	@override String get atmWithdrawal => 'ATM提款';
	@override String get posPayment => '销售终端（POS）支付';
	@override String get contactlessPayment => '非接触式支付';
	@override String get dailySpendingLimit => '每日消费额度';
	@override String get enterAmount => '输入金额';
	@override String get numberOfPurchase => '购买数量';
	@override String get transactions => '交易';
	@override String get cashWithdrawalDailyCountLimit => '每日现金提款额度';
	@override String get enterRemark => '输入备注';
	@override String get maximum => '最大';
	@override String get times => '次数';
	@override String get apply => '申请';
	@override String get dailySpendingLimitErrorMsg => '每日消费限额无效';
	@override String get numberOfPurchaseErrorMsg => '购买数量无效';
	@override String get cashWithdrawalDailyCountLimitErrorMsg => '每日取款次数限制无效';
}

// Path: card
class _TranslationsCardZh extends _TranslationsCardEn {
	_TranslationsCardZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '卡片';
	@override String get cashFlow => '金流';
	@override String get lockCard => '锁卡';
	@override String get unlockCard => '解锁卡';
	@override String get history => '记录';
	@override String get cardInfo => '卡信息';
	@override String get statement => '结单';
	@override String get activeCardSuccess => '激活此卡成功';
	@override String get cardIsReady => '卡已备妥';
	@override String get branches => '分行';
	@override String get cardInformation => '银行卡信息';
	@override String get cardName => '银行卡名称';
	@override String get cardNumber => '银行卡号码';
	@override String get expiredDate => '截止日期';
	@override String get cvv => '卡验证码';
	@override String get locked => '已锁';
	@override String get validThru => '有效期至';
	@override String get pinCodeResetFee => 'PIN码重设费';
	@override String get openNewAccount => '开设账户';
	@override String get linkAccount => '已关联账户';
	@override String get sourceAccountNotAvailableTitle => '此源账户不存在';
	@override String get sourceAccountNotAvailableSubtitle => '此源账户不存在连接';
	@override String get sourceAccountNotAvailableSubtitleWithoutThereAre => '源账户不存在连接';
	@override String get confirmUnlockMessage => '您是否确认要解锁此卡';
	@override String get confirmLockMessage => '你是否确认要封锁此卡';
	@override String get unlockSuccess => '解锁成功';
	@override String get lockSuccess => '封锁成功';
	@override String get lock => '封锁';
	@override String get activate => '激活';
	@override String get unlock => '解锁';
	@override String get openNew => '新启';
	@override String get creditCard => '信用卡';
	@override String get createCardPinCode => '创建卡PIN码';
	@override String get confirmCardPinCode => '确认卡PIN码';
	@override String get pleaseEnterThePinCodeYouJustCreated => '请输入您刚创建的PIN码';
	@override String get cardPinCode => '卡PIN码';
	@override String get setUpCardPinCode => '为您的卡设置PIN码以确保安全 为您的卡';
	@override String get pinCodeRemind => '建议避免使用重复或易猜的PIN码';
	@override String get debitCard => '借记卡';
	@override String get savings => '储蓄';
	@override String get selectSourceAccount => '选择账户来源';
	@override String get cardLimitsetting => '卡限额设置';
	@override String get forgotPin => '忘记PIN';
	@override String get changePin => '更改PIN';
	@override String get renameCard => '银行卡重命名';
	@override String get closeCard => '关闭银行卡';
	@override String get viewCard => '查看银行卡';
	@override String get cardType => '银行卡类别';
	@override String get annualFee => '年费';
	@override String get free => '免费';
	@override String get issuingFee => '办卡费';
	@override String get issuanceFee => '办卡费';
	@override String get createCardSuccessTitle => '办卡成功主题';
	@override String get createCardSuccessDescription => '办卡成功描述';
	@override String get selectCard => '选择银行卡';
	@override String get iBankMasterCardClassic => 'iBank万事达经典卡';
	@override String get iBankMasterCardClassicSubtitle => 'iBank万事达经典卡解说';
	@override String get detailsAndBenefits => '细节与福利';
	@override String get iBankMasterCardClassicDescription1 => 'iBank万事达经典卡描述1';
	@override String get iBankMasterCardClassicDescription2 => 'iBank万事达经典卡描述2';
	@override String get iBankMasterCardClassicDescription3 => 'iBank万事达经典卡描述3';
	@override String get feeAndRate => '费用与利率';
	@override String get iBankMasterCardNote => 'iBank万事达卡备注';
	@override String get creditPlatinum => '铂金卡';
	@override String get creditClassic => '经典卡';
	@override String get creditGold => '金辉卡';
	@override String atmWithdrawalRules({required Object min, required Object max}) => '每笔交易的最低限额: ${min}\n每笔交易的最高限额: ${max}';
	@override String get virtualDebit => '虚拟卡';
	@override String get debit => '借记';
	@override String get credit => '金额';
	@override String get atm => '自动取款机';
	@override String get virtualDebitCard => '虚拟借记卡';
	@override String get expiryDate => '到期截止日期日期';
	@override String get validFrom => '有效期从';
	@override String get createCard => '创建银行卡';
	@override String get remainingStatementBalance => '可用余额';
	@override String get minimumPayment => '最低缴款';
	@override String get payBefore => '此前支付';
	@override String get repayment => '重新支付';
	@override String get availableCreditLimit => '卡内可用额度';
	@override String get totalBalance => '总余额';
	@override String get enterTheLast4DigitsOfTheCard => '输入银行卡的最后四个号码';
	@override String get creditLimit => '信用额度';
	@override String get youHaveNoCard => '您还未持卡';
	@override String get openVirtualCard => '开设虚拟银行卡';
	@override String get cardLimitUpdateSuccessfull => '银行卡额度已更新成功';
	@override String get forgotPinTitle => '忘记卡密码';
	@override String get createCardInProcess => '卡片创建中';
	@override String get createCardInProcessDescription => '您的 iBank 虚拟卡正在创建中，即将准备好。';
	@override String get createPaymentFailed => '创建付款失败';
	@override String get createPaymentFailedDescription => '我们无法创建您的付款。请重试或联系我们获取支持。';
	@override String get createCardFailed => '创建卡片失败';
	@override String get createCardFailedDescription => '我们无法创建您的卡片。请重试或联系我们获取支持。';
	@override String get withdrawAmount => '取款金额';
	@override String get cardNameValidateMsg => '卡片名称无效';
	@override String get creditClassicItem1 => '最高信用';
	@override String get creditClassicItem2 => '提款';
	@override String get creditClassicItem3 => '便利';
	@override String get creditClassicItem4 => '先购买，后付款';
	@override String get creditClassicItem5 => '优惠';
	@override String get creditClassicItemDesc1 => '额度高达 500,000 美元';
	@override String get creditClassicItemDesc2 => '可在全球范围内的ATM取现，只要有Mastercard标识';
	@override String get creditClassicItemDesc3 => 'Mastercard Classic 在全球数百万商户地点接受，包括餐厅、酒店和在线零售商。通过 iBank Mobile 应用方便地管理您的信用卡';
	@override String get creditClassicItemDesc4 => '享受高达45天的0%利息购物交易。免费：最多5张附属卡';
	@override String get creditClassicItemDesc5 => '享受iBank Mastercard带来的独家折扣和众多优惠及热销';
	@override String get creditGoldItem1 => '最高信用';
	@override String get creditGoldItem2 => '无限可能';
	@override String get creditGoldItem3 => '先买后付';
	@override String get creditGoldItem4 => '特权';
	@override String get creditGoldItemDesc1 => '额度高达 500,000 美元';
	@override String get creditGoldItemDesc2 => '无论您在本地还是国外使用，都可以放心地接受您的卡。访问全球超过16,000家酒店、餐厅和休息室。您的卡保证了您旅途中随时随地的便利和接受。通过 iBank Mobile 应用轻松管理您的信用卡';
	@override String get creditGoldItemDesc3 => '享受高达45天的0%利息购物交易。免费：最多5张附属卡';
	@override String get creditGoldItemDesc4 => '享受 iBank Mastercard 的独家优惠，包括特别折扣、现金奖励等。此外，还可以免费享受最多三次的机场贵宾休息室使用';
	@override String get creditPlatinumItem1 => '独享';
	@override String get creditPlatinumItem2 => '最高信用';
	@override String get creditPlatinumItem3 => '无限可能';
	@override String get creditPlatinumItem4 => '先买后付';
	@override String get creditPlatinumItem5 => '特权';
	@override String get cardHolderName => '持卡人姓名';
	@override String get creditPlatinumItemDesc1 => '为我们最独特的客户提供最大购买力';
	@override String get creditPlatinumItemDesc2 => '额度高达 500,000 美元';
	@override String get creditPlatinumItemDesc3 => '无论您在本地还是国际使用，都可以放心地接受您的卡。访问全球超过16,000家酒店、餐厅和休息室。您的卡保证了您旅途中随时随地的便利和接受。通过 iBank Mobile 应用轻松管理您的信用卡';
	@override String get creditPlatinumItemDesc4 => '享受高达45天的0%利息购物交易。免费：最多5张附属卡';
	@override String get creditPlatinumItemDesc5 => '享受 BIC Mastercard 的独家优惠，包括特别折扣、现金奖励等。此外，还可以免费享受最多三次的机场贵宾休息室使用';
	@override String get openCreditCardRegistration => '开放信用卡注册';
	@override String get nationalIDCard => '国家身份证';
	@override String get reviewInformation => '审查信息';
	@override String get registrationSuccessful => '注册成功';
	@override String get creditSuccessDesc => '感谢您对 iBank 信用卡产品的兴趣。您的信息已被记录。我们的客户服务团队会尽快与您联系';
	@override String get creditCardClassicTitle => '信用经典万事达卡';
	@override String get creditCardGoldTitle => '信用黄金万事达卡';
	@override String get creditCardPlatinumTitle => '信用白金万事达卡';
	@override String get maximumDailyLimit => '\$ 2,000 最高日限额';
	@override String get neverHaveToDeal => '再也不必担心再次遗失您的卡片的麻烦';
	@override String get secure => '安全';
}

// Path: cardTabScreen
class _TranslationsCardTabScreenZh extends _TranslationsCardTabScreenEn {
	_TranslationsCardTabScreenZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get totalLinkAccountBalance => '连接至账户余额';
	@override String get totalCreditLimit => '信用总额度';
	@override String get totalOutstandingBalance => '未结总余额';
	@override String get outstandingBalance => '未偿余额';
	@override String numberOfCard({required Object amount}) => '银行卡号码: ${amount}';
	@override String get doNotHaveCardTitle => '无银行卡标题';
	@override String get doNotHaveCardMessage => '开设借记卡探索更多福利';
	@override String get doNotHaveCardMessageDebitCard => '开通并探索借记卡的所有好处';
	@override String get openNewCard => '开设新账户';
	@override String get explore => '探索';
}

// Path: cardStatement
class _TranslationsCardStatementZh extends _TranslationsCardStatementEn {
	_TranslationsCardStatementZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '主题';
	@override String get period => '周期';
	@override String get statementBalance => '结单余额';
	@override String get cardNumber => '银行卡号码';
	@override String get dueDate => '到期日';
	@override String get supplementary => '补充';
	@override String get selectStatementPeriod => '选择结单周期';
	@override String get emailMe => '电邮至我';
	@override String get download => '下载';
}

// Path: cardHistory
class _TranslationsCardHistoryZh extends _TranslationsCardHistoryEn {
	_TranslationsCardHistoryZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get month => '月';
	@override String get transactionDetails => '交易明细';
	@override String get lastMonth => '上个月';
	@override String get lastThreeMonth => '最后三个月';
	@override String get custom => '定制';
	@override String get transactionHistory => '交易记录';
	@override String get emptyTransactionList => '清空交易记录';
	@override String get transactionList => '交易记录';
	@override String get transactionId => '交易验证';
	@override String get merchantName => '商户名称';
	@override String get country => '国家';
	@override String get transactionTime => '交易时间';
	@override String get status => '状态';
	@override String get tracingCode => '追踪码';
	@override String get timeRange => '时间段';
	@override String get fromAmount => '从金额';
	@override String get toAmount => '至金额';
	@override String get approvalCode => '批准代码';
}

// Path: filterCard
class _TranslationsFilterCardZh extends _TranslationsFilterCardEn {
	_TranslationsFilterCardZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get validateBeforeDatetimeMessage => '请选择现有日期之后的日期';
	@override String get validateLessThanDatetimeMessage => '“从”的日期须小于”至“的日期';
	@override String get validateMaxRangeDaysMessage => '请选择少于90天的周期';
	@override String get requestType => '请求';
	@override String get systemUpdate => '系统更新';
	@override String get balanceChanges => '余额更改';
	@override String get fromAccount => '从金额';
	@override String get toAccount => '至金额';
}

// Path: selectCreditCard
class _TranslationsSelectCreditCardZh extends _TranslationsSelectCreditCardEn {
	_TranslationsSelectCreditCardZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get virtualCard => '虚拟卡';
	@override String get virtualCardDescription => '完整功能，可即刻上线交易，以及更多免费服务。';
	@override String get physicalCard => '实体卡';
	@override String get physicalCardDescription => '传统实体卡，便捷地享用各种福利，寄送上门服务。';
	@override String get cardDeliveryAddress => '银行卡寄送地址';
	@override String get selectAddress => '选择地址';
	@override String get linkedPaymentAccount => '连接支付账户';
	@override String get termsAndCondition => '条款与细则';
	@override String get agreeTermsMessage => '点触“创建”即您同意iBank条款与细则。';
}

// Path: customer
class _TranslationsCustomerZh extends _TranslationsCustomerEn {
	_TranslationsCustomerZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get security => '安全';
	@override String get confirmPasscode => '确认通行码';
	@override String get changePasscode => '更换通行码';
	@override String get curentPasscode => '现有通行码';
	@override String get forgotPasscode => '忘记通行码？';
	@override String get description => '建议避免使用重复或易猜的通行码';
	@override String get loginWithFaceid => '脸部识别登入';
	@override String get authTransactionWithFaceid => '脸部识别认证交易';
	@override String get logoutAfter => '登出后';
	@override String get transactionLimit => '交易额度';
	@override String get transactionOwnAccount => '个人户口交易';
	@override String get transactionToIbankAccount => '转账至IBank账户';
	@override String get transactionOther => '其它交易与支付';
	@override String get perDay => '每日';
	@override String get perTransaction => '每笔交易';
	@override String get edit => '编辑';
	@override String get save => '储存';
	@override String get createNewRequest => '创建新请求';
	@override String get requestTitle => '请求标题';
	@override String get placeholder => '占位符';
	@override String get requestDetail => '请求详情';
	@override String get uploadImage => '上传图片';
	@override String get create => '创建';
	@override String get detailDescription => '详细描述';
	@override String get type => '类型';
	@override String get transactionID => '交易ID';
	@override String get tracingCode => '跟踪码';
	@override String get time => '时间';
	@override String get requestType => '请求类型';
	@override String get transaction => '交易';
	@override String get status => '状态';
	@override String get traceID => '跟踪ID';
	@override String get titleOfRequest => '请求标题';
	@override String get loginWithFingerprint => '指纹登录';
	@override String get authTransactionWithFingerprint => '使用指纹验证交易';
	@override String limitTransactionRules({required Object value, required Object currency}) => '达到最高限额限制 (${value} ${currency})';
	@override String get discardUpdateTransactionLimit => '您确定要取消交易限额更新吗？';
}

// Path: profile
class _TranslationsProfileZh extends _TranslationsProfileEn {
	_TranslationsProfileZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get myProfile => '我的档案';
	@override String get personalInformation => '个人信息';
	@override String get username => '用户姓名';
	@override String get fullName => '全名';
	@override String get gender => '性别';
	@override String get maritalStatus => '婚姻状况';
	@override String get dateOfBirth => '出生日期';
	@override String get eKYCStatus => '线上用户认证状况';
	@override String get homeBranch => '注册';
	@override String get contactInformation => '联系地址';
	@override String get phoneNumber => '电话号码';
	@override String get email => '电邮';
	@override String get pleaseUpdateYourEmail => '请更新您的电邮';
	@override String get address => '地址';
	@override String get newAddress => '新地址';
	@override String get updateSuccessfully => '更新成功';
	@override String get thankYouForUpdatingInfo => '感谢您更新信息';
	@override String get viewProfile => '检阅';
	@override String get changeAddress => '更改地址';
	@override String get currentAddress => '现有地址';
	@override String get changeEmail => '更改电邮';
	@override String get currentEmailAddress => '目前电邮';
	@override String get newEmailAddress => '新电邮地址';
	@override String get transactionLimit => '交易限额';
	@override String get edit => '编辑';
	@override String get save => '储存';
	@override String get emailToIBank => '电邮至iBank';
	@override String get location => '地点';
	@override String get socialMedia => '社交媒体';
	@override String get facebook => '面子书';
	@override String get instagram => 'Instagram';
	@override String get telegram => '电报';
	@override String get tiktok => '抖音';
	@override String get linkedIn => '领英';
	@override String get youtube => '油管';
	@override String get security => '保安';
	@override String get loginWithFaceID => '面部识别登入';
	@override String get authenticateTransactionsWithFaceID => '面部识别认证交易';
	@override String get changePasscode => '更改通行码';
	@override String get logOutAfter3minutes => '3分钟后登出';
	@override String get logOutAfter => '登出后';
	@override String get smsBanking => '中小型企业存款';
	@override String get emailNotification => '电邮通知';
	@override String get emailNotificationSettingDes => '尚未注册电邮，请至档案添';
	@override String get balanceNotificationAtLoginScreen => '账户余额于登入屏';
	@override String get balanceNotificationAtLoginScreenDes => '无需登入查看您的余额变动';
	@override String get groupBalanceNotification => '团体余额通知';
	@override String get notificationSettings => '通知设置';
	@override String get selectAccount => '选择账户';
	@override String get transferToOwnAccount => '转账至个人账户';
	@override String get perDay => '每日';
	@override String get perTransaction => '每笔交易';
	@override String get transferToiBankAccount => '转账至iBank账户';
	@override String get otherTransferAndPayments => '其它转账及支付';
	@override String get profileAndSettings => '简介与设置';
	@override String get setDefaultAccount => '默认账户设置';
	@override String get language => '语言';
	@override String get support => '支援';
	@override String get lastLogin => '上次登入';
	@override String get device => '设备';
	@override String get changeLanguageSuccessMessage => '转换语言成功信息';
	@override String get setDefaultAccountSuccess => '您已成功设置新的默认账户';
	@override String get updateAvatar => '更新头像';
	@override String get chooseFromLibrary => '从库中选择';
	@override String get takePicture => '拍照';
	@override String get deleteAvatar => '删除头像';
	@override String get reTake => '重新拍摄';
	@override String get useThisPhoto => '使用此照片';
	@override String get deleteAvatarMessage => '您确定要删除此图像吗？';
	@override String get avatarDeletedSuccessfully => '头像删除成功';
	@override String get noImage => '没有图片';
	@override String get avatarUpdateSuccessfully => '头像更新成功';
	@override String get successfullyRevoked => '成功撤销';
	@override String get revokedMsg => '现在您可以在任何您希望注册的设备上登录！';
	@override String get buildingName => '建筑名称';
	@override String get egUKCONDOROOM => '例如：星光大厦123';
	@override String get updateTxnLimitSuccess => '您的交易限额已成功更新';
	@override String get emailHint => '例如：abc@yyy.zzz';
	@override String get numberHintText => 'eg. 123';
	@override String get upgradeKYC => '升级KYC';
	@override String get profileLogOut => '您确定要退出 iBank 吗？';
	@override String get displaySetting => '显示设定';
	@override String get lightTitle => '光';
	@override String get darkTitle => '黑暗';
	@override String get textSizeTitle => '文字大小';
	@override String get whatNewOnIBank => 'iBank上有什么新功能？';
	@override String get dragAvatar => '拖动图像进行调整';
	@override String get smaller => '更小';
	@override String get original => '原来的';
	@override String get bigger => '大';
}

// Path: transfer
class _TranslationsTransferZh extends _TranslationsTransferEn {
	_TranslationsTransferZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get forLunch => '用于午餐';
	@override String get forDinner => '用于晚餐';
	@override String get forCoffee => '用于喝咖啡';
	@override String get forATrip => '用于旅行';
	@override String get earlierThanToday => '执行日期不能早于今天';
	@override String get scheduleExchageDescription => '交易时将计算汇率。';
	@override String get scheduledTransactionContinued => '预定交易已继续！';
	@override String get scheduledTransactionUpdated => '预定交易已更新！';
	@override String get scheduledTransactionPaused => '预定交易已暂停！';
	@override String get scheduledTransactionDeleted => '预定交易已删除！';
	@override String get editPeriodicTransfer => '编辑定期转账';
	@override String get transactionOrderScheduled => '交易订单已安排！';
	@override String get viewDetail => '查看详情';
	@override String totalTransactions({required Object numOfTransaction, required Object amountWithCurrency}) => '${numOfTransaction} 笔交易 - ${amountWithCurrency}';
	@override String get transaction => '交易';
	@override String get ownAccount => '自己的账户';
	@override String get iBankAccount => '网上银行账户';
	@override String get periodicTransferTo => '定期转至';
	@override String get transferType => '传输类型';
	@override String get scheduleTransaction => '安排交易';
	@override String transferScheduleDesctiption({required Object numberOfTransaction}) => '${numberOfTransaction} 笔交易将在选定的时间段内自动执行';
	@override String get frequency => '频率';
	@override String dayOfMonth({required Object dayOfMonth}) => '第 ${dayOfMonth} 天';
	@override String get oneTime => '一次';
	@override String get daily => '每天';
	@override String get weekly => '每周';
	@override String get monthly => '每月';
	@override String get transferToLocalBanksViaBakong => '通过 Bakong 转账至当地银行';
	@override String get newBeneficiary => '新受益人';
	@override String get transactionBelowThreshold => '交易金额低于门槛值';
	@override String get externalTnxRef => '外部 Txn 参考';
	@override String get toAccount => '至账户';
	@override String get equivalentAmount => '相等的金额';
	@override String get thaiqrAllowOnlyKHR => '只允许使用KHR。';
	@override String get thaiqrAllowOnlyKHRDescription => '泰国QR支付仅允许使用柬埔寨瑞尔（KHR）银行账户。';
	@override String get crossBorderQrTransfer => '跨境泰国QR支付';
	@override String get transfer => '转账';
	@override String get toOwnAccount => '至本身账户';
	@override String get toIBankAccount => '至iBank账户';
	@override String get toLocalBank => '至本地银行';
	@override String get toBaKongWallet => '至Bakong钱包';
	@override String get toCard => '至银行卡';
	@override String get toInternational => '国际转账';
	@override String get beneficiary => '受益人';
	@override String get schedule => '排期';
	@override String get emptyBeneficiaryList => '清空受益人名单';
	@override String get createPeriodicTransfer => '创建定期转账';
	@override String get amount => '金额';
	@override String get limit => '额度';
	@override String get description => '描述';
	@override String get optional => '（选项）';
	@override String get currency => '外汇';
	@override String get transferToOwnAccount => '转账至本身账户';
	@override String get transferToLocalBanks => '转账至本地银行';
	@override String get transferToIBank => '转账至iBank';
	@override String get transferToBaKongWallet => '转账至Bakong钱包';
	@override String get selectAccount => '选择账户';
	@override String get review => '审核';
	@override String get toAccountNumber => '至账户号码';
	@override String get beneficiaryName => '受益人姓名';
	@override String get beneficiaryBank => '受益人银行';
	@override String get descriptionText => '描述';
	@override String get type => '类别';
	@override String get confirm => '确认';
	@override String get edit => '编辑';
	@override String get successfulTransaction => '交易成功';
	@override String get processingTransaction => '交易处理中';
	@override String get transactionID => '交易证号';
	@override String get tracingCode => '追踪码';
	@override String get time => '时间';
	@override String get newTransfer => '新转账';
	@override String get failedTransaction => '交易失败';
	@override String get cancelTransactionTitle => '取消交易?';
	@override String get cancelTransactionContent => '所有输入信息将被删除';
	@override String get transferAmount => '转账金额';
	@override String get fee => '费用';
	@override String get totalAmount => '总金额';
	@override String get iBank => 'iBank';
	@override String defaultTransferNote({required Object account}) => '${account} 转账';
	@override String get accountNoHintText => '输入账户号码';
	@override String get accountName => '账户名称';
	@override String get service => '服务';
	@override String get toBank => '至银行';
	@override String get selectBank => '选择银行';
	@override String get bakong => 'Bakong';
	@override String get ownAccountTransferDescription => '转账至本身账户描述';
	@override String get bakongTransferDescription => '通过Bakong转账本地银行';
	@override String get internalTransferDescription => '境内转账描述';
	@override String get bakongWalletTransferDescription => '您只有1个账户';
	@override String get oneAccountMessageForOwnTransfer => '每日';
	@override String limitAmountPerday({required Object amount, required Object currency}) => '${amount} ${currency}/day';
	@override String limitAmountPerTransaction({required Object amount, required Object currency}) => '${amount} ${currency}/transaction';
	@override String get toPhoneNumber => '至电话号码';
	@override String get create => '创建';
	@override String get periodicTransfer => '定期转账';
	@override String get addNewBeneficiary => '添加新受益人';
	@override String get addNew => '添加新的';
	@override String get transactionType => '交易类型';
	@override String get domesticTransfer => '国内转账';
	@override String get bank => '银行';
	@override String get insufficientBalanceTitle => '余额不足';
	@override String get setNickname => '设置昵称';
	@override String get addNewBeneficiarySuccessfully => '成功添加新受益人';
	@override String get viewList => '查看列表';
	@override String get viewInfo => '查看信息';
	@override String get editNickName => '编辑昵称';
	@override String get beneficiaryInformation => '受益人信息';
	@override String get name => '姓名';
	@override String get nickName => '昵称';
	@override String get accountInactiveMessage => '账户不活跃';
	@override String get pleaseEnterAccountNumber => '请输入账号';
	@override String get beneficiarySavedSuccessfully => '成功保存受益人';
	@override String get beneficiaryList => '受益人列表';
	@override String get beneficiaryEditedSuccessfully => '成功编辑受益人';
	@override String get deletedSuccessfully => '成功删除';
	@override String get deleteBeneficiary => '删除受益人';
	@override String get deleteBeneficiaryMessage => '您确定要将此人从您的联系人中移除吗？';
	@override String get cancelCashWithdrawal => '取消取款';
	@override String get cashToATMOnlyAppliesToUSDAccount => '现金到ATM仅适用于美元账户。';
	@override String get cardlessATMWithdrawal => '无卡ATM取款';
	@override String amountMustBeMultipleOf100({required Object amount, required Object currency}) => '取款金额必须是 ${amount} ${currency} 的倍数';
	@override String get transactionHash => '交易哈希';
	@override String get saveBeneficiary => '保存受益人';
	@override String get exceedsTransactionLimitError => '转账金额超出交易限额';
	@override String minTransferAmountError({required Object amount}) => '最低转账金额为 ${amount}';
	@override String get maxTransferAmountError => '付款超出信用额度';
	@override String get sameAccountErrorMessage => '接收账户不得与源账户相同';
	@override String get accountNotFound => '未找到账户';
	@override String get bakongWallet => 'Bakong钱包';
	@override String get localBank => '本地银行';
	@override String get bakongID => 'Bakong ID';
	@override String get favoriteDeleted => '收藏已删除';
	@override String get total => '总计';
	@override String get status => '状态';
	@override String get pause => '暂停';
	@override String get delete => '删除';
	@override String get createScheduleTransactionFailed => '创建预定交易失败';
	@override String get reachLimitPFMTitle => '达到交易限额';
	@override String get reachLimitPMFMessage => '您已达到账户消费限额。您需要升级 KYC 级别才能获得每月无限制交易';
}

// Path: account
class _TranslationsAccountZh extends _TranslationsAccountEn {
	_TranslationsAccountZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get totalBalance => '总余额';
	@override String get recieved => '已接收';
	@override String get spent => '消费';
	@override String get change => '更改';
	@override String get accountList => '账户表';
	@override String get balance => '余额';
	@override String get accountNumber => '账户号码';
	@override String get transfer => '转账';
	@override String get qrCode => '二维码';
	@override String get statement => '结单';
	@override String get more => '更多';
	@override String get transactionHistory => '交易记录';
	@override String get accountInfo => '账户信息';
	@override String get changeAccountName => '更换账户名称';
	@override String get viewLinkedInfo => '检阅连接信息';
	@override String get setAsDefaultAccount => '默认账户设置';
	@override String get shareAccountDetail => '分享账户明细';
	@override String get thisMonth => '本月';
	@override String get lastMonth => '上个月';
	@override String get last2Months => '上两个月';
	@override String get last3Months => '上三个月';
	@override String get byDate => '按期';
	@override String get accountStatement => '账户结单';
	@override String get selectPeriod => '选择周期';
	@override String get pdfFile => '便携式文档';
	@override String get emailMe => '电邮至我';
	@override String get download => '下载';
	@override String get transactionDetail => '交易明细';
	@override String get transactionID => '交易证号';
	@override String get fromAccount => '从账户';
	@override String get senderName => '发送者姓名';
	@override String get toAccount => '至账户';
	@override String get toAccountName => '至账户名称';
	@override String get transactionTime => '交易时间';
	@override String get tracingCode => '追踪码';
	@override String get description => '描述';
	@override String get share => '分享';
	@override String get returnToSender => '返回发送者';
	@override String get repeat => '重复';
	@override String get splitBill => '摊分账单';
	@override String get transferViaBakong => '通过Bakong转账';
	@override String get linkedInfo => '连接信息';
	@override String get linkedPhoneNumber => '连接电话号码';
	@override String get linkedCards => '连接银行卡';
	@override String get iBankVISATravel => 'iBank VISA 旅游';
	@override String get primary => ' 首要';
	@override String get qrImageSaveFailed => '二维码图像储存至您相册失败';
	@override String get addAmount => '增添金额';
	@override String get all => '全部';
	@override String get date => '日期';
	@override String get creditToAccount => '存入账户';
	@override String get fromDateMustBeLessThanToDate => '之前日期须小于之后日期';
	@override String get setDefaultAccountSuccessfully => '默认账户设置成功';
	@override String get enterAccountName => '输入账号名称';
	@override String get accountNicknameUpdated => '账户昵称已更新';
	@override String get transactionFilter => '筛选交易';
	@override String get incoming => '即将来临';
	@override String get outgoing => '即将去往';
	@override String get last60Days => '前60天';
	@override String get last7Days => '前7天';
	@override String get last90Days => '前90天';
	@override String get custom => '定制';
	@override String get fromAmount => '从金额';
	@override String get toAmount => '至金额';
	@override String get accountInformation => '账户信息';
	@override String get accountType => '账户类别';
	@override String get accountName => '账户名称';
	@override String get productDescription => '产品描述';
	@override String get floatAmount => '浮差金额';
	@override String get earmarkAmount => '专用金额';
	@override String get drawingLimit => '提款限额';
	@override String get openSince => '开户始于';
	@override String get swiftTransferInstruction => 'SWIFT转账指示';
	@override String get banksAddress => '银行地址：';
	@override String get tel => '电话号码';
	@override String get field56A => 'Field 56A（受益人往来账户银行）：';
	@override String get intermediaryBank => '中介银行';
	@override String get intermediarySWIFT => '跨境转账中介SWIFT';
	@override String get intermediaryAddress => '中介地址';
	@override String get field57A => 'Field 57A（受益人银行）:';
	@override String get beneficiaryBank => '受益人银行：';
	@override String get beneficiarySWIFT => '受益人SWIFT:';
	@override String get beneficiaryAddress => '受益人地址：';
	@override String get email => '电邮';
	@override String get field59A => 'Field 59A（受益客户）:';
	@override String get beneficiaryName => '受益人姓名';
	@override String get beneficiaryAccountNumber => '受益人账户号码';
	@override String get currentAccount => '往来账户';
	@override String get hiTherePleaseFindMyBICBankAccount => '您好，以下是 my BIC银行账户信息：';
	@override String get totalSavingsAmount => '储蓄账户总金额';
	@override String get openSavingAccount => '开设储蓄账户';
	@override String get list => '列表';
	@override String get contractNumber => '合同编号';
	@override String get principalAmount => '本金数额';
	@override String get referenceID => '参考编号';
	@override String get originalTransaction => '原始交易';
	@override String get downloadCertificate => '下载证书';
	@override String get interest => '利息';
	@override String get term => '期限';
	@override String get valueDate => '起息日';
	@override String get maturityDate => '到期日';
	@override String get onMaturityDate => '到期日';
	@override String get productType => '产品类别';
	@override String get productName => '产品名称';
	@override String get currentPrincipal => '目前本金';
	@override String get totalDisbursement => '总发放金额';
	@override String get totalDisbursementAmount => '贷款支出总额';
	@override String get branchName => '分行名称';
	@override String get openDate => '开设日';
	@override String get nextCollectionDate => '下次征收日';
	@override String get explore => '探索';
	@override String get totalDebt => '欠款总额';
	@override String get hereTransferInstruction => 'my SWIFT转账指示于此';
	@override String get sent => '发送';
	@override String get showInactive => '显示不活跃';
	@override String get hideInactive => '隐藏不活跃';
	@override String get amountMustBeLessThanToAmount => '金额必须小于支付金额';
	@override String get status => '状态';
	@override String get noImage => '没有图片';
	@override String get selectDateRange => '选择日期范围';
	@override String get billPayment => '缴费';
	@override String get openNewAccount => '开立新账户';
	@override String get openNewSaving => '开立新储蓄账户';
	@override String get fixedDeposit => '定期存款';
	@override String get openSavingsAccount => '开立储蓄账户';
	@override String get savingAccountDesc => '我们的储蓄账户提供有吸引力的利率，可以帮助您实现财务目标';
	@override String get fixedDepositDesc => '通过iBank的定期存款账户，享受有吸引力的利率，为长期投资做好规划';
	@override String get despositAmount => '存款金额';
	@override String get interestRate => '利率 (p.a.)';
	@override String get sourceAccount => '来源账户';
	@override String get viewAccount => '查看账户';
	@override String get savingAccountDesc1 => '美元账户年利率为0.50%，人民币账户年利率为1.00%';
	@override String get savingAccountDesc2 => '没有持续的每月费用';
	@override String get savingAccountDesc3 => '免费开户';
	@override String get savingAccountDesc4 => '开户需存入10美元或40,000柬埔寨里尔';
	@override String get savingAccountRules => '开户需存入50美元或0柬埔寨里尔';
	@override String get failedToOpenSavingsAccount => '未能开设新储蓄账户。请重试或联系我们的热线寻求支持。';
	@override String get savingAccountDesc5 => '客户可额外开设两个美元/柬埔寨里尔账户';
	@override String get savingAccountTerm => '通过点击“下一步”，您同意iBank的条款和条件';
	@override String get attractiveInterestRate => '有吸引力的\n利率';
	@override String get noFeeAccountOpening => '免费开户';
	@override String get feesCharges => '费用与收费';
	@override String get ableToEarlySettlement => '可以提前结清';
	@override String get depositAccDesc1 => '在以2,000,000柬埔寨里尔起步的柬埔寨里尔账户上最高可获得6.25%的年利率';
	@override String get depositAccDesc2 => '在以500美元起步的美元账户上最高可获得6.25%的年利率';
	@override String get depositAccDesc3 => '选择3个月至36个月之间的存期';
	@override String get depositAccDesc4 => '选择到期结息或月结息的存款方式';
	@override String get openFixedDeposit => '开立定期存款';
	@override String get interestPayment => '利息支付';
	@override String get depositAmount => '存款金额';
	@override String get maturityTerms => '到期条件';
	@override String get maturityInstructions => '到期指示';
	@override String get depositTerm => '通过点击"打开"，您同意iBank的条款和条件';
	@override String get interestPaymentOptions => '利息支付选项';
	@override String get interestAtMaturity => '到期利息';
	@override String get interestAtMaturityDesc => '存款利息将与存款金额一起在到期时支付到您的账户';
	@override String get monthlyInterest => '每月利息';
	@override String get monthlyInterestDesc => '存款利息将每月支付到您的账户，存款金额将在到期时支付.';
	@override String get youreSendingADeposit => '您正在发送存款';
	@override String get duration => '期限';
	@override String get noticeDesc => '根据您在收到利息的日期的居住状态，税额可能有所不同';
	@override String get depoistResultSuccessDesc => '您已成功开立新的定期存款账户';
	@override String get closeAtMaturity => '到期关闭';
	@override String get time => '时间';
	@override String get notice => '通知';
	@override String get initialDepositAmount => '初始存款金额';
	@override String get depositResultFailedDesc => '未能成功开立新的定期存款账户';
	@override String get tryAgain => '再试一次';
	@override String get originalAmount => '原始金额';
	@override String get transactionDetailsTitle => '交易详情';
	@override String get permissionImageFail => '要下载QR码，请允许iBank访问您的照片。';
	@override String get changeAccountNickName => '更改账户昵称';
	@override String get accountNickname => '账户昵称';
	@override String get last30Days => '最近30天';
	@override String get permissionSaveImageFail => '要下载QR码，请允许iBank访问您的照片库。';
	@override String get failedToDownload => '下载失败';
	@override String availableBalance({required Object amount, required Object currency}) => '可用余额 ${amount} ${currency}';
	@override String get settlement => '结算';
	@override String get selectTheReceivingAccount => '选择接收账户';
	@override String get earlySettlement => '提前结算';
	@override String get earlySettlementQuestion => '如果您提前结算，您将失去利息。您确定要结算吗？';
	@override String get stay => '保留';
	@override String get settleUp => '结算';
	@override String get enterAmount => '输入金额';
	@override String get overview => '概览';
	@override String get own => '自有';
	@override String get borrow => '借款';
	@override String get total => '总计';
	@override String get noStatisticsYet => '尚无统计数据';
	@override String get noStatisticsYetContent => '您的概览图将在您开设信用卡或贷款后开始跟踪';
	@override String get thereIsNoCardLinkedToThisAccount => '目前，此账户未链接任何卡片';
	@override String get pleaseSelectDate6NearestMonths => '请选择最近6个月内的账单日期';
	@override String get pleaseSelectDate365NearestDays => '请选择最近1年内的账单日期';
	@override String get invalidDate => '无效日期';
	@override String get savingsAccount => '储蓄账户';
	@override String get selectNewAccountCurrency => '选择新账户的货币';
	@override String despositAmountError({required Object amount, required Object currency}) => '最低金额为 ${amount} ${currency}';
	@override String get yourAreAboutToOpenNew => '您即将开设新的';
	@override String get openSavingAccountSuccessMsg => '您已成功开设一个新的储蓄账户';
	@override String get insufficientBalance => '余额不足';
	@override String get insufficientBalanceDescription => '您的账户余额不足以执行此交易。';
	@override String get reachedMaximumAccountLimitation => '已达到账户最高限制';
	@override String reachedMaximumAccountLimitationDesc({required Object currency}) => '您已超出开设${currency}货币新账户的限制，每位客户仅限两个。';
	@override String get noOngoingMonthlyFee => '没有持续的月费';
	@override String get payBill => '支付账单';
	@override String get earlyClosure => '提前关闭';
	@override String get closeTermDepositEarly => '如果您提前关闭定期存款，您将失去部分利息。您确定要继续吗？';
	@override String get openNewDeposit => '开立新存款';
}

// Path: currencyType
class _TranslationsCurrencyTypeZh extends _TranslationsCurrencyTypeEn {
	_TranslationsCurrencyTypeZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get usd => 'USD';
	@override String get khr => 'KHR';
}

// Path: cardRepayment
class _TranslationsCardRepaymentZh extends _TranslationsCardRepaymentEn {
	_TranslationsCardRepaymentZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '主题';
	@override String get toCardNumber => '至卡号';
	@override String get cardName => '卡名称';
	@override String get repaymentMethod => '再支付方法';
	@override late final _TranslationsCardRepaymentOptionZh option = _TranslationsCardRepaymentOptionZh._(_root);
}

// Path: billPayment
class _TranslationsBillPaymentZh extends _TranslationsBillPaymentEn {
	_TranslationsBillPaymentZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get deleteFavorite => '删除收藏';
	@override String get deleteFavoriteDescription => '您确定要删除这个收藏吗？';
	@override String get billPayment => '支付账单';
	@override String get topUp => '加额';
	@override String get internetTV => '网络电视';
	@override String get utilities => '设施';
	@override String get education => '教育';
	@override String get insurance => '保险';
	@override String get entertainment => '娱乐';
	@override String get realEstate => '房地产';
	@override String get tradingDistribution => '贸易与经销';
	@override String get otherPayment => '其它支付';
	@override String get favorites => '喜爱';
	@override String get schedule => '排期';
	@override String get schedulePayment => '支付排期';
	@override String get phoneNumber => '电话号码';
	@override String get enterPhoneNumber => '输入电话号码';
	@override String get enterContactId => '输入联系证号';
	@override String get enterCustomerId => '输入客户证号';
	@override String get enterStudentId => '输入学生证号';
	@override String get enterPolicyNumber => '输入保单号';
	@override String get enterSNumber => '输入s号';
	@override String get enterInvoiceId => '输入发票证号';
	@override String get enterSabbyAccount => '输入Sabby账号';
	@override String get amount => '金额';
	@override String get khr => '柬埔寨瑞尔';
	@override String get provider => '支付者';
	@override String get paidTo => '支付给';
	@override String get receiver => '接收者';
	@override String get fee => '费用';
	@override String get service => '服务';
	@override String get supportedProvider => '支援支付者';
	@override String get cellcard => 'Cellcard';
	@override String get selectContact => '选择联系';
	@override String get smart => 'Smart';
	@override String get yesPhone => 'Yesphone';
	@override String get coolTel => 'CoolTel';
	@override String get seatel => 'Seatel';
	@override String get metfone => 'Metfone';
	@override String get yourPhone => 'Your phone number';
	@override String get contactId => '联系证号';
	@override String get customerId => '客户证号';
	@override String get invoiceId => '发票证号';
	@override String get studentId => '学生证号';
	@override String get sabayAccount => 'Sabay账户';
	@override String get policyNumber => '保单号';
	@override String get transactionId => '交易证号';
	@override String get tracingCode => '追踪码';
	@override String get newPayment => '新支付';
	@override String get successfulPayment => '支付成功';
	@override String get failedPayment => '支付失败';
	@override String get submitBillError => '支付失败';
	@override String get unableToProcess => '无法继续';
	@override String get billNotFound => '无此账单';
	@override String get cancelPaymentTitle => '取消支付';
	@override String get cancelPaymentDesc => '所有输入之信息将被删除';
	@override late final _TranslationsBillPaymentDescZh desc = _TranslationsBillPaymentDescZh._(_root);
	@override String get exchangeRate => '汇率';
	@override String get paymentAmount => '付款金额';
	@override String get debitAmount => '借记金额';
	@override String get crossCurrencyNote => '借记金额是基于汇率的动态计算。';
	@override String get changeProvider => '更换供应商';
	@override String get changeProviderDesc => '您确定要更换账单支付的供应商吗？';
	@override List<String> get dateTimeDesc => [
		'Tomorrow',
		'Today',
		'Yesterday',
	];
	@override String minAmountValidateError({required Object minAmount}) => '最低付款金额为 ${minAmount}';
	@override String maxAmountValidateError({required Object maxAmount}) => '最大付款金额为 ${maxAmount}';
	@override String get noBillToPayError => '没有账单要支付';
	@override String get billExpiredError => '比尔已过期';
	@override String limitAmountTerms({required Object minAmount, required Object maxAmount, required Object currency}) => 'Amount should be between ${minAmount} to ${maxAmount} ${currency}';
	@override String get scanBarcodeAppbarTitle => 'ស្កេន QR/Barcode';
	@override String get alignFrameWithBarCode => 'តម្រឹមស៊ុមជាមួយ QR/Barcode';
	@override String get uploadBarcode => 'បង្ហោះ QR/Barcode';
	@override String get serviceSupports => '我们的服务仅支持柬埔寨电话号码';
	@override String get paymentProcess => '正在处理付款';
	@override String get paymentToProcess => '付款正在处理';
	@override String get noted => '注意：';
	@override String get exchangeRateNoted => '借记金额是根据汇率动态计算的。';
	@override String get customerName => '客户姓名';
	@override String get invalidCustomerId => '未找到客户';
	@override String get payBy => '支付方式';
	@override String get expiryAt => '到期时间';
	@override String get edcAmountSupportTextfield => '金额应在100到400,000,000柬埔寨瑞尔之间';
	@override String get noFavorite => '没有收藏';
	@override String get createYourFirstFavorite => '创建您的第一个收藏，它将显示在这里。';
	@override String get addNewFavorite => '添加新收藏';
	@override String get selectBillPaymentService => '选择账单支付服务';
	@override String get invoiceExpiredTitle => '发票已过期';
	@override String get edc => '柬埔寨电力公司';
	@override String get invalidInvoiceId => '无效的发票ID';
	@override String get invalidAmount => '无效金额';
	@override String get exceedDailyLimit => '超过每日限额';
	@override String get exceedMonthlyLimit => '超过每月限额';
	@override String get exceedTransactionLimit => '超过交易限额';
	@override String get insufficientBalanceDescription => '您的账户余额不足以执行此交易。请再试一次。';
	@override String get insufficientBalance => '余额不足';
	@override String get rename => '重命名';
	@override String get overdueDate => '逾期日期';
	@override String get selectFavoriteBill => '选择最喜欢的账单';
	@override String get favoriteBill => '常用账单';
	@override String get favoriteUpdateSuccess => '收藏夹更新成功';
	@override String get saveFavoriteSuccess => '收藏成功';
}

// Path: userDevices
class _TranslationsUserDevicesZh extends _TranslationsUserDevicesEn {
	_TranslationsUserDevicesZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '设备';
	@override String registerDate({required Object date}) => '注册日期: ${date}';
	@override String get warningMessage => '每次仅有一台设备可以激活。在其他设备使用此app登入时，目前的设备将被撤销。';
	@override String get revokeDevide => '撤销设备';
	@override String get revoke => '撤销';
	@override String get popUpWarningMessage => 'iBank从不要求您撤销您的设备。保持警惕，确保您确认要撤销目前的设备，并转移账户至其它设备。';
}

// Path: qrTransfer
class _TranslationsQrTransferZh extends _TranslationsQrTransferEn {
	_TranslationsQrTransferZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '二维码转账';
	@override String get exchangeRate => '汇率';
	@override String get debitAmount => '借记金额';
}

// Path: fxExchangeRate
class _TranslationsFxExchangeRateZh extends _TranslationsFxExchangeRateEn {
	_TranslationsFxExchangeRateZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get fxRate => '外汇汇率';
	@override String get iBankBuys => 'iBank 买入';
	@override String get iBankSells => 'iBank 卖出';
	@override String get atmBranches => 'ATM 和分行';
	@override String get branches => '分行';
	@override String get atm => 'ATM';
	@override String get faqs => '常见问题';
	@override String get enterKeywords => '输入关键词';
	@override String get lastUpdatedTime => '最后更新时间';
	@override String get calculator => '计算器';
	@override String get calculatorDescription => '输入一个货币字段时，汇率将自动计算';
	@override String get calculatorErrorMessage => '汇率目前正在检查。请稍后再试。';
	@override String get failedToDirection => '方向失败';
	@override String get failedToDirectionDescription => '要指引到此位置，请允许IBank访问您的位置';
}

// Path: taskToDo
class _TranslationsTaskToDoZh extends _TranslationsTaskToDoEn {
	_TranslationsTaskToDoZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '任务清单';
	@override String get upgradingYourIdentityVerification => '升级您的身份验证';
	@override String get enhanceYourBankingExperienceByUpgradingYourKYC => '通过升级您的KYC提升您的银行体验';
	@override String get electriciteDuCambodge => '柬埔寨电力公司';
	@override String get customerID => '客户ID';
	@override String get creditCardRepayment => '信用卡还款';
	@override String get identityVerification => '身份验证';
	@override String get verifyYourIdentity => '验证您的身份';
	@override String get makeTransactionWithHigherAmount => '进行高金额交易';
	@override String get noLimitOfTransactionInAMonth => '每月交易无限制';
	@override String get receiveSpecialCareOfBankStaff => '享受银行员工的特别关怀';
	@override String get completeAllDocumentForFutureUsages => '完成所有文件以备将来使用';
	@override String get upgradingYourKycLevel => '升级您的KYC级别';
	@override String get upgradingYourEKYCDesc => '本分步指南将指导您完成升级KYC的过程。';
	@override String get step => '步骤';
	@override String get goToAnyIBankSBranch => '前往任意iBank分行';
	@override String get contactTellerToRequestUpgradingKycLevel => '联系柜员请求升级KYC级别';
	@override String get providePersonalDocumentAsTellerGuideline => '根据柜员指引提供个人文件';
	@override String get fillInARegistrationFormAndWaitForProcess => '填写注册表并等待处理';
	@override String get findIBankBranch => '查找iBank分行';
	@override String get enableCamera => '启用摄像头访问以提升您的 iBank 体验';
	@override String get wouldLikeAccessCamera => '“iBank” 想要访问您的摄像头';
	@override String get receiveRealNotificaiton => '通过应用通知接收实时更新';
	@override String get wouldLikeSendNotificaion => '“iBank” 想要向您发送通知';
}

// Path: withdraw
class _TranslationsWithdrawZh extends _TranslationsWithdrawEn {
	_TranslationsWithdrawZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get withdrawMsg => '准备从ATM取款';
	@override String get yourWithdrawCode => '您的取款代码';
	@override String get atmWithdrawal => 'ATM取款';
}

// Path: editLayout
class _TranslationsEditLayoutZh extends _TranslationsEditLayoutEn {
	_TranslationsEditLayoutZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get editLayout => '编辑布局';
	@override String get frequentTransfers => '频繁转账';
	@override String get transferFrequentBeneficiary => '快速安全地转账给您的常用收款人';
	@override String get payBillsEffortlesslySecurely => '轻松安全地支付您的账单';
	@override String get rechargeAccountOrMobile => '轻松为您的账户或手机充值';
	@override String get noWidgetHidden => '没有隐藏的小部件';
	@override String get transactionLimit => '交易限额';
	@override String get setDefaultAccount => '设置默认账户';
	@override String get hiddenWidgets => '隐藏的小部件';
	@override String get notificationSetting => '通知设置';
	@override String get purchaseInsurance => '购买保险';
	@override String get controlPrivacySettingsDataPreferences => '控制您的隐私设置和数据偏好';
	@override String get layoutChangesSaved => '您的布局更改已保存';
	@override String get flightBooking => '航班预订';
	@override String get busBooking => '公交车预订';
	@override String get attractiveInterestRate => '有吸引力的利率';
	@override String get bookTicketsEffortlesslySecurely => '轻松安全地预订票';
	@override String get newFavoriteBill => '新常用账单';
	@override String get noWidgetDisplayed => '没有显示的小部件';
	@override String get displayedWidgets => '显示的小部件';
	@override String get dragWidgets => '拖动小部件以重新排列或隐藏它们，并在完成后保存更改。';
}

// Path: saveBillBeneficiary
class _TranslationsSaveBillBeneficiaryZh extends _TranslationsSaveBillBeneficiaryEn {
	_TranslationsSaveBillBeneficiaryZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '另存为收藏夹';
}

// Path: searchBillBeneficiary
class _TranslationsSearchBillBeneficiaryZh extends _TranslationsSearchBillBeneficiaryEn {
	_TranslationsSearchBillBeneficiaryZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '最喜欢的列表';
}

// Path: quickAction
class _TranslationsQuickActionZh extends _TranslationsQuickActionEn {
	_TranslationsQuickActionZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get payments => '付款方式';
	@override String get tranfer => '转账';
	@override String get topUp => '充值';
	@override String get qrScan => '二维码扫描';
}

// Path: asset.gPay
class _TranslationsAssetGPayZh extends _TranslationsAssetGPayEn {
	_TranslationsAssetGPayZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get addGPaySuccessTitle => '成功添加到 GPay';
	@override String get addGPaySuccessDescription => '您的卡片已准备好在商店使用 GPay 付款';
	@override String get guideToGPay => 'GPay 使用指南';
}

// Path: cardRepayment.option
class _TranslationsCardRepaymentOptionZh extends _TranslationsCardRepaymentOptionEn {
	_TranslationsCardRepaymentOptionZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get paymentDue => '逾期支付';
	@override String get minimumAmount => '最低金额';
	@override String get totalBalance => '总金额';
	@override String get optionalAmount => '选择金额';
	@override late final _TranslationsCardRepaymentOptionDescZh desc = _TranslationsCardRepaymentOptionDescZh._(_root);
}

// Path: billPayment.desc
class _TranslationsBillPaymentDescZh extends _TranslationsBillPaymentDescEn {
	_TranslationsBillPaymentDescZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get payForInternetTv => '支付互联网和电视账单。';
	@override String get payForElectricityWaterWaste => '支付电费、水费和垃圾费。';
	@override String get payForEducation => '支付教育和学费。';
	@override String get payForGamesApps => '购买游戏和应用的信用。';
	@override String get payForInsurance => '支付保险费。';
	@override String get payForRealEstate => '支付房地产费用。';
	@override String get payForOther => '向更多供应商付款。';
	@override String get payForTrading => '支付您的交易伙伴或分销商。';
}

// Path: cardRepayment.option.desc
class _TranslationsCardRepaymentOptionDescZh extends _TranslationsCardRepaymentOptionDescEn {
	_TranslationsCardRepaymentOptionDescZh._(_TranslationsZh root) : this._root = root, super._(root);

	@override final _TranslationsZh _root; // ignore: unused_field

	// Translations
	@override String get payForDue => '逾期前缴款避免被征收额外延迟费用及利率';
	@override String get payForMinimumAmount => '逾期前缴款避免被征收额外延迟费用';
	@override String get payForTotalBalance => '= New outstanding debt arises + remaining\nstatement balance';
	@override String get payForOptionalAmount => '输入您想要支付的金额';
}
