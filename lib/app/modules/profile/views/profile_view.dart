import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/modules/profile/views/change_password_view.dart';
import 'package:foster_respite/app/modules/profile/views/contact_us_view.dart';
import 'package:foster_respite/app/modules/profile/views/my_account_view.dart';
import 'package:foster_respite/app/routes/app_pages.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';
import 'package:foster_respite/app/widgets/custom_tile.dart';
import 'package:foster_respite/app/widgets/my_bottom_sheet.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: theme.primaryColorLight,
          foregroundColor: Colors.white,
          title: const Text('Profile'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _profile(theme),
              CustomTile(
                title: "My Account",
                onTap: () {
                  Get.to(() => const MyAccountView());
                },
              ),
              CustomTile(
                title: "Change Password",
                onTap: () {
                  Get.to(() => const ChangePasswordView());
                },
              ),
              CustomTile(
                title: "Contact Us",
                onTap: () {
                  Get.to(() => const ContactUsView());
                },
              ),
              CustomTile(
                title: "Terms & Conditions",
                onTap: () {},
              ),
              CustomTile(
                title: "Privacy Policy",
                isDivider: false,
                onTap: () {},
              ),
              SizedBox(height: 54.sp),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: SizedBox(
                  width: double.infinity,
                  child: PrimaryBtn(
                    onPressed: () {
                      MyBottomSheet.modal(
                          context: context,
                          height: 350,
                          child: Column(
                            children: [
                              Image.asset(
                                  'assets/images/profile/logout_icon.png'),
                              SizedBox(height: 16.sp),
                              Text(
                                "Log Out",
                                style: theme.textTheme.titleLarge,
                              ),
                              SizedBox(height: 16.sp),
                              Text(
                                "Are you absolutely certain that you want to proceed with logging out?",
                                style: theme.textTheme.bodyMedium,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 16.sp),
                              SizedBox(
                                width: double.infinity,
                                child: PrimaryBtn(
                                  onPressed: () {
                                    Get.offAll(Routes.LOGIN);
                                  },
                                  backgroundColor: const Color(0xffFF6767),
                                  foregroundColor: Colors.white,
                                  child: const Text("Yes, Log Out"),
                                ),
                              ),
                            ],
                          ));
                    },
                    backgroundColor: const Color(0xffFFEFEF),
                    foregroundColor: const Color(0xffEC3A3A),
                    child: const Text("Log Out"),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget _profile(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Monika Rose",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 8.sp),
              Text(
                "demo@gmail.com",
                style: theme.textTheme.bodyMedium
                    ?.copyWith(color: theme.dividerColor),
              ),
            ],
          )),
          Container(
            width: 64.sp,
            height: 64.sp,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/auth/demo_user.png"))),
          )
        ],
      ),
    );
  }
}
