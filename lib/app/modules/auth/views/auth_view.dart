import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foster_respite/app/routes/app_pages.dart';
import 'package:foster_respite/app/utils/logger.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';
import 'package:foster_respite/app/widgets/divider_text.dart';
import 'package:foster_respite/app/widgets/my_bottom_sheet.dart';
import 'package:foster_respite/config/gape.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _banner(),
          SizedBox(height: Gaps.large),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Gaps.xxlarge),
            child: Column(
              children: [
                _customEmailLogin(theme),
                SizedBox(height: Gaps.large),
                const DividerText("Or"),
                SizedBox(height: Gaps.medium),
                _googleLogin(theme),
                SizedBox(height: Gaps.medium),
                _appleLogin(theme),
                SizedBox(height: Gaps.xxxlarge),
                _bottomText(theme, context)
              ],
            ),
          ),
        ],
      ),
    ));
  }

  // ****** Banner ******
  Widget _banner() {
    return Container(
      height: 470.h,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage('assets/images/welcome/welcome_banner_2.png'))),
    );
  }

  // ****** Email Login ******
  Widget _customEmailLogin(ThemeData theme) {
    return PrimaryBtn(
        onPressed: () {
          Get.toNamed(Routes.LOGIN);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(IconlyLight.message),
            SizedBox(width: Gaps.small),
            Text(
              "Continue with email",
              style: theme.textTheme.labelLarge?.copyWith(color: Colors.white),
            )
          ],
        ));
  }

  // ****** Google Login ******
  Widget _googleLogin(ThemeData theme) {
    return PrimaryBtn(
        onPressed: () {
          Get.offAllNamed(Routes.ENTRY_POINT);
        },
        backgroundColor: const Color(0xffF7F8F9),
        foregroundColor: theme.primaryColorDark,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
                width: 22.sp, height: 22.sp, "assets/icons/auth/google.svg"),
            SizedBox(width: Gaps.small),
            Text(
              "Continue with Google",
              style: theme.textTheme.labelLarge
                  ?.copyWith(color: theme.primaryColorDark),
            ),
          ],
        ));
  }

  // ****** Apple Login ******
  Widget _appleLogin(ThemeData theme) {
    return PrimaryBtn(
        onPressed: () {
          Get.offAllNamed(Routes.ENTRY_POINT);
        },
        backgroundColor: const Color(0xff000000),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/auth/apple.svg"),
            SizedBox(width: Gaps.small),
            Text(
              "Continue with email",
              style: theme.textTheme.labelLarge?.copyWith(color: Colors.white),
            )
          ],
        ));
  }

  // ****** Bottom Text ******
  Widget _bottomText(ThemeData theme, BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "Don’t have an account?",
            style: theme.textTheme.bodyMedium,
            children: [
          TextSpan(
            text: " Register",
            style: theme.textTheme.labelMedium
                ?.copyWith(color: theme.primaryColor),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                MyBottomSheet.modal(
                    height: 290.sp,
                    context: context,
                    // backgroundColor: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.sp),
                        Text(
                          "Are you a:",
                          style: theme.textTheme.headlineMedium
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: Gaps.xxlarge),
                        SizedBox(
                          width: double.infinity,
                          child: OutLineBtn(
                              onPressed: () {
                                Get.back();
                                controller.isRespiteProvider.value = true;
                                kLogger.e(controller.isRespiteProvider.value);
                                Get.toNamed(Routes.SIGNUP);
                              },
                              backgroundColor: const Color(0xffF7F8F9),
                              borderColor: theme.primaryColorLight,
                              foregroundColor: theme.primaryColorDark,
                              child: const Text('Respite Provider')),
                        ),
                        SizedBox(height: Gaps.large),
                        const DividerText("Or"),
                        SizedBox(height: Gaps.medium),
                        SizedBox(
                          width: double.infinity,
                          child: OutLineBtn(
                              onPressed: () {
                                Get.back();
                                controller.isRespiteProvider.value = false;
                                kLogger.e(controller.isRespiteProvider.value);
                                Get.toNamed(Routes.SIGNUP);
                              },
                              backgroundColor: const Color(0xffF7F8F9),
                              foregroundColor: theme.primaryColorDark,
                              child: const Text('Foster/Adoptive Parent')),
                        ),
                      ],
                    ));
              },
          )
        ]));
  }
}
