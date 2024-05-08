import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/routes/app_pages.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';
import 'package:foster_respite/app/widgets/custom_textfield.dart';
import 'package:foster_respite/config/gape.dart';

import 'package:get/get.dart';

class SignupView extends GetView {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ***** Banner *****
            _banner(theme),
            SizedBox(height: 30.sp),
            // ***** Text Field *****
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Gaps.medium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTextField(
                    extraLabel: "Email Address",
                    hintText: 'Enter email address',
                  ),
                  const CustomPassWordTextField(
                    extraLabel: "Password",
                    hintText: 'Enter password',
                  ),
                  const CustomPassWordTextField(
                    extraLabel: "Confirm Password",
                    hintText: 'Enter password',
                  ),
                  SizedBox(height: 10.sp),
                  SizedBox(
                      width: double.infinity,
                      child: PrimaryBtn(
                          onPressed: () {
                            Get.toNamed(Routes.REGESTER_USER);
                          },
                          child: const Text('Create Account'))),
                  SizedBox(height: 140.h),
                  _bottomText(theme),
                  SizedBox(height: 30.sp),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

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
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    ),
                  )),
              SizedBox(height: 20.sp),
              Text(
                "Create a new \nAccount",
                style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w500, color: Colors.white),
              ),
              SizedBox(height: 8.sp),
              Text(
                "Please enter your email address and passwordto create a new account",
                style:
                    theme.textTheme.bodyMedium?.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  // ****** Bottom Text ******
  Widget _bottomText(ThemeData theme) {
    return Center(
      child: RichText(
          text: TextSpan(
              text: "Already have an account?",
              style: theme.textTheme.bodyMedium,
              children: [
            TextSpan(
              text: " Log in",
              style: theme.textTheme.labelMedium
                  ?.copyWith(color: theme.primaryColor),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.offNamed(Routes.LOGIN);
                },
            )
          ])),
    );
  }
}
