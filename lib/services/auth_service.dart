// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import '../consts/storage.dart';
// import '../routes/app_pages.dart';
//
//
//
//
// class AuthService extends GetxService {
//   static AuthService get to => Get.find();
//   GetStorage box = GetStorage(StorageKeys.userDataBox);
//   GetStorage box2 = GetStorage(StorageKeys.appLanguage);
//   GetStorage box3 = GetStorage(StorageKeys.location);
//   GetStorage box6 = GetStorage(StorageKeys.profileInfo);
//
//   final isLoggedIn = false.obs;
//   final isSelectedLanguage = false.obs;
//   OtpVerificationResponse? userInfo;
//   final language = 'ar'.obs; // Default to 'ar'
//   bool get isLoggedInValue => isLoggedIn.value;
//
//
//   // New observable values for additional user details
//   final Rx<String?> gender = Rx<String?>(null);
//   final Rx<bool?> companyIsActive = Rx<bool?>(null);
//   final Rx<int?> coverageActivated = Rx<int?>(null);
//
//   // Getter methods for the new fields
//   String? get userGender => gender.value;
//   bool? get isCompanyActive => companyIsActive.value;
//   int? get isCoverageActivated => coverageActivated.value;
//
//   @override
//   Future<void> onInit() async {
//     await GetStorage.init();
//     await GetStorage.init(StorageKeys.userDataBox);
//     await GetStorage.init(StorageKeys.appLanguage);
//     await GetStorage.init(StorageKeys.language);
//     await GetStorage.init(StorageKeys.appDataBox);
//     await GetStorage.init(StorageKeys.location);
//     await GetStorage.init(StorageKeys.profileInfo);
//
//     super.onInit();
//
//     // Initialize stored data
//     if (box.hasData(StorageKeys.userDataKey)) {
//       isLoggedIn.value = true;
//       userInfo = OtpVerificationResponse.fromJson(box.read(StorageKeys.userDataKey));
//
//       // Load additional user details from storage
//       _loadUserDetails();
//     }
//
//     // Check if a language is stored, otherwise default to Arabic ('ar')
//     if (box2.hasData(StorageKeys.language)) {
//       language.value = box2.read(StorageKeys.language);
//     } else {
//       language.value = 'ar';
//       box2.write(StorageKeys.language, 'ar');
//     }
//     Get.updateLocale(Locale(language.value));
//   }
//
//   void _loadUserDetails() {
//     gender.value = box.read('user_gender');
//     companyIsActive.value = box.read('company_is_active');
//     coverageActivated.value = box.read('coverage_activated');
//   }
//
//   void saveUserInfo(OtpVerificationResponse response) {
//     userInfo = response;
//     isLoggedIn.value = true;
//     box.write(StorageKeys.userDataKey, response.toJson());
//   }
//
//   // New method to save user details
//   void saveUserDetails({
//     String? gender,
//     bool? companyIsActive,
//     int? coverageActivated,
//     int? medicalDisclosureSigned,
//   }) {
//     // Update observable values
//     this.gender.value = gender;
//     this.companyIsActive.value = companyIsActive;
//     this.coverageActivated.value = coverageActivated;
//
//     // Save to storage
//     box.write('user_gender', gender);
//     box.write('company_is_active', companyIsActive);
//     box.write('coverage_activated', coverageActivated);
//     box.write('medical_disclosure_signed', medicalDisclosureSigned);
//   }
//
//   // Update method to save personal info
//   void savePersonalInfo(PersonalInfo personalInfo) {
//     if (personalInfo.message?.data != null) {
//       final data = personalInfo.message!.data!;
//       saveUserDetails(
//         gender: data.gender,
//         companyIsActive: data.companyIsActive,
//         coverageActivated: data.coverageActivated,
//         medicalDisclosureSigned: data.medicalDisclosureSigned,
//       );
//     }
//   }
//
//   void selectLanguage(String lan) {
//     language.value = lan;
//     box2.write(StorageKeys.language, lan);
//     Get.updateLocale(Locale(lan));
//   }
//
//   void logout() {
//     try {
//       // Clear user data
//       isLoggedIn.value = false;
//       userInfo = null;
//
//       // Clear additional user details
//       gender.value = null;
//       companyIsActive.value = null;
//       coverageActivated.value = null;
//
//       // Clear storage
//       box6.remove(StorageKeys.profileInfo);
//       box.remove(StorageKeys.userDataKey);
//       box.remove('user_gender');
//       box.remove('company_is_active');
//       box.remove('coverage_activated');
//       box.remove('medical_disclosure_signed');
//
//       // Try to clear orders cache if the controller exists
//       try {
//         if (Get.isRegistered<OrdersController>()) {
//           final ordersController = Get.find<OrdersController>();
//
//         }
//       } catch (e) {
//         debugPrint('Error clearing orders cache: $e');
//       }
//
//       // Navigate to login
//       Get.offAllNamed(Routes.LOGIN);
//     } catch (e) {
//       debugPrint('Error during logout: $e');
//       // Still try to navigate to login even if there's an error
//       Get.offAllNamed(Routes.LOGIN);
//     }
//   }
// }
//
