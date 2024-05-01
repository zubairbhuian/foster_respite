import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';
import 'package:foster_respite/app/widgets/custom_textfield.dart';
import 'package:foster_respite/config/gape.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class ChangePasswordView extends GetView {
  const ChangePasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _banner(theme),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.sp, vertical: 16.sp),
                    child: const Column(
                      children: [
                        CustomPassWordTextField(
                          extraLabel: "Current Password",
                        ),
                        CustomPassWordTextField(
                          extraLabel: "New Password",
                        ),
                        CustomPassWordTextField(
                          extraLabel: "Confirm New Password",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: SizedBox(
              width: double.infinity,
              child: PrimaryBtn(
                  onPressed: () {
                    controller.pageIncrement();
                  },
                  child: const Text(
                    "Submit",
                  )),
            ),
          ),
          SizedBox(
            height: Gaps.medium,
          ),
        ],
      ),
    );
  }

  // banner
  Widget _banner(ThemeData theme) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage("assets/images/auth/login_banner.png"))),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              top: Gaps.reguler,
              left: Gaps.medium,
              bottom: Gaps.xlarge,
              right: Gaps.xxlarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 8.sp),
                    child: const Icon(
                      IconlyLight.arrow_left,
                      color: Colors.white,
                    ),
                  )),
              SizedBox(height: 20.sp),
              Text(
                "Change Password",
                style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w500, color: Colors.white),
              ),
              SizedBox(height: 8.sp),
              Text(
                "Your new password must be different from the previous one.",
                style:
                    theme.textTheme.bodyMedium?.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
