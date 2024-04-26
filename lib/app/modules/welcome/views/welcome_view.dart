import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';
import 'package:foster_respite/app/widgets/divider_text.dart';
import 'package:foster_respite/config/gape.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});
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
                _bottomText(theme)
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
        onPressed: () {},
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
        onPressed: () {},
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
        onPressed: () {},
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
  Widget _bottomText(theme) {
    return RichText(
        text: TextSpan(
            text: "Don’t have an account?",
            style: theme.textTheme.bodyMedium,
            children: [
          TextSpan(
            text: " Register",
            style: theme.textTheme.labelMedium
                ?.copyWith(color: theme.primaryColor),
            recognizer: TapGestureRecognizer()..onTap = () {},
          )
        ]));
  }
}
