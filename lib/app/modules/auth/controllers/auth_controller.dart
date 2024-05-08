import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AuthController extends GetxController {
  RxInt pageIndex = 0.obs;
    RxBool isRespiteProvider = false.obs;
  // RxInt totalPage = 4.obs;
  RxString countryFlagAndNumberCode = "🇺🇸  +1".obs;

  String selectNumberCode = "";

  PageController pageController = PageController();


  // page change func
  void pageIncrement() {
    if ((isRespiteProvider.value?4:3) - 1 > pageIndex.value) {
      pageIndex.value++;
      pageController.animateToPage(pageIndex.value,
          duration: const Duration(milliseconds: 1), curve: Curves.ease);
    }
  }

  void pageDecrement() {
    if (pageIndex.value == 0) {
      Get.back();
    } else {
      pageIndex.value--;
      pageController.animateToPage(pageIndex.value,
          duration: const Duration(milliseconds: 1), curve: Curves.ease);
    }
  }

  void onSelectCountry(Country country) {
    countryFlagAndNumberCode.value =
        "${country.flagEmoji}  +${country.phoneCode}";
    selectNumberCode = "+${country.phoneCode}";
  }
}
