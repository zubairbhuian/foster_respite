import 'package:flutter/material.dart';
import 'package:foster_respite/app/modules/bookings/views/bookings_view.dart';
import 'package:foster_respite/app/modules/home/views/home_view.dart';
import 'package:foster_respite/app/modules/messages/views/messages_view.dart';
import 'package:foster_respite/app/modules/profile/views/profile_view.dart';
import 'package:get/get.dart';

class EntryPointController extends GetxController {
  int pageIndex = 0;
  List<Widget> pages = [
    const HomeView(),
    const BookingsView(),
    // const EarningsView(),
    const MessagesView(),
    const ProfileView()
  ];
}
