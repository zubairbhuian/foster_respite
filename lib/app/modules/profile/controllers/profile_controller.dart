import 'package:country_picker/country_picker.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxString countryFlagAndNumberCode = "🇺🇸  +1".obs;

  // ***** Availability ******
  RxBool isMondayAvailable = true.obs;
  RxBool isTuesdayAvailable = true.obs;
  RxBool isWednesdayAvailable = true.obs;
  RxBool isThursdayAvailable = true.obs;
  RxBool isFridayAvailable = true.obs;
  RxBool isSaturdayAvailable = true.obs;
  RxBool isSundayAvailable = false.obs;

  String selectNumberCode = "";

  void onSelectCountry(Country country) {
    countryFlagAndNumberCode.value =
        "${country.flagEmoji}  +${country.phoneCode}";
    selectNumberCode = "+${country.phoneCode}";
  }
}
