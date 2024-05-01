import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/widgets/appbar.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';
import 'package:foster_respite/app/widgets/custom_textfield.dart';
import 'package:foster_respite/config/gape.dart';

import 'package:get/get.dart';

class MyAddressView extends GetView {
  const MyAddressView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return  Scaffold(
      appBar: const CustomAppBar(),
      body:  Padding(
      padding: EdgeInsets.symmetric(horizontal: Gaps.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address',
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 24.sp),
                const CustomTextField(
                  extraLabel: "Street Address",
                  hintText: 'Enter',
                ),
                const CustomTextField(
                  extraLabel: "Apt, Suite, etc...",
                  hintText: 'Enter',
                ),
                CustomDropdownTextField(
                    label: "Country",
                    data: const ["Demo"],
                    onChanged: (value) {}),
                CustomDropdownTextField(
                    label: "State",
                    data: const ["Demo"],
                    onChanged: (value) {}),
                Row(
                  children: [
                    Expanded(
                      child: CustomDropdownTextField(
                          label: "City",
                          data: const ["Demo"],
                          onChanged: (value) {}),
                    ),
                    SizedBox(width: 9.sp),
                    const Expanded(
                      child: CustomTextField(
                        extraLabel: "Zip Code",
                        hintText: 'Enter',
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
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
          SizedBox(
            height: Gaps.medium,
          ),
        ],
      ),
    ),
    );
  }
}
