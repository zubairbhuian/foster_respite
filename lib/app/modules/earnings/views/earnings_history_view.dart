import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/widgets/appbar.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class EarningsHistoryView extends GetView {
  const EarningsHistoryView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        // padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
          children: List.generate(4, (index) =>  InkWell(
              onTap: () {},
              child: Padding(
                padding:  EdgeInsets.only(bottom: 0,left: 20.sp,right: 20.sp,top: 20.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          "Earnings History",
                          style: theme.textTheme.labelLarge
                              ?.copyWith(fontWeight: FontWeight.w600),
                        )),
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
                    SizedBox(height: 3.sp),
                    const Text("20 February,2024"),
                    SizedBox(height: 20.sp),
                    Divider(
                    height: 0,
                      color: theme.dividerColor.withOpacity(.1),
                    ),
                  ],
                ),
              ),
            ),),
        ),
      ),
    );
  }
}
