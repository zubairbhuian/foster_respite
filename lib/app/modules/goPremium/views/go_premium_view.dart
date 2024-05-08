import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';

import 'package:get/get.dart';

import '../controllers/go_premium_controller.dart';

class GoPremiumView extends GetView<GoPremiumController> {
  const GoPremiumView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/subscription_screen_bg.jpg"))),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // app bar
              SizedBox(height: 10.sp),
              _appBar(theme),
              SizedBox(height: 20.sp),

              Text(
                "The Only US National Foster Care & Adoptive Respite Provider Directory Mobile App",
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.sp),
              _row(theme, text: "Easy Booking with Chat"),
              _row(theme, text: "Licensed and Certified Respite Providers"),
              _row(theme, text: "Nationwide Search"),
              _row(theme, text: "Providers are Background Cleared"),
              _row(theme, text: "Providers are Fingerprinted"),
              SizedBox(height: 8.sp),
              _priceCard(theme, isRecommended: true,amount: "2.99",time: "month"),
              _priceCard(theme,amount: "35.88",time: "year"),
              SizedBox(height: 20.sp),
              SizedBox(
                  width: double.infinity,
                  child: PrimaryBtn(
                      onPressed: () {}, child: const Text("Subscribe Now"))),
              SizedBox(height: 25.sp),
              InkWell(
                onTap: () {},
                child: Text(
                  "Restore Purchase",
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.hintColor,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                    decorationColor: theme.hintColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _row(ThemeData theme, {required String text}) {
    return Row(
      children: [
        Image.asset("assets/images/tick.png"),
        SizedBox(width: 10.sp),
        Text(
          text,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ).marginOnly(bottom: 16);
  }

  Widget _appBar(ThemeData theme) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 32,
            height: 32,
          ),
          Text(
            "Go Premium",
            style: theme.textTheme.titleLarge
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 32,
            height: 32,
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _priceCard(ThemeData theme, {bool isRecommended = false,required String amount,required String time}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isRecommended ? theme.primaryColor : Colors.white,
                width: 3,
              )),
          child: Column(
            children: [
              Text.rich(TextSpan(
                  text: "\$$amount",
                  style:
                      theme.textTheme.titleLarge?.copyWith(color: Colors.white),
                  children: [
                    TextSpan(
                        text: "/$time",
                        style: theme.textTheme.labelSmall
                            ?.copyWith(color: Colors.white))
                  ])),
              SizedBox(height: 8.sp),
              Text(
                "Cancel anytime",
                style: theme.textTheme.labelMedium
                    ?.copyWith(color: theme.hintColor),
              )
            ],
          ),
        ),
        if (isRecommended)
          Positioned(
              top: -10,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 200,
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(26)),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/crown.png'),
                      SizedBox(width: 6.sp),
                      Text(
                        "Recommended",
                        style: theme.textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ))
      ],
    ).marginOnly(bottom: 16);
  }
}
