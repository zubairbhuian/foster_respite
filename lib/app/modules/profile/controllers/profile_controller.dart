import 'package:country_picker/country_picker.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxString countryFlagAndNumberCode = "🇺🇸  +1".obs;

  String selectNumberCode = "";

  void onSelectCountry(Country country) {
    countryFlagAndNumberCode.value =
        "${country.flagEmoji}  +${country.phoneCode}";
    selectNumberCode = "+${country.phoneCode}";
  }
}
