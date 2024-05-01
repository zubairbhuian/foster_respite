import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/modules/profile/views/my_additional_information_view.dart';
import 'package:foster_respite/app/modules/profile/views/my_address_view.dart';
import 'package:foster_respite/app/modules/profile/views/my_profile_view.dart';
import 'package:foster_respite/app/widgets/appbar.dart';
import 'package:foster_respite/app/widgets/custom_tile.dart';

import 'package:get/get.dart';

class MyAccountView extends GetView {
  const MyAccountView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 12.sp),
              child: Text(
                "My Account",
                style: theme.textTheme.titleMedium,
              ),
            ),
            CustomTile(
              title: "My Profile",
              onTap: () {
                Get.to(() => const MyProfileView());
              },
            ),
            CustomTile(
              title: "Address",
              onTap: () {
                Get.to(() => const MyAddressView());
              },
            ),
            CustomTile(
              title: "Additional Information",
              onTap: () {
                Get.to(() => const MyAdditionalInformationView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
