Make a resource with a nested struct, example computer prestage enrolments 

see commit hash in terraform jamfpro provider 097cc7ac6801f14029392612c1eaea700b4ab128

set it to silence it with multiple keys Apple.Seed.Name for example 

clear, compile, build

look for those keys being redacted in the logging

example good, see admin_password has been redacted :

``` 
2025-07-17T13:36:09.873+0100 [DEBUG] provider.terraform-provider-jamfpro: Constructed Jamf Pro Computer Computer Prestage JSON:
{
  "id": "",
  "versionLock": 0,
  "displayName": "jamfpro-sdk-example-computerPrestageMinimum-config",
  "mandatory": true,
  "mdmRemovable": true,
  "supportPhoneNumber": "111-222-3333",
  "supportEmailAddress": "email@company.com",
  "department": "department name",
  "defaultPrestage": false,
  "enrollmentSiteId": "-1",
  "keepExistingSiteMembership": false,
  "keepExistingLocationInformation": false,
  "requireAuthentication": false,
  "authenticationPrompt": "hello welcome to your enterprise managed macOS device",
  "preventActivationLock": false,
  "enableDeviceBasedActivationLock": false,
  "deviceEnrollmentProgramInstanceId": "1",
  "skipSetupItems": {
    "Biometric": false,
    "TermsOfAddress": false,
    "FileVault": false,
    "iCloudDiagnostics": false,
    "Diagnostics": false,
    "Accessibility": false,
    "AppleID": false,
    "ScreenTime": false,
    "Siri": false,
    "DisplayTone": false,
    "Restore": false,
    "Appearance": false,
    "Privacy": false,
    "Payment": false,
    "Registration": false,
    "TOS": false,
    "iCloudStorage": false,
    "Location": false,
    "Intelligence": false,
    "EnableLockdownMode": false,
    "Welcome": false,
    "Wallpaper": false
  },
  "locationInformation": {
    "id": "-1",
    "versionLock": 0,
    "username": "",
    "realname": "",
    "phone": "",
    "email": "",
    "room": "",
    "position": "",
    "departmentId": "-1",
    "buildingId": "-1"
  },
  "purchasingInformation": {
    "id": "-1",
    "versionLock": 0,
    "leased": false,
    "purchased": true,
    "appleCareId": "",
    "poNumber": "",
    "vendor": "",
    "purchasePrice": "",
    "lifeExpectancy": 0,
    "purchasingAccount": "",
    "purchasingContact": "",
    "leaseDate": "1970-01-01",
    "poDate": "1970-01-01",
    "warrantyDate": "1970-01-01"
  },
  "enrollmentCustomizationId": "0",
  "autoAdvanceSetup": false,
  "installProfilesDuringSetup": true,
  "prestageInstalledProfileIds": [],
  "customPackageIds": [],
  "customPackageDistributionPointId": "-1",
  "enableRecoveryLock": false,
  "recoveryLockPasswordType": "MANUAL",
  "rotateRecoveryLockPassword": false,
  "prestageMinimumOsTargetVersionType": "NO_ENFORCEMENT",
  "siteId": "-1",
  "accountSettings": {
    "id": "-1",
    "versionLock": 0,
    "payloadConfigured": true,
    "localAdminAccountEnabled": false,
    "adminUsername": "***REDACTED***",
    "adminPassword": "***REDACTED***",
    "hiddenAdminAccount": false,
    "localUserManaged": false,
    "userAccountType": "ADMINISTRATOR",
    "prefillPrimaryAccountInfoFeatureEnabled": false,
    "prefillType": "UNKNOWN",
    "prefillAccountFullName": "",
    "prefillAccountUserName": "",
    "preventPrefillInfoFromModification": false
  }

```