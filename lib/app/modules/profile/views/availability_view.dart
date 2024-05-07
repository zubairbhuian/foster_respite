import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/modules/profile/controllers/profile_controller.dart';
import 'package:foster_respite/app/modules/profile/widgets/availability_card.dart';
import 'package:foster_respite/app/widgets/appbar.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AvailabilityView extends GetView<ProfileController> {
  const AvailabilityView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Availability",
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 16.sp),
            Obx(() {
              return AvailabilityCard(
                onTap: () {},
                onChanged: (value) {
                  controller.isMondayAvailable.value = value;
                },
                value: controller.isMondayAvailable.value,
                day: "Monday",
                time: "10:00 am - 7:00 pm",
              );
            }),
            Obx(() {
              return AvailabilityCard(
                onTap: () {},
                onChanged: (value) {
                  controller.isTuesdayAvailable.value = value;
                },
                value: controller.isTuesdayAvailable.value,
                day: "Tuesday",
                time: "10:00 am - 7:00 pm",
              );
            }),
            Obx(() {
              return AvailabilityCard(
                onTap: () {},
                onChanged: (value) {
                  controller.isWednesdayAvailable.value = value;
                },
                value: controller.isWednesdayAvailable.value,
                day: "Wednesday",
                time: "10:00 am - 7:00 pm",
              );
            }),
            Obx(() {
              return AvailabilityCard(
                onTap: () {},
                onChanged: (value) {
                  controller.isThursdayAvailable.value = value;
                },
                value: controller.isThursdayAvailable.value,
                day: "Thursday",
                time: "10:00 am - 7:00 pm",
              );
            }),
            Obx(() {
              return AvailabilityCard(
                onTap: () {},
                onChanged: (value) {
                  controller.isFridayAvailable.value = value;
                },
                value: controller.isFridayAvailable.value,
                day: "Friday",
                time: "10:00 am - 7:00 pm",
              );
            }),
            Obx(() {
              return AvailabilityCard(
                onTap: () {},
                onChanged: (value) {
                  controller.isSaturdayAvailable.value = value;
                },
                value: controller.isSaturdayAvailable.value,
                day: "Saturday",
                time: "10:00 am - 7:00 pm",
              );
            }),
            Obx(() {
              return AvailabilityCard(
                onTap: () {},
                onChanged: (value) {
                  controller.isSundayAvailable.value = value;
                },
                value: controller.isSundayAvailable.value,
                day: "Saturday",
                time: "Not Working",
              );
            }),
            SizedBox(height: 30.sp),
          ],
        ),
      ),
    );
  }
}
