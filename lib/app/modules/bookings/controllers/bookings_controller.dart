import 'package:flutter/material.dart';
import 'package:foster_respite/app/modules/entryPoint/controllers/entry_point_controller.dart';
import 'package:get/get.dart';

class BookingsController extends GetxController {
  bool isNormalUser = true;
  int pageIndex = 0;
  TabController? fosterTabController;
  TabController? respitProviderTabController;
  PageController pageController = PageController();

  @override
  void onReady() {
    pageController.animateToPage(
        EntryPointController.to.isRespiteProvider.value ? 0 : 1,
        duration: const Duration(milliseconds: 1),
        curve: Curves.ease);
    super.onReady();
  }
}
