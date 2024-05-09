import 'package:flutter/material.dart';
import 'package:foster_respite/app/modules/bookings/views/bookings_view.dart';
import 'package:foster_respite/app/modules/earnings/views/earnings_view.dart';
import 'package:foster_respite/app/modules/home/views/home_view.dart';
import 'package:foster_respite/app/modules/messages/views/messages_view.dart';
import 'package:foster_respite/app/modules/profile/views/profile_view.dart';
import 'package:foster_respite/app/services/base/preferences.dart';
import 'package:get/get.dart';

class EntryPointController extends GetxController {
  static EntryPointController get to => Get.find();

  int pageIndex = 0;
  RxBool isRespiteProvider = false.obs;
  List<Widget> pages = [
    const HomeView(),
    const BookingsView(),
    const MessagesView(),
    const ProfileView()
  ];
  List<Widget> pages_2 = [
    const BookingsView(),
    const EarningsView(),
    const MessagesView(),
    const ProfileView()
  ];

  @override
  void onReady() {
    isRespiteProvider.value = Preferences.isRespiteProvider;
    update();
    super.onReady();
  }
}
