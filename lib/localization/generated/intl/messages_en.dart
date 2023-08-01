// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(hour) => "max ${hour} hours day";

  static String m1(days) => "max ${days} days week";

  static String m2(number) => "Claim number ${number}";

  static String m3(days) => "${days} days left";

  static String m4(date) => "Expires ${date}";

  static String m5(date) => "Last updated ${date}";

  static String m6(status) => "Liability status ${status}";

  static String m7(noOfDays) => "Last ${noOfDays} days";

  static String m8(timer) => "Resend OTP after ${timer} seconds";

  static String m9(userName) => "Hi ${userName}";

  static String m10(duration) => "${duration} min";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "WorkersCompensationCertificate": MessageLookupByLibrary.simpleMessage(
            "Workers’ Compensation Certificate"),
        "addAnother": MessageLookupByLibrary.simpleMessage("Add another"),
        "addAppointment":
            MessageLookupByLibrary.simpleMessage("Add appointment"),
        "addClaimSuccessMessage":
            MessageLookupByLibrary.simpleMessage("Claim added successfully"),
        "addClaimsNumber":
            MessageLookupByLibrary.simpleMessage("Add claim number"),
        "addComment": MessageLookupByLibrary.simpleMessage("Add a comment"),
        "addFaceId": MessageLookupByLibrary.simpleMessage("Add Face ID"),
        "addFaceIdRegistration": MessageLookupByLibrary.simpleMessage(
            "Do you want to use Face ID for login?"),
        "addFingerPrintRegistration": MessageLookupByLibrary.simpleMessage(
            "Do you want to use Touch ID for login?"),
        "addToCalendar":
            MessageLookupByLibrary.simpleMessage("Add to calendar"),
        "addTouchId": MessageLookupByLibrary.simpleMessage("Add Touch ID"),
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "addressHint":
            MessageLookupByLibrary.simpleMessage("Enter provider address"),
        "agreeAndContinue":
            MessageLookupByLibrary.simpleMessage("Agree and continue"),
        "allowedWork": MessageLookupByLibrary.simpleMessage("Allowed work"),
        "allowedWorkForADay": m0,
        "allowedWorkForAWeek": m1,
        "andReferrals": MessageLookupByLibrary.simpleMessage("& referrals"),
        "appname": MessageLookupByLibrary.simpleMessage("EML"),
        "appointmentAdded": MessageLookupByLibrary.simpleMessage(
            "Appointment added in the calendar"),
        "appointmentDeleted": MessageLookupByLibrary.simpleMessage(
            "Appointment deleted successfully"),
        "appointmentEdited": MessageLookupByLibrary.simpleMessage(
            "Your appointment is updated successfully"),
        "appointmentToolTip": MessageLookupByLibrary.simpleMessage(
            "It is mandatory to attend EML Scheduled appointments to ensure no interruptions to your benefits."),
        "appointmentWith":
            MessageLookupByLibrary.simpleMessage("Appointment with"),
        "appointments": MessageLookupByLibrary.simpleMessage("Appointments"),
        "approvedMedicalRequests":
            MessageLookupByLibrary.simpleMessage("Approved medical requests"),
        "articles": MessageLookupByLibrary.simpleMessage("Articles"),
        "bendingTwistingSquattingAbility": MessageLookupByLibrary.simpleMessage(
            "Bending/Twisting/Squating ability"),
        "biometricAuthCancelled":
            MessageLookupByLibrary.simpleMessage("Auth Cancelled"),
        "calendarPermission": MessageLookupByLibrary.simpleMessage(
            "Please allow calendar permission from the setting"),
        "call": MessageLookupByLibrary.simpleMessage("Call"),
        "callCaseManager":
            MessageLookupByLibrary.simpleMessage("Call case manager"),
        "callNow": MessageLookupByLibrary.simpleMessage("Call now"),
        "camera": MessageLookupByLibrary.simpleMessage("Camera"),
        "capacity": MessageLookupByLibrary.simpleMessage("Capacity"),
        "capitalizedRegister": MessageLookupByLibrary.simpleMessage("REGISTER"),
        "caseManager": MessageLookupByLibrary.simpleMessage("Case manager"),
        "certificate": MessageLookupByLibrary.simpleMessage("Certificate"),
        "certificateDetail":
            MessageLookupByLibrary.simpleMessage("Certificate detail"),
        "certificateOfCapacity": MessageLookupByLibrary.simpleMessage(
            "Certificate of capacity sent to EML"),
        "certificateType":
            MessageLookupByLibrary.simpleMessage("Certificate type"),
        "certificatesFetchingErrorMessage":
            MessageLookupByLibrary.simpleMessage(
                "Error fetching certificates!"),
        "chooseOption": MessageLookupByLibrary.simpleMessage("Choose Option"),
        "claimNoHint":
            MessageLookupByLibrary.simpleMessage("Enter your claim number"),
        "claimNumber": MessageLookupByLibrary.simpleMessage("Claim number"),
        "claimNumberStatus": m2,
        "claimNumberValidation":
            MessageLookupByLibrary.simpleMessage("Claim number is required"),
        "claims": MessageLookupByLibrary.simpleMessage("CLAIMS"),
        "claimsDialogBody": MessageLookupByLibrary.simpleMessage(
            "There are no active claims associated with this account"),
        "claimsDialogHeader":
            MessageLookupByLibrary.simpleMessage("No active claims"),
        "claimsOverviewDialogHeader":
            MessageLookupByLibrary.simpleMessage("Liability status"),
        "claimsOverviewtooltipBody": MessageLookupByLibrary.simpleMessage(
            "Please be aware the liability status is displayed 3 business days following the date of decision to allow time for formal communication."),
        "claimsTitle": MessageLookupByLibrary.simpleMessage("Claims"),
        "claimsTopText": MessageLookupByLibrary.simpleMessage(
            "Select a claim number to view more information"),
        "claimstooltipBody": MessageLookupByLibrary.simpleMessage(
            "CLOSED claims will be shown for 60 days post claim is closed. Your account will be active for 90 days post claim is closed."),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "commentInfo": MessageLookupByLibrary.simpleMessage(
            "Comment only required for further details"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmAnswer": MessageLookupByLibrary.simpleMessage(
            "Please select and confirm your answer"),
        "continueBtn": MessageLookupByLibrary.simpleMessage("Continue"),
        "darkMode": MessageLookupByLibrary.simpleMessage("Dark mode"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "dateFieldHint": MessageLookupByLibrary.simpleMessage("YYYY-MM-DD"),
        "dateOfBirth": MessageLookupByLibrary.simpleMessage("Date of birth"),
        "daysLeft": m3,
        "deleteEvent": MessageLookupByLibrary.simpleMessage("Delete event"),
        "deleting": MessageLookupByLibrary.simpleMessage("Deleting..."),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "dobHint": MessageLookupByLibrary.simpleMessage("DD-MM-YYYY"),
        "dobValidation":
            MessageLookupByLibrary.simpleMessage("DOB is required"),
        "document": MessageLookupByLibrary.simpleMessage("Document"),
        "documentUpload":
            MessageLookupByLibrary.simpleMessage("Document Upload"),
        "downloadForms": MessageLookupByLibrary.simpleMessage("Download forms"),
        "downloadYourCertificate":
            MessageLookupByLibrary.simpleMessage("Download your certificate"),
        "drivingAbility":
            MessageLookupByLibrary.simpleMessage("Driving ability"),
        "editAppointment":
            MessageLookupByLibrary.simpleMessage("Edit appointment"),
        "emai": MessageLookupByLibrary.simpleMessage("Email"),
        "emailNow": MessageLookupByLibrary.simpleMessage("Email now"),
        "emptyActiveClaimsOverview": MessageLookupByLibrary.simpleMessage(
            "Current active claim not available!"),
        "emptyAppointment": MessageLookupByLibrary.simpleMessage(
            "You do not have appointment."),
        "emptyArticles": MessageLookupByLibrary.simpleMessage(
            "You do not have any articles."),
        "emptyCertificates": MessageLookupByLibrary.simpleMessage(
            "There is no any certificates."),
        "emptyClaimNumber": MessageLookupByLibrary.simpleMessage(
            "Please enter the claim number"),
        "emptyCoc": MessageLookupByLibrary.simpleMessage(
            "There is no any certificates."),
        "emptyForms":
            MessageLookupByLibrary.simpleMessage("You do not have any forms."),
        "emptyMedicalRequest": MessageLookupByLibrary.simpleMessage(
            "You do not have any medical request."),
        "emptyOTPValidation": MessageLookupByLibrary.simpleMessage(
            "Please enter 6 digit OTP code"),
        "emptyProfileDetail": MessageLookupByLibrary.simpleMessage(
            "Your profile has not been set."),
        "emptyScheduledAppointment": MessageLookupByLibrary.simpleMessage(
            "You do to have scheduled appointments"),
        "emptyVideoText": MessageLookupByLibrary.simpleMessage(
            "There are no any video available."),
        "enableFaceId": MessageLookupByLibrary.simpleMessage("Enable Face-ID"),
        "enableTouchId":
            MessageLookupByLibrary.simpleMessage("Enable Touch-ID"),
        "enterClaimNumber":
            MessageLookupByLibrary.simpleMessage("Enter claim number"),
        "enterDate": MessageLookupByLibrary.simpleMessage("Please enter date"),
        "enterOTP": MessageLookupByLibrary.simpleMessage(
            "Please enter 6 digit OTP code"),
        "enterProviderAddress": MessageLookupByLibrary.simpleMessage(
            "Please enter provider address"),
        "enterProviderName":
            MessageLookupByLibrary.simpleMessage("Please enter provider name"),
        "enterTime": MessageLookupByLibrary.simpleMessage("Please enter time"),
        "enterTreatment":
            MessageLookupByLibrary.simpleMessage("Please enter treatment type"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "errorAppointmentAdd": MessageLookupByLibrary.simpleMessage(
            "Unable to add appointment in the calendar"),
        "expires": m4,
        "faceId": MessageLookupByLibrary.simpleMessage("Login with Face ID"),
        "faq": MessageLookupByLibrary.simpleMessage("FAQ’s"),
        "fileUploadFailed":
            MessageLookupByLibrary.simpleMessage("Error on upload"),
        "fileUploadedSuccess": MessageLookupByLibrary.simpleMessage("Success"),
        "fiveMinPinValidationMessage": MessageLookupByLibrary.simpleMessage(
            "Please wait 5 sec before trying the pin"),
        "fullScreen": MessageLookupByLibrary.simpleMessage("Full Screen"),
        "gallery": MessageLookupByLibrary.simpleMessage("Gallery"),
        "getDirections": MessageLookupByLibrary.simpleMessage("Get directions"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "homePhone": MessageLookupByLibrary.simpleMessage("Home phone"),
        "inputCodeTitle": MessageLookupByLibrary.simpleMessage(
            "Please input the code sent to"),
        "invalidClaimNumber": MessageLookupByLibrary.simpleMessage(
            "Claim number must be alphanumeric only"),
        "invalidDob":
            MessageLookupByLibrary.simpleMessage("\'Invalid Date of birth"),
        "invalidMobileNumber":
            MessageLookupByLibrary.simpleMessage("Invalid mobile number"),
        "invalidOTPCode":
            MessageLookupByLibrary.simpleMessage("Invalid OTP code"),
        "invalidPinCode":
            MessageLookupByLibrary.simpleMessage("Invalid pin code"),
        "isWorking": MessageLookupByLibrary.simpleMessage(
            "Are you currently undertaking any work?"),
        "issueDate": MessageLookupByLibrary.simpleMessage("Issue date"),
        "issued": MessageLookupByLibrary.simpleMessage("Issued"),
        "lastName": MessageLookupByLibrary.simpleMessage("Last name"),
        "lastNameHint":
            MessageLookupByLibrary.simpleMessage("Enter your last name"),
        "lastNameValidation":
            MessageLookupByLibrary.simpleMessage("Last name is required"),
        "lastUpdated": m5,
        "liabilityStatus": m6,
        "liftingCarryingCapacity":
            MessageLookupByLibrary.simpleMessage("Lifting/carrying capacity"),
        "lightMode": MessageLookupByLibrary.simpleMessage("Light mode"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "loginFaceId":
            MessageLookupByLibrary.simpleMessage("Login with Face ID"),
        "loginFingerPrint":
            MessageLookupByLibrary.simpleMessage("Login with Touch ID"),
        "loginWithPin": MessageLookupByLibrary.simpleMessage("Login with PIN"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "logoutBody":
            MessageLookupByLibrary.simpleMessage("Do you want to Logout? "),
        "medicalReferralsTooltipBodyText": MessageLookupByLibrary.simpleMessage(
            "Approvals displayed for the last 3 months only."),
        "medicalRequests":
            MessageLookupByLibrary.simpleMessage("Medical requests"),
        "medicalRequestsAndReferals": MessageLookupByLibrary.simpleMessage(
            "Medical requests & referrals"),
        "medicalRequestsReferrals":
            MessageLookupByLibrary.simpleMessage("Medical requests/Referrals"),
        "medicalTravelReimbrushment": MessageLookupByLibrary.simpleMessage(
            "Medical/Travel reimbursement"),
        "medicalTreatment":
            MessageLookupByLibrary.simpleMessage("Medical Treatment"),
        "mobileNoHint":
            MessageLookupByLibrary.simpleMessage("Enter your mobile number"),
        "mobileNumber": MessageLookupByLibrary.simpleMessage("Mobile number"),
        "more": MessageLookupByLibrary.simpleMessage("More"),
        "mostRecentCertificates":
            MessageLookupByLibrary.simpleMessage("Most recent Certificates"),
        "mostRecentMedicalApproval": MessageLookupByLibrary.simpleMessage(
            "Most recent medical approval"),
        "mostRecentPayment":
            MessageLookupByLibrary.simpleMessage("Most recent payment"),
        "myAppointment":
            MessageLookupByLibrary.simpleMessage("My appointments"),
        "myProfile": MessageLookupByLibrary.simpleMessage("My profile"),
        "na": MessageLookupByLibrary.simpleMessage("N/A"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "netAmount": MessageLookupByLibrary.simpleMessage("Net Amount"),
        "nextReviewDate":
            MessageLookupByLibrary.simpleMessage("Next review date"),
        "ninety": MessageLookupByLibrary.simpleMessage("90"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noBioMetricSupport": MessageLookupByLibrary.simpleMessage(
            "Device does not support Biometric login"),
        "noDataReceived":
            MessageLookupByLibrary.simpleMessage("No data received"),
        "noInternet":
            MessageLookupByLibrary.simpleMessage("No Internet Connection"),
        "noItems": MessageLookupByLibrary.simpleMessage("No items to display"),
        "noRobot": MessageLookupByLibrary.simpleMessage("I am not a robot"),
        "notificationSettings":
            MessageLookupByLibrary.simpleMessage("Notification settings"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "onboardingFirst": MessageLookupByLibrary.simpleMessage(
            "Workers’ compensation made easy"),
        "onboardingSecond": MessageLookupByLibrary.simpleMessage(
            "Track your payments, appointments, and approvals"),
        "onboardingThird": MessageLookupByLibrary.simpleMessage(
            "Upload your documents and access helpful resources"),
        "other": MessageLookupByLibrary.simpleMessage("Other"),
        "otpCode": MessageLookupByLibrary.simpleMessage("OTP Code"),
        "otpRequired": MessageLookupByLibrary.simpleMessage("OPT is required"),
        "partialCapacity":
            MessageLookupByLibrary.simpleMessage("Partital Capacity"),
        "paymentDate": MessageLookupByLibrary.simpleMessage("Payment date"),
        "paymentFilter": m7,
        "paymentMethod": MessageLookupByLibrary.simpleMessage("Payment method"),
        "paymentTooltip": MessageLookupByLibrary.simpleMessage(
            "No direct payments from your Employer are displayed here. Only direct payments from EML are displayed here. Depending on your nominated banking institution, please allow for processing times."),
        "paymentType": MessageLookupByLibrary.simpleMessage("Payment type"),
        "payments": MessageLookupByLibrary.simpleMessage("Payments"),
        "paymentsDetail":
            MessageLookupByLibrary.simpleMessage("Payment detail"),
        "period": MessageLookupByLibrary.simpleMessage("Period"),
        "permission":
            MessageLookupByLibrary.simpleMessage("Calendar Permission"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "phoneAndFile": MessageLookupByLibrary.simpleMessage("Phone/File"),
        "pinCodeMisMatched":
            MessageLookupByLibrary.simpleMessage("Pin code mismatched"),
        "pinCodeValidation":
            MessageLookupByLibrary.simpleMessage("Pin code is required field"),
        "pinLogin": MessageLookupByLibrary.simpleMessage("Pin Login"),
        "podcasts": MessageLookupByLibrary.simpleMessage("Podcast"),
        "postalAddress": MessageLookupByLibrary.simpleMessage("Postal address"),
        "preInjuriedDuties":
            MessageLookupByLibrary.simpleMessage("Pre injuried duties"),
        "profilePageBottomText": MessageLookupByLibrary.simpleMessage(
            "Please contact your case manager to update your details."),
        "provider": MessageLookupByLibrary.simpleMessage("Provider"),
        "providerHint":
            MessageLookupByLibrary.simpleMessage("Enter provider name"),
        "pushingPullingAbility":
            MessageLookupByLibrary.simpleMessage("Pushing/pulling ability"),
        "read": MessageLookupByLibrary.simpleMessage("Read"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "rehabilitationservices":
            MessageLookupByLibrary.simpleMessage("Rehabilitation Services"),
        "reimbursement": MessageLookupByLibrary.simpleMessage("Reimbursement"),
        "rememberMe": MessageLookupByLibrary.simpleMessage("Remember me"),
        "repeatPin":
            MessageLookupByLibrary.simpleMessage("Repeat PIN to continue"),
        "resendOtp": MessageLookupByLibrary.simpleMessage("Resend OTP"),
        "resendOtpTimer": m8,
        "resetPin": MessageLookupByLibrary.simpleMessage("Reset Pin"),
        "resetPinDialogBody": MessageLookupByLibrary.simpleMessage(
            "Do you want to reset your pin?"),
        "retake": MessageLookupByLibrary.simpleMessage("Retake"),
        "scheduledAppointment":
            MessageLookupByLibrary.simpleMessage("Scheduled appointments"),
        "selectAClaim": MessageLookupByLibrary.simpleMessage("Select a claim"),
        "serverError": MessageLookupByLibrary.simpleMessage("Server Error"),
        "setPin": MessageLookupByLibrary.simpleMessage("Set a new PIN"),
        "sittingTolerance":
            MessageLookupByLibrary.simpleMessage("Sitting tolerance"),
        "sixty": MessageLookupByLibrary.simpleMessage("60"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "skipNow": MessageLookupByLibrary.simpleMessage("Skip for now"),
        "standingTolerance":
            MessageLookupByLibrary.simpleMessage("Standing tolerance"),
        "subPayments": MessageLookupByLibrary.simpleMessage("Sub payments"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "success": MessageLookupByLibrary.simpleMessage("Success"),
        "surgery": MessageLookupByLibrary.simpleMessage("Surgery"),
        "termsAndConditionPrefix": MessageLookupByLibrary.simpleMessage(
            "By selecting you agree to our "),
        "termsAndConditionSuffix": MessageLookupByLibrary.simpleMessage(
            "term conditions and privacy."),
        "termsAndConditionsHeading": MessageLookupByLibrary.simpleMessage(
            "Please read our terms and conditions"),
        "termsAndPrivacy": MessageLookupByLibrary.simpleMessage(
            "By selecting you agree to our"),
        "termsAndPrivacyText": MessageLookupByLibrary.simpleMessage(
            "terms, condition and privacy policy"),
        "termsConditionsAndPrivacy": MessageLookupByLibrary.simpleMessage(
            "Terms conditions and privacy"),
        "thirty": MessageLookupByLibrary.simpleMessage("30"),
        "time": MessageLookupByLibrary.simpleMessage("Time"),
        "timeHint":
            MessageLookupByLibrary.simpleMessage("Pick appointment time"),
        "to": MessageLookupByLibrary.simpleMessage("to"),
        "totalPayment": MessageLookupByLibrary.simpleMessage("Total payment"),
        "touchId": MessageLookupByLibrary.simpleMessage("Touch ID"),
        "treatingDoctor":
            MessageLookupByLibrary.simpleMessage("Treating doctor"),
        "treatmentType": MessageLookupByLibrary.simpleMessage("Type"),
        "treatmentTypeHint":
            MessageLookupByLibrary.simpleMessage("Enter treatment type"),
        "twoMinPinValidationMessage": MessageLookupByLibrary.simpleMessage(
            "Please wait 2 sec before trying the pin"),
        "unAuthorizedAccess":
            MessageLookupByLibrary.simpleMessage("UnAuthorized Access"),
        "upload": MessageLookupByLibrary.simpleMessage("Upload"),
        "uploadANewCertificate":
            MessageLookupByLibrary.simpleMessage("Upload a new Certificate"),
        "uploadFromCamera":
            MessageLookupByLibrary.simpleMessage("Take a photo"),
        "uploadFromGallery": MessageLookupByLibrary.simpleMessage(
            "Add a photo from library/gallery"),
        "uploadFromPhone":
            MessageLookupByLibrary.simpleMessage("Select file from phone"),
        "uploadInformation": MessageLookupByLibrary.simpleMessage(
            "Uploading documents are secure to EML"),
        "uploadNewCertificate":
            MessageLookupByLibrary.simpleMessage("Upload new Certificate"),
        "uploadReimbursementRequest": MessageLookupByLibrary.simpleMessage(
            "Upload reimbursement request"),
        "uploadToEml": MessageLookupByLibrary.simpleMessage("Upload to EML"),
        "uploadTreatmentReqest":
            MessageLookupByLibrary.simpleMessage("Upload treatment request"),
        "uploading": MessageLookupByLibrary.simpleMessage("Uploading Docs..."),
        "userGreetings": m9,
        "validFrom": MessageLookupByLibrary.simpleMessage("Valid from"),
        "validTo": MessageLookupByLibrary.simpleMessage("Valid to"),
        "videoDuration": m10,
        "videos": MessageLookupByLibrary.simpleMessage("Video"),
        "videosArticlesPodcasts":
            MessageLookupByLibrary.simpleMessage("Videos, articles & podcasts"),
        "videosArticlesPodcastsTitle": MessageLookupByLibrary.simpleMessage(
            "Videos, articles &\npodcasts"),
        "viewLess": MessageLookupByLibrary.simpleMessage("View less"),
        "viewMore": MessageLookupByLibrary.simpleMessage("View more"),
        "welcomeNoteExpiryText": MessageLookupByLibrary.simpleMessage(
            "Your certificate of capacity is expiring in 8 days"),
        "workNumber": MessageLookupByLibrary.simpleMessage("Work number"),
        "workerCompensation":
            MessageLookupByLibrary.simpleMessage("Workers Compensation"),
        "workerCompensationTooltipBodyText": MessageLookupByLibrary.simpleMessage(
            "Please ensure your workers compensation certificate is current and valid so that there are no interruptions to your payments."),
        "workersCompensationCertificate": MessageLookupByLibrary.simpleMessage(
            "Workers Compensation Certificate"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
