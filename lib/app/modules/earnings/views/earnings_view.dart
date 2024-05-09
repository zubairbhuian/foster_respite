import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/modules/earnings/views/earnings_history_view.dart';
import 'package:foster_respite/app/modules/earnings/views/withdrawal_history_view.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../controllers/earnings_controller.dart';

class EarningsView extends GetView<EarningsController> {
  const EarningsView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _banner(theme),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _analytics(theme),
                    _revenues(theme),
                    SizedBox(height: 20.sp),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget _banner(ThemeData theme) {
    return SizedBox(
      height: 320,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 80, horizontal: 20.sp),
            width: double.infinity,
            color: theme.primaryColorLight,
            child: Text(
              "Earnings",
              style: theme.textTheme.titleLarge?.copyWith(
                color: Colors.white,
                fontSize: 24.sp
                ),
            ),
          ),
          Positioned(
              left: 20,
              right: 20,
              bottom: 20,
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                decoration: BoxDecoration(
                    color: theme.primaryColor,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Column(
                  children: [
                    Text(
                      "\$240.00",
                      style: theme.textTheme.headlineSmall
                          ?.copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 8.sp),
                    Text(
                      "Available For Withdrawal",
                      style: theme.textTheme.bodyLarge
                          ?.copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 8.sp),
                    SizedBox(
                      width: 250.w,
                      child: PrimaryBtn(
                        onPressed: () {},
                        backgroundColor: Colors.white,
                        foregroundColor: theme.primaryColorDark,
                        child: const Text("Withdraw Money"),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget _analytics(ThemeData theme) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 20.sp),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Analytics",
            style: theme.textTheme.titleLarge,
          ),
          _row(theme, title: "Earnings this month", amount: "\$380.00"),
          _row(theme, title: "Available for withdrawal", amount: "\$380.00"),
          _row(theme, title: "Active orders", amount: "38"),
          _row(theme, title: "Complete orders", amount: "250"),
        ],
      ),
    );
  }

  Widget _revenues(ThemeData theme) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 20.sp),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Analytics",
            style: theme.textTheme.titleLarge,
          ),
          InkWell(
            onTap: () {
               Get.to(() => const EarningsHistoryView());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  const Expanded(child: Text("Earnings History")),
                  Row(
                    children: [
                      Text(
                        "\$3080.00",
                        style: theme.textTheme.labelLarge
                            ?.copyWith(color: const Color(0xff0FA127)),
                      ),
                      SizedBox(width: 8.sp),
                      const Icon(
                        IconlyLight.arrow_right_2,
                        size: 18,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => const WithdrawalHistoryView());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  const Expanded(child: Text("Withdrawal History")),
                  Row(
                    children: [
                      Text(
                        "\$3080.00",
                        style: theme.textTheme.labelLarge
                            ?.copyWith(color: const Color(0xff0FA127)),
                      ),
                      SizedBox(width: 8.sp),
                      const Icon(
                        IconlyLight.arrow_right_2,
                        size: 18,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _row(ThemeData theme,
      {required String title, required String amount}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(child: Text(title)),
          Text(
            amount,
            style: theme.textTheme.labelLarge
                ?.copyWith(color: const Color(0xff0FA127)),
          )
        ],
      ),
    );
  }
}
