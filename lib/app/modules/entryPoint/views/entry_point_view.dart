import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../controllers/entry_point_controller.dart';

class EntryPointView extends GetView<EntryPointController> {
  const EntryPointView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return GetBuilder<EntryPointController>(builder: (context) {
      return Scaffold(
          backgroundColor: Colors.white,
          body: IndexedStack(
            index: controller.pageIndex,
            children: controller.pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              controller.pageIndex = index;
              controller.update();
            },
            backgroundColor: Colors.white,
            // fixedColor: Colors.white,
            iconSize: 24,
            currentIndex: controller.pageIndex,
            selectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
            unselectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            selectedItemColor: theme.primaryColor,
            unselectedItemColor: theme.dividerColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: const [
                BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: FaIcon(IconlyBold.home),
                  label: "Home"),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: FaIcon(IconlyBold.document),
                  label: "Bookings"),
              // BottomNavigationBarItem(
              //     backgroundColor: Colors.white,
              //     icon: FaIcon(IconlyBold.wallet),
              //     label: "Earnings"),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: FaIcon(IconlyBold.chat),
                  label: "Messages"),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(IconlyBold.profile),
                  label: "Profile")
            ],
          ));
    });
  }
}
