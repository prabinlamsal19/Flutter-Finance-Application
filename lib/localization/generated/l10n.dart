// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `EML`
  String get appname {
    return Intl.message(
      'EML',
      name: 'appname',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Workers’ compensation made easy`
  String get onboardingFirst {
    return Intl.message(
      'Workers’ compensation made easy',
      name: 'onboardingFirst',
      desc: '',
      args: [],
    );
  }

  /// `Track your payments, appointments, and approvals`
  String get onboardingSecond {
    return Intl.message(
      'Track your payments, appointments, and approvals',
      name: 'onboardingSecond',
      desc: '',
      args: [],
    );
  }

  /// `Upload your documents and access helpful resources`
  String get onboardingThird {
    return Intl.message(
      'Upload your documents and access helpful resources',
      name: 'onboardingThird',
      desc: '',
      args: [],
    );
  }

  /// `REGISTER`
  String get capitalizedRegister {
    return Intl.message(
      'REGISTER',
      name: 'capitalizedRegister',
      desc: '',
      args: [],
    );
  }

  /// `Please read our terms and conditions`
  String get termsAndConditionsHeading {
    return Intl.message(
      'Please read our terms and conditions',
      name: 'termsAndConditionsHeading',
      desc: '',
      args: [],
    );
  }

  /// `Agree and continue`
  String get agreeAndContinue {
    return Intl.message(
      'Agree and continue',
      name: 'agreeAndContinue',
      desc: '',
      args: [],
    );
  }

  /// `CLAIMS`
  String get claims {
    return Intl.message(
      'CLAIMS',
      name: 'claims',
      desc: '',
      args: [],
    );
  }

  /// `Select a claim number to view more information`
  String get claimsTopText {
    return Intl.message(
      'Select a claim number to view more information',
      name: 'claimsTopText',
      desc: '',
      args: [],
    );
  }

  /// `No active claims`
  String get claimsDialogHeader {
    return Intl.message(
      'No active claims',
      name: 'claimsDialogHeader',
      desc: '',
      args: [],
    );
  }

  /// `There are no active claims associated with this account`
  String get claimsDialogBody {
    return Intl.message(
      'There are no active claims associated with this account',
      name: 'claimsDialogBody',
      desc: '',
      args: [],
    );
  }

  /// `CLOSED claims will be shown for 60 days post claim is closed. Your account will be active for 90 days post claim is closed.`
  String get claimstooltipBody {
    return Intl.message(
      'CLOSED claims will be shown for 60 days post claim is closed. Your account will be active for 90 days post claim is closed.',
      name: 'claimstooltipBody',
      desc: '',
      args: [],
    );
  }

  /// `Liability status`
  String get claimsOverviewDialogHeader {
    return Intl.message(
      'Liability status',
      name: 'claimsOverviewDialogHeader',
      desc: '',
      args: [],
    );
  }

  /// `Please be aware the liability status is displayed 3 business days following the date of decision to allow time for formal communication.`
  String get claimsOverviewtooltipBody {
    return Intl.message(
      'Please be aware the liability status is displayed 3 business days following the date of decision to allow time for formal communication.',
      name: 'claimsOverviewtooltipBody',
      desc: '',
      args: [],
    );
  }

  /// `Add claim number`
  String get addClaimsNumber {
    return Intl.message(
      'Add claim number',
      name: 'addClaimsNumber',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `Claim number`
  String get claimNumber {
    return Intl.message(
      'Claim number',
      name: 'claimNumber',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get lastName {
    return Intl.message(
      'Last name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Mobile number`
  String get mobileNumber {
    return Intl.message(
      'Mobile number',
      name: 'mobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Date of birth`
  String get dateOfBirth {
    return Intl.message(
      'Date of birth',
      name: 'dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Set a new PIN`
  String get setPin {
    return Intl.message(
      'Set a new PIN',
      name: 'setPin',
      desc: '',
      args: [],
    );
  }

  /// `Repeat PIN to continue`
  String get repeatPin {
    return Intl.message(
      'Repeat PIN to continue',
      name: 'repeatPin',
      desc: '',
      args: [],
    );
  }

  /// `Login with PIN`
  String get loginWithPin {
    return Intl.message(
      'Login with PIN',
      name: 'loginWithPin',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Payments`
  String get payments {
    return Intl.message(
      'Payments',
      name: 'payments',
      desc: '',
      args: [],
    );
  }

  /// `Certificate`
  String get certificate {
    return Intl.message(
      'Certificate',
      name: 'certificate',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to use Touch ID for login?`
  String get addFingerPrintRegistration {
    return Intl.message(
      'Do you want to use Touch ID for login?',
      name: 'addFingerPrintRegistration',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to use Face ID for login?`
  String get addFaceIdRegistration {
    return Intl.message(
      'Do you want to use Face ID for login?',
      name: 'addFaceIdRegistration',
      desc: '',
      args: [],
    );
  }

  /// `Login with Touch ID`
  String get loginFingerPrint {
    return Intl.message(
      'Login with Touch ID',
      name: 'loginFingerPrint',
      desc: '',
      args: [],
    );
  }

  /// `Login with Face ID`
  String get loginFaceId {
    return Intl.message(
      'Login with Face ID',
      name: 'loginFaceId',
      desc: '',
      args: [],
    );
  }

  /// `Touch ID`
  String get touchId {
    return Intl.message(
      'Touch ID',
      name: 'touchId',
      desc: '',
      args: [],
    );
  }

  /// `Add Touch ID`
  String get addTouchId {
    return Intl.message(
      'Add Touch ID',
      name: 'addTouchId',
      desc: '',
      args: [],
    );
  }

  /// `Pin Login`
  String get pinLogin {
    return Intl.message(
      'Pin Login',
      name: 'pinLogin',
      desc: '',
      args: [],
    );
  }

  /// `Login with Face ID`
  String get faceId {
    return Intl.message(
      'Login with Face ID',
      name: 'faceId',
      desc: '',
      args: [],
    );
  }

  /// `Add Face ID`
  String get addFaceId {
    return Intl.message(
      'Add Face ID',
      name: 'addFaceId',
      desc: '',
      args: [],
    );
  }

  /// `Skip for now`
  String get skipNow {
    return Intl.message(
      'Skip for now',
      name: 'skipNow',
      desc: '',
      args: [],
    );
  }

  /// `I am not a robot`
  String get noRobot {
    return Intl.message(
      'I am not a robot',
      name: 'noRobot',
      desc: '',
      args: [],
    );
  }

  /// `Enter your last name`
  String get lastNameHint {
    return Intl.message(
      'Enter your last name',
      name: 'lastNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Enter your claim number`
  String get claimNoHint {
    return Intl.message(
      'Enter your claim number',
      name: 'claimNoHint',
      desc: '',
      args: [],
    );
  }

  /// `Enter your mobile number`
  String get mobileNoHint {
    return Intl.message(
      'Enter your mobile number',
      name: 'mobileNoHint',
      desc: '',
      args: [],
    );
  }

  /// `DD-MM-YYYY`
  String get dobHint {
    return Intl.message(
      'DD-MM-YYYY',
      name: 'dobHint',
      desc: '',
      args: [],
    );
  }

  /// `OTP Code`
  String get otpCode {
    return Intl.message(
      'OTP Code',
      name: 'otpCode',
      desc: '',
      args: [],
    );
  }

  /// `Please input the code sent to`
  String get inputCodeTitle {
    return Intl.message(
      'Please input the code sent to',
      name: 'inputCodeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Resend OTP`
  String get resendOtp {
    return Intl.message(
      'Resend OTP',
      name: 'resendOtp',
      desc: '',
      args: [],
    );
  }

  /// `Please enter 6 digit OTP code`
  String get enterOTP {
    return Intl.message(
      'Please enter 6 digit OTP code',
      name: 'enterOTP',
      desc: '',
      args: [],
    );
  }

  /// `By selecting you agree to our`
  String get termsAndPrivacy {
    return Intl.message(
      'By selecting you agree to our',
      name: 'termsAndPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `terms, condition and privacy policy`
  String get termsAndPrivacyText {
    return Intl.message(
      'terms, condition and privacy policy',
      name: 'termsAndPrivacyText',
      desc: '',
      args: [],
    );
  }

  /// `Device does not support Biometric login`
  String get noBioMetricSupport {
    return Intl.message(
      'Device does not support Biometric login',
      name: 'noBioMetricSupport',
      desc: '',
      args: [],
    );
  }

  /// `Auth Cancelled`
  String get biometricAuthCancelled {
    return Intl.message(
      'Auth Cancelled',
      name: 'biometricAuthCancelled',
      desc: '',
      args: [],
    );
  }

  /// `OPT is required`
  String get otpRequired {
    return Intl.message(
      'OPT is required',
      name: 'otpRequired',
      desc: '',
      args: [],
    );
  }

  /// `Invalid mobile number`
  String get invalidMobileNumber {
    return Intl.message(
      'Invalid mobile number',
      name: 'invalidMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `'Invalid Date of birth`
  String get invalidDob {
    return Intl.message(
      '\'Invalid Date of birth',
      name: 'invalidDob',
      desc: '',
      args: [],
    );
  }

  /// `Last name is required`
  String get lastNameValidation {
    return Intl.message(
      'Last name is required',
      name: 'lastNameValidation',
      desc: '',
      args: [],
    );
  }

  /// `Claim number is required`
  String get claimNumberValidation {
    return Intl.message(
      'Claim number is required',
      name: 'claimNumberValidation',
      desc: '',
      args: [],
    );
  }

  /// `DOB is required`
  String get dobValidation {
    return Intl.message(
      'DOB is required',
      name: 'dobValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please wait 2 sec before trying the pin`
  String get twoMinPinValidationMessage {
    return Intl.message(
      'Please wait 2 sec before trying the pin',
      name: 'twoMinPinValidationMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please wait 5 sec before trying the pin`
  String get fiveMinPinValidationMessage {
    return Intl.message(
      'Please wait 5 sec before trying the pin',
      name: 'fiveMinPinValidationMessage',
      desc: '',
      args: [],
    );
  }

  /// `Invalid pin code`
  String get invalidPinCode {
    return Intl.message(
      'Invalid pin code',
      name: 'invalidPinCode',
      desc: '',
      args: [],
    );
  }

  /// `No Internet Connection`
  String get noInternet {
    return Intl.message(
      'No Internet Connection',
      name: 'noInternet',
      desc: '',
      args: [],
    );
  }

  /// `UnAuthorized Access`
  String get unAuthorizedAccess {
    return Intl.message(
      'UnAuthorized Access',
      name: 'unAuthorizedAccess',
      desc: '',
      args: [],
    );
  }

  /// `Pin code mismatched`
  String get pinCodeMisMatched {
    return Intl.message(
      'Pin code mismatched',
      name: 'pinCodeMisMatched',
      desc: '',
      args: [],
    );
  }

  /// `Pin code is required field`
  String get pinCodeValidation {
    return Intl.message(
      'Pin code is required field',
      name: 'pinCodeValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter 6 digit OTP code`
  String get emptyOTPValidation {
    return Intl.message(
      'Please enter 6 digit OTP code',
      name: 'emptyOTPValidation',
      desc: '',
      args: [],
    );
  }

  /// `Invalid OTP code`
  String get invalidOTPCode {
    return Intl.message(
      'Invalid OTP code',
      name: 'invalidOTPCode',
      desc: '',
      args: [],
    );
  }

  /// `Medical requests & referrals`
  String get medicalRequestsAndReferals {
    return Intl.message(
      'Medical requests & referrals',
      name: 'medicalRequestsAndReferals',
      desc: '',
      args: [],
    );
  }

  /// `Case manager`
  String get caseManager {
    return Intl.message(
      'Case manager',
      name: 'caseManager',
      desc: '',
      args: [],
    );
  }

  /// `Videos, articles & podcasts`
  String get videosArticlesPodcasts {
    return Intl.message(
      'Videos, articles & podcasts',
      name: 'videosArticlesPodcasts',
      desc: '',
      args: [],
    );
  }

  /// `Download forms`
  String get downloadForms {
    return Intl.message(
      'Download forms',
      name: 'downloadForms',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `My profile`
  String get myProfile {
    return Intl.message(
      'My profile',
      name: 'myProfile',
      desc: '',
      args: [],
    );
  }

  /// `FAQ’s`
  String get faq {
    return Intl.message(
      'FAQ’s',
      name: 'faq',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Select a claim`
  String get selectAClaim {
    return Intl.message(
      'Select a claim',
      name: 'selectAClaim',
      desc: '',
      args: [],
    );
  }

  /// `Enable Face-ID`
  String get enableFaceId {
    return Intl.message(
      'Enable Face-ID',
      name: 'enableFaceId',
      desc: '',
      args: [],
    );
  }

  /// `Enable Touch-ID`
  String get enableTouchId {
    return Intl.message(
      'Enable Touch-ID',
      name: 'enableTouchId',
      desc: '',
      args: [],
    );
  }

  /// `Light mode`
  String get lightMode {
    return Intl.message(
      'Light mode',
      name: 'lightMode',
      desc: '',
      args: [],
    );
  }

  /// `Notification settings`
  String get notificationSettings {
    return Intl.message(
      'Notification settings',
      name: 'notificationSettings',
      desc: '',
      args: [],
    );
  }

  /// `Terms conditions and privacy`
  String get termsConditionsAndPrivacy {
    return Intl.message(
      'Terms conditions and privacy',
      name: 'termsConditionsAndPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to Logout? `
  String get logoutBody {
    return Intl.message(
      'Do you want to Logout? ',
      name: 'logoutBody',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get rememberMe {
    return Intl.message(
      'Remember me',
      name: 'rememberMe',
      desc: '',
      args: [],
    );
  }

  /// `Resend OTP after {timer} seconds`
  String resendOtpTimer(int timer) {
    return Intl.message(
      'Resend OTP after $timer seconds',
      name: 'resendOtpTimer',
      desc: 'Message displayed for request otp timer',
      args: [timer],
    );
  }

  /// `Upload new Certificate`
  String get uploadNewCertificate {
    return Intl.message(
      'Upload new Certificate',
      name: 'uploadNewCertificate',
      desc: '',
      args: [],
    );
  }

  /// `Enter claim number`
  String get enterClaimNumber {
    return Intl.message(
      'Enter claim number',
      name: 'enterClaimNumber',
      desc: '',
      args: [],
    );
  }

  /// `Claim added successfully`
  String get addClaimSuccessMessage {
    return Intl.message(
      'Claim added successfully',
      name: 'addClaimSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Dark mode`
  String get darkMode {
    return Intl.message(
      'Dark mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Claim number must be alphanumeric only`
  String get invalidClaimNumber {
    return Intl.message(
      'Claim number must be alphanumeric only',
      name: 'invalidClaimNumber',
      desc: '',
      args: [],
    );
  }

  /// `Reset Pin`
  String get resetPin {
    return Intl.message(
      'Reset Pin',
      name: 'resetPin',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to reset your pin?`
  String get resetPinDialogBody {
    return Intl.message(
      'Do you want to reset your pin?',
      name: 'resetPinDialogBody',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the claim number`
  String get emptyClaimNumber {
    return Intl.message(
      'Please enter the claim number',
      name: 'emptyClaimNumber',
      desc: '',
      args: [],
    );
  }

  /// `Liability status {status}`
  String liabilityStatus(String status) {
    return Intl.message(
      'Liability status $status',
      name: 'liabilityStatus',
      desc: 'Defines the current liability status',
      args: [status],
    );
  }

  /// `Claim number {number}`
  String claimNumberStatus(Object number) {
    return Intl.message(
      'Claim number $number',
      name: 'claimNumberStatus',
      desc: 'States the current claim number',
      args: [number],
    );
  }

  /// `Hi {userName}`
  String userGreetings(String userName) {
    return Intl.message(
      'Hi $userName',
      name: 'userGreetings',
      desc: 'Greeting to display to the user in home page',
      args: [userName],
    );
  }

  /// `Most recent payment`
  String get mostRecentPayment {
    return Intl.message(
      'Most recent payment',
      name: 'mostRecentPayment',
      desc: '',
      args: [],
    );
  }

  /// `Workers Compensation Certificate`
  String get workersCompensationCertificate {
    return Intl.message(
      'Workers Compensation Certificate',
      name: 'workersCompensationCertificate',
      desc: '',
      args: [],
    );
  }

  /// `Most recent medical approval`
  String get mostRecentMedicalApproval {
    return Intl.message(
      'Most recent medical approval',
      name: 'mostRecentMedicalApproval',
      desc: '',
      args: [],
    );
  }

  /// `Call case manager`
  String get callCaseManager {
    return Intl.message(
      'Call case manager',
      name: 'callCaseManager',
      desc: '',
      args: [],
    );
  }

  /// `Call now`
  String get callNow {
    return Intl.message(
      'Call now',
      name: 'callNow',
      desc: '',
      args: [],
    );
  }

  /// `By selecting you agree to our `
  String get termsAndConditionPrefix {
    return Intl.message(
      'By selecting you agree to our ',
      name: 'termsAndConditionPrefix',
      desc: '',
      args: [],
    );
  }

  /// `term conditions and privacy.`
  String get termsAndConditionSuffix {
    return Intl.message(
      'term conditions and privacy.',
      name: 'termsAndConditionSuffix',
      desc: '',
      args: [],
    );
  }

  /// `Your profile has not been set.`
  String get emptyProfileDetail {
    return Intl.message(
      'Your profile has not been set.',
      name: 'emptyProfileDetail',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Home phone`
  String get homePhone {
    return Intl.message(
      'Home phone',
      name: 'homePhone',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Work number`
  String get workNumber {
    return Intl.message(
      'Work number',
      name: 'workNumber',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emai {
    return Intl.message(
      'Email',
      name: 'emai',
      desc: '',
      args: [],
    );
  }

  /// `Postal address`
  String get postalAddress {
    return Intl.message(
      'Postal address',
      name: 'postalAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please contact your case manager to update your details.`
  String get profilePageBottomText {
    return Intl.message(
      'Please contact your case manager to update your details.',
      name: 'profilePageBottomText',
      desc: '',
      args: [],
    );
  }

  /// `Video`
  String get videos {
    return Intl.message(
      'Video',
      name: 'videos',
      desc: '',
      args: [],
    );
  }

  /// `Articles`
  String get articles {
    return Intl.message(
      'Articles',
      name: 'articles',
      desc: '',
      args: [],
    );
  }

  /// `Podcast`
  String get podcasts {
    return Intl.message(
      'Podcast',
      name: 'podcasts',
      desc: '',
      args: [],
    );
  }

  /// `Expires {date}`
  String expires(String date) {
    return Intl.message(
      'Expires $date',
      name: 'expires',
      desc: 'Expiry date of compensation certificate',
      args: [date],
    );
  }

  /// `Upload`
  String get upload {
    return Intl.message(
      'Upload',
      name: 'upload',
      desc: '',
      args: [],
    );
  }

  /// `Medical/Travel reimbursement`
  String get medicalTravelReimbrushment {
    return Intl.message(
      'Medical/Travel reimbursement',
      name: 'medicalTravelReimbrushment',
      desc: '',
      args: [],
    );
  }

  /// `Workers’ Compensation Certificate`
  String get WorkersCompensationCertificate {
    return Intl.message(
      'Workers’ Compensation Certificate',
      name: 'WorkersCompensationCertificate',
      desc: '',
      args: [],
    );
  }

  /// `Medical requests/Referrals`
  String get medicalRequestsReferrals {
    return Intl.message(
      'Medical requests/Referrals',
      name: 'medicalRequestsReferrals',
      desc: '',
      args: [],
    );
  }

  /// `Server Error`
  String get serverError {
    return Intl.message(
      'Server Error',
      name: 'serverError',
      desc: '',
      args: [],
    );
  }

  /// `There are no any video available.`
  String get emptyVideoText {
    return Intl.message(
      'There are no any video available.',
      name: 'emptyVideoText',
      desc: '',
      args: [],
    );
  }

  /// `Approvals displayed for the last 3 months only.`
  String get medicalReferralsTooltipBodyText {
    return Intl.message(
      'Approvals displayed for the last 3 months only.',
      name: 'medicalReferralsTooltipBodyText',
      desc: '',
      args: [],
    );
  }

  /// `Medical requests`
  String get medicalRequests {
    return Intl.message(
      'Medical requests',
      name: 'medicalRequests',
      desc: '',
      args: [],
    );
  }

  /// `& referrals`
  String get andReferrals {
    return Intl.message(
      '& referrals',
      name: 'andReferrals',
      desc: '',
      args: [],
    );
  }

  /// `Upload treatment request`
  String get uploadTreatmentReqest {
    return Intl.message(
      'Upload treatment request',
      name: 'uploadTreatmentReqest',
      desc: '',
      args: [],
    );
  }

  /// `Approved medical requests`
  String get approvedMedicalRequests {
    return Intl.message(
      'Approved medical requests',
      name: 'approvedMedicalRequests',
      desc: '',
      args: [],
    );
  }

  /// `Last updated {date}`
  String lastUpdated(String date) {
    return Intl.message(
      'Last updated $date',
      name: 'lastUpdated',
      desc: 'Last time the medical request was updated.',
      args: [date],
    );
  }

  /// `Take a photo`
  String get uploadFromCamera {
    return Intl.message(
      'Take a photo',
      name: 'uploadFromCamera',
      desc: '',
      args: [],
    );
  }

  /// `Select file from phone`
  String get uploadFromPhone {
    return Intl.message(
      'Select file from phone',
      name: 'uploadFromPhone',
      desc: '',
      args: [],
    );
  }

  /// `Add a photo from library/gallery`
  String get uploadFromGallery {
    return Intl.message(
      'Add a photo from library/gallery',
      name: 'uploadFromGallery',
      desc: '',
      args: [],
    );
  }

  /// `Uploading documents are secure to EML`
  String get uploadInformation {
    return Intl.message(
      'Uploading documents are secure to EML',
      name: 'uploadInformation',
      desc: '',
      args: [],
    );
  }

  /// `Document`
  String get document {
    return Intl.message(
      'Document',
      name: 'document',
      desc: '',
      args: [],
    );
  }

  /// `Upload to EML`
  String get uploadToEml {
    return Intl.message(
      'Upload to EML',
      name: 'uploadToEml',
      desc: '',
      args: [],
    );
  }

  /// `Retake`
  String get retake {
    return Intl.message(
      'Retake',
      name: 'retake',
      desc: '',
      args: [],
    );
  }

  /// `Add a comment`
  String get addComment {
    return Intl.message(
      'Add a comment',
      name: 'addComment',
      desc: '',
      args: [],
    );
  }

  /// `Comment only required for further details`
  String get commentInfo {
    return Intl.message(
      'Comment only required for further details',
      name: 'commentInfo',
      desc: '',
      args: [],
    );
  }

  /// `Add another`
  String get addAnother {
    return Intl.message(
      'Add another',
      name: 'addAnother',
      desc: '',
      args: [],
    );
  }

  /// `N/A`
  String get na {
    return Intl.message(
      'N/A',
      name: 'na',
      desc: '',
      args: [],
    );
  }

  /// `You do not have any medical request.`
  String get emptyMedicalRequest {
    return Intl.message(
      'You do not have any medical request.',
      name: 'emptyMedicalRequest',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Last {noOfDays} days`
  String paymentFilter(String noOfDays) {
    return Intl.message(
      'Last $noOfDays days',
      name: 'paymentFilter',
      desc: 'No of days to filter the record of payments.',
      args: [noOfDays],
    );
  }

  /// `No direct payments from your Employer are displayed here. Only direct payments from EML are displayed here. Depending on your nominated banking institution, please allow for processing times.`
  String get paymentTooltip {
    return Intl.message(
      'No direct payments from your Employer are displayed here. Only direct payments from EML are displayed here. Depending on your nominated banking institution, please allow for processing times.',
      name: 'paymentTooltip',
      desc: 'Tooltip shown when clikced on the info icon of payment page',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Net Amount`
  String get netAmount {
    return Intl.message(
      'Net Amount',
      name: 'netAmount',
      desc: '',
      args: [],
    );
  }

  /// `Your certificate of capacity is expiring in 8 days`
  String get welcomeNoteExpiryText {
    return Intl.message(
      'Your certificate of capacity is expiring in 8 days',
      name: 'welcomeNoteExpiryText',
      desc: '',
      args: [],
    );
  }

  /// `Workers Compensation`
  String get workerCompensation {
    return Intl.message(
      'Workers Compensation',
      name: 'workerCompensation',
      desc: '',
      args: [],
    );
  }

  /// `Please ensure your workers compensation certificate is current and valid so that there are no interruptions to your payments.`
  String get workerCompensationTooltipBodyText {
    return Intl.message(
      'Please ensure your workers compensation certificate is current and valid so that there are no interruptions to your payments.',
      name: 'workerCompensationTooltipBodyText',
      desc: '',
      args: [],
    );
  }

  /// `Call`
  String get call {
    return Intl.message(
      'Call',
      name: 'call',
      desc: '',
      args: [],
    );
  }

  /// `Most recent Certificates`
  String get mostRecentCertificates {
    return Intl.message(
      'Most recent Certificates',
      name: 'mostRecentCertificates',
      desc: '',
      args: [],
    );
  }

  /// `There is no any certificates.`
  String get emptyCoc {
    return Intl.message(
      'There is no any certificates.',
      name: 'emptyCoc',
      desc: '',
      args: [],
    );
  }

  /// `Error fetching certificates!`
  String get certificatesFetchingErrorMessage {
    return Intl.message(
      'Error fetching certificates!',
      name: 'certificatesFetchingErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Issued`
  String get issued {
    return Intl.message(
      'Issued',
      name: 'issued',
      desc: '',
      args: [],
    );
  }

  /// `Valid from`
  String get validFrom {
    return Intl.message(
      'Valid from',
      name: 'validFrom',
      desc: '',
      args: [],
    );
  }

  /// `to`
  String get to {
    return Intl.message(
      'to',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `Partital Capacity`
  String get partialCapacity {
    return Intl.message(
      'Partital Capacity',
      name: 'partialCapacity',
      desc: '',
      args: [],
    );
  }

  /// `Pre injuried duties`
  String get preInjuriedDuties {
    return Intl.message(
      'Pre injuried duties',
      name: 'preInjuriedDuties',
      desc: '',
      args: [],
    );
  }

  /// `30`
  String get thirty {
    return Intl.message(
      '30',
      name: 'thirty',
      desc: '',
      args: [],
    );
  }

  /// `60`
  String get sixty {
    return Intl.message(
      '60',
      name: 'sixty',
      desc: '',
      args: [],
    );
  }

  /// `90`
  String get ninety {
    return Intl.message(
      '90',
      name: 'ninety',
      desc: '',
      args: [],
    );
  }

  /// `Uploading Docs...`
  String get uploading {
    return Intl.message(
      'Uploading Docs...',
      name: 'uploading',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get fileUploadedSuccess {
    return Intl.message(
      'Success',
      name: 'fileUploadedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Error on upload`
  String get fileUploadFailed {
    return Intl.message(
      'Error on upload',
      name: 'fileUploadFailed',
      desc: '',
      args: [],
    );
  }

  /// `Current active claim not available!`
  String get emptyActiveClaimsOverview {
    return Intl.message(
      'Current active claim not available!',
      name: 'emptyActiveClaimsOverview',
      desc: '',
      args: [],
    );
  }

  /// `Document Upload`
  String get documentUpload {
    return Intl.message(
      'Document Upload',
      name: 'documentUpload',
      desc: '',
      args: [],
    );
  }

  /// `Certificate of capacity sent to EML`
  String get certificateOfCapacity {
    return Intl.message(
      'Certificate of capacity sent to EML',
      name: 'certificateOfCapacity',
      desc: '',
      args: [],
    );
  }

  /// `Are you currently undertaking any work?`
  String get isWorking {
    return Intl.message(
      'Are you currently undertaking any work?',
      name: 'isWorking',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueBtn {
    return Intl.message(
      'Continue',
      name: 'continueBtn',
      desc: '',
      args: [],
    );
  }

  /// `Choose Option`
  String get chooseOption {
    return Intl.message(
      'Choose Option',
      name: 'chooseOption',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Phone/File`
  String get phoneAndFile {
    return Intl.message(
      'Phone/File',
      name: 'phoneAndFile',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Please select and confirm your answer`
  String get confirmAnswer {
    return Intl.message(
      'Please select and confirm your answer',
      name: 'confirmAnswer',
      desc: '',
      args: [],
    );
  }

  /// `{days} days left`
  String daysLeft(String days) {
    return Intl.message(
      '$days days left',
      name: 'daysLeft',
      desc: 'Number of days left before expiration',
      args: [days],
    );
  }

  /// `No data received`
  String get noDataReceived {
    return Intl.message(
      'No data received',
      name: 'noDataReceived',
      desc: '',
      args: [],
    );
  }

  /// `Surgery`
  String get surgery {
    return Intl.message(
      'Surgery',
      name: 'surgery',
      desc: '',
      args: [],
    );
  }

  /// `Rehabilitation Services`
  String get rehabilitationservices {
    return Intl.message(
      'Rehabilitation Services',
      name: 'rehabilitationservices',
      desc: '',
      args: [],
    );
  }

  /// `Medical Treatment`
  String get medicalTreatment {
    return Intl.message(
      'Medical Treatment',
      name: 'medicalTreatment',
      desc: '',
      args: [],
    );
  }

  /// `Claims`
  String get claimsTitle {
    return Intl.message(
      'Claims',
      name: 'claimsTitle',
      desc: '',
      args: [],
    );
  }

  /// `No items to display`
  String get noItems {
    return Intl.message(
      'No items to display',
      name: 'noItems',
      desc: '',
      args: [],
    );
  }

  /// `Payment type`
  String get paymentType {
    return Intl.message(
      'Payment type',
      name: 'paymentType',
      desc: '',
      args: [],
    );
  }

  /// `Total payment`
  String get totalPayment {
    return Intl.message(
      'Total payment',
      name: 'totalPayment',
      desc: '',
      args: [],
    );
  }

  /// `Payment date`
  String get paymentDate {
    return Intl.message(
      'Payment date',
      name: 'paymentDate',
      desc: '',
      args: [],
    );
  }

  /// `Payment method`
  String get paymentMethod {
    return Intl.message(
      'Payment method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Sub payments`
  String get subPayments {
    return Intl.message(
      'Sub payments',
      name: 'subPayments',
      desc: '',
      args: [],
    );
  }

  /// `Period`
  String get period {
    return Intl.message(
      'Period',
      name: 'period',
      desc: '',
      args: [],
    );
  }

  /// `Payment detail`
  String get paymentsDetail {
    return Intl.message(
      'Payment detail',
      name: 'paymentsDetail',
      desc: '',
      args: [],
    );
  }

  /// `Reimbursement`
  String get reimbursement {
    return Intl.message(
      'Reimbursement',
      name: 'reimbursement',
      desc: '',
      args: [],
    );
  }

  /// `Upload reimbursement request`
  String get uploadReimbursementRequest {
    return Intl.message(
      'Upload reimbursement request',
      name: 'uploadReimbursementRequest',
      desc: '',
      args: [],
    );
  }

  /// `Certificate detail`
  String get certificateDetail {
    return Intl.message(
      'Certificate detail',
      name: 'certificateDetail',
      desc: '',
      args: [],
    );
  }

  /// `Issue date`
  String get issueDate {
    return Intl.message(
      'Issue date',
      name: 'issueDate',
      desc: '',
      args: [],
    );
  }

  /// `Valid to`
  String get validTo {
    return Intl.message(
      'Valid to',
      name: 'validTo',
      desc: '',
      args: [],
    );
  }

  /// `Next review date`
  String get nextReviewDate {
    return Intl.message(
      'Next review date',
      name: 'nextReviewDate',
      desc: '',
      args: [],
    );
  }

  /// `Certificate type`
  String get certificateType {
    return Intl.message(
      'Certificate type',
      name: 'certificateType',
      desc: '',
      args: [],
    );
  }

  /// `Allowed work`
  String get allowedWork {
    return Intl.message(
      'Allowed work',
      name: 'allowedWork',
      desc: '',
      args: [],
    );
  }

  /// `Capacity`
  String get capacity {
    return Intl.message(
      'Capacity',
      name: 'capacity',
      desc: '',
      args: [],
    );
  }

  /// `Lifting/carrying capacity`
  String get liftingCarryingCapacity {
    return Intl.message(
      'Lifting/carrying capacity',
      name: 'liftingCarryingCapacity',
      desc: '',
      args: [],
    );
  }

  /// `Sitting tolerance`
  String get sittingTolerance {
    return Intl.message(
      'Sitting tolerance',
      name: 'sittingTolerance',
      desc: '',
      args: [],
    );
  }

  /// `Standing tolerance`
  String get standingTolerance {
    return Intl.message(
      'Standing tolerance',
      name: 'standingTolerance',
      desc: '',
      args: [],
    );
  }

  /// `Pushing/pulling ability`
  String get pushingPullingAbility {
    return Intl.message(
      'Pushing/pulling ability',
      name: 'pushingPullingAbility',
      desc: '',
      args: [],
    );
  }

  /// `Bending/Twisting/Squating ability`
  String get bendingTwistingSquattingAbility {
    return Intl.message(
      'Bending/Twisting/Squating ability',
      name: 'bendingTwistingSquattingAbility',
      desc: '',
      args: [],
    );
  }

  /// `Driving ability`
  String get drivingAbility {
    return Intl.message(
      'Driving ability',
      name: 'drivingAbility',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `View more`
  String get viewMore {
    return Intl.message(
      'View more',
      name: 'viewMore',
      desc: '',
      args: [],
    );
  }

  /// `Download your certificate`
  String get downloadYourCertificate {
    return Intl.message(
      'Download your certificate',
      name: 'downloadYourCertificate',
      desc: '',
      args: [],
    );
  }

  /// `max {hour} hours day`
  String allowedWorkForADay(String hour) {
    return Intl.message(
      'max $hour hours day',
      name: 'allowedWorkForADay',
      desc: 'Max amount of hours allowed to work in a day.',
      args: [hour],
    );
  }

  /// `max {days} days week`
  String allowedWorkForAWeek(String days) {
    return Intl.message(
      'max $days days week',
      name: 'allowedWorkForAWeek',
      desc: 'Max amount of days allowed to work in a week.',
      args: [days],
    );
  }

  /// `View less`
  String get viewLess {
    return Intl.message(
      'View less',
      name: 'viewLess',
      desc: '',
      args: [],
    );
  }

  /// `Upload a new Certificate`
  String get uploadANewCertificate {
    return Intl.message(
      'Upload a new Certificate',
      name: 'uploadANewCertificate',
      desc: '',
      args: [],
    );
  }

  /// `There is no any certificates.`
  String get emptyCertificates {
    return Intl.message(
      'There is no any certificates.',
      name: 'emptyCertificates',
      desc: '',
      args: [],
    );
  }

  /// `It is mandatory to attend EML Scheduled appointments to ensure no interruptions to your benefits.`
  String get appointmentToolTip {
    return Intl.message(
      'It is mandatory to attend EML Scheduled appointments to ensure no interruptions to your benefits.',
      name: 'appointmentToolTip',
      desc: '',
      args: [],
    );
  }

  /// `You do not have appointment.`
  String get emptyAppointment {
    return Intl.message(
      'You do not have appointment.',
      name: 'emptyAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Add to calendar`
  String get addToCalendar {
    return Intl.message(
      'Add to calendar',
      name: 'addToCalendar',
      desc: '',
      args: [],
    );
  }

  /// `Add appointment`
  String get addAppointment {
    return Intl.message(
      'Add appointment',
      name: 'addAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Edit appointment`
  String get editAppointment {
    return Intl.message(
      'Edit appointment',
      name: 'editAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Scheduled appointments`
  String get scheduledAppointment {
    return Intl.message(
      'Scheduled appointments',
      name: 'scheduledAppointment',
      desc: '',
      args: [],
    );
  }

  /// `My appointments`
  String get myAppointment {
    return Intl.message(
      'My appointments',
      name: 'myAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Appointments`
  String get appointments {
    return Intl.message(
      'Appointments',
      name: 'appointments',
      desc: '',
      args: [],
    );
  }

  /// `Email now`
  String get emailNow {
    return Intl.message(
      'Email now',
      name: 'emailNow',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get time {
    return Intl.message(
      'Time',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Pick appointment time`
  String get timeHint {
    return Intl.message(
      'Pick appointment time',
      name: 'timeHint',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `YYYY-MM-DD`
  String get dateFieldHint {
    return Intl.message(
      'YYYY-MM-DD',
      name: 'dateFieldHint',
      desc: '',
      args: [],
    );
  }

  /// `Provider`
  String get provider {
    return Intl.message(
      'Provider',
      name: 'provider',
      desc: '',
      args: [],
    );
  }

  /// `Enter provider name`
  String get providerHint {
    return Intl.message(
      'Enter provider name',
      name: 'providerHint',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get treatmentType {
    return Intl.message(
      'Type',
      name: 'treatmentType',
      desc: '',
      args: [],
    );
  }

  /// `Enter treatment type`
  String get treatmentTypeHint {
    return Intl.message(
      'Enter treatment type',
      name: 'treatmentTypeHint',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Enter provider address`
  String get addressHint {
    return Intl.message(
      'Enter provider address',
      name: 'addressHint',
      desc: '',
      args: [],
    );
  }

  /// `Treating doctor`
  String get treatingDoctor {
    return Intl.message(
      'Treating doctor',
      name: 'treatingDoctor',
      desc: '',
      args: [],
    );
  }

  /// `Get directions`
  String get getDirections {
    return Intl.message(
      'Get directions',
      name: 'getDirections',
      desc: '',
      args: [],
    );
  }

  /// `Please enter date`
  String get enterDate {
    return Intl.message(
      'Please enter date',
      name: 'enterDate',
      desc: '',
      args: [],
    );
  }

  /// `Please enter time`
  String get enterTime {
    return Intl.message(
      'Please enter time',
      name: 'enterTime',
      desc: '',
      args: [],
    );
  }

  /// `Please enter treatment type`
  String get enterTreatment {
    return Intl.message(
      'Please enter treatment type',
      name: 'enterTreatment',
      desc: '',
      args: [],
    );
  }

  /// `Please enter provider name`
  String get enterProviderName {
    return Intl.message(
      'Please enter provider name',
      name: 'enterProviderName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter provider address`
  String get enterProviderAddress {
    return Intl.message(
      'Please enter provider address',
      name: 'enterProviderAddress',
      desc: '',
      args: [],
    );
  }

  /// `Delete event`
  String get deleteEvent {
    return Intl.message(
      'Delete event',
      name: 'deleteEvent',
      desc: '',
      args: [],
    );
  }

  /// `Deleting...`
  String get deleting {
    return Intl.message(
      'Deleting...',
      name: 'deleting',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Appointment added in the calendar`
  String get appointmentAdded {
    return Intl.message(
      'Appointment added in the calendar',
      name: 'appointmentAdded',
      desc: '',
      args: [],
    );
  }

  /// `Unable to add appointment in the calendar`
  String get errorAppointmentAdd {
    return Intl.message(
      'Unable to add appointment in the calendar',
      name: 'errorAppointmentAdd',
      desc: '',
      args: [],
    );
  }

  /// `Your appointment is updated successfully`
  String get appointmentEdited {
    return Intl.message(
      'Your appointment is updated successfully',
      name: 'appointmentEdited',
      desc: '',
      args: [],
    );
  }

  /// `You do to have scheduled appointments`
  String get emptyScheduledAppointment {
    return Intl.message(
      'You do to have scheduled appointments',
      name: 'emptyScheduledAppointment',
      desc: '',
      args: [],
    );
  }

  /// `You do not have any forms.`
  String get emptyForms {
    return Intl.message(
      'You do not have any forms.',
      name: 'emptyForms',
      desc: '',
      args: [],
    );
  }

  /// `You do not have any articles.`
  String get emptyArticles {
    return Intl.message(
      'You do not have any articles.',
      name: 'emptyArticles',
      desc: '',
      args: [],
    );
  }

  /// `{duration} min`
  String videoDuration(String duration) {
    return Intl.message(
      '$duration min',
      name: 'videoDuration',
      desc: 'Duration of videos',
      args: [duration],
    );
  }

  /// `Read`
  String get read {
    return Intl.message(
      'Read',
      name: 'read',
      desc: '',
      args: [],
    );
  }

  /// `Full Screen`
  String get fullScreen {
    return Intl.message(
      'Full Screen',
      name: 'fullScreen',
      desc: '',
      args: [],
    );
  }

  /// `Appointment with`
  String get appointmentWith {
    return Intl.message(
      'Appointment with',
      name: 'appointmentWith',
      desc: '',
      args: [],
    );
  }

  /// `Videos, articles &\npodcasts`
  String get videosArticlesPodcastsTitle {
    return Intl.message(
      'Videos, articles &\npodcasts',
      name: 'videosArticlesPodcastsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please allow calendar permission from the setting`
  String get calendarPermission {
    return Intl.message(
      'Please allow calendar permission from the setting',
      name: 'calendarPermission',
      desc: '',
      args: [],
    );
  }

  /// `Calendar Permission`
  String get permission {
    return Intl.message(
      'Calendar Permission',
      name: 'permission',
      desc: '',
      args: [],
    );
  }

  /// `Appointment deleted successfully`
  String get appointmentDeleted {
    return Intl.message(
      'Appointment deleted successfully',
      name: 'appointmentDeleted',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
