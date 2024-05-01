import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/widgets/appbar.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';
import 'package:foster_respite/app/widgets/custom_textfield.dart';
import 'package:foster_respite/config/gape.dart';

import 'package:get/get.dart';

class MyAdditionalInformationView extends GetView {
  const MyAdditionalInformationView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Additional Information',
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 24.sp),
                  const CustomTextField(
                    extraLabel: "How many bedrooms and baths:",
                    hintText: 'Enter',
                  ),
                  CustomDropdownTextField(
                    label: "How many years being a respite provider:",
                    data: const [
                      "1-6 Months",
                      "6 months - 1 Year",
                      "1 - 3 Years",
                      "3 Years - 6 Years",
                      "6 Years+"
                    ],
                    onChanged: (value) {},
                  ),
                  const CustomTextField(
                    extraLabel: "How many kids can respite:",
                    hintText: 'Enter',
                  ),
                  const CustomTextField(
                    extraLabel: "Ages able to provide respite:",
                    hintText: 'Enter',
                  ),
                  CustomDropdownTextField(
                    label: "Level of care able to respite:",
                    data: const [
                      "1-6 Months",
                      "6 months - 1 Year",
                      "1 - 3 Years",
                      "3 Years - 6 Years",
                      "6 Years+"
                    ],
                    onChanged: (value) {},
                  ),
                ],
              ),
            )),
            SizedBox(height: 150.sp),
            SizedBox(
              width: double.infinity,
              child: PrimaryBtn(
                  onPressed: () {
                    controller.pageIncrement();
                  },
                  child: const Text(
                    "Update",
                  )),
            ),
            SizedBox(height: Gaps.medium),
          ],
        ),
      ),
    );
  }
}