import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/widgets/appbar.dart';

import 'package:get/get.dart';

class PrivacyPolicyView extends GetView {
  const PrivacyPolicyView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              'Privacy Policy Acceptance of these Terms Of Use.',
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 14.sp),
            _row(theme,
                index: "1",
                text:
                    "Lorem ipsum dolor sit amet consectetur adipiscing elit, volutpat rutrum at pellentesque cras aptent id natoque, litora nisi enim curae dui massa. Malesuada cum odio sem netus ultricies tellus nec sapien ultrices, eu feugiat habitant mi semper hendrerit donec dictumst, parturient vestibulum proin lobortis eros vitae nulla sociosqu. Donec cursus habitant netus duis varius porttitor fusce, gravida dapibus suspendisse vel pretium aptent purus, nascetur hendrerit litora egestas velit augue."),
            _row(theme,
                index: "2",
                text:
                    "Lorem ipsum dolor sit amet consectetur adipiscing elit, volutpat rutrum at pellentesque cras aptent id natoque, litora nisi enim curae dui massa. Malesuada cum odio sem netus ultricies tellus nec sapien ultrices, eu feugiat habitant mi semper hendrerit donec dictumst, parturient vestibulum proin lobortis eros vitae nulla sociosqu. Donec cursus habitant netus duis varius porttitor fusce, gravida dapibus suspendisse vel pretium aptent purus, nascetur hendrerit litora egestas velit augue."),
            _row(theme,
                index: "3",
                text:
                    "Please read the Of Services positioned to offer bespoke services at competitive prices."),
            _row(theme,
                index: "4",
                text:
                    "These Terms Of Services positioned to offer bespoke services at competitive prices without sacrificing. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare"),
            _row(theme,
                index: "5",
                text:
                    "These Terms Of Services positioned to offer bespoke services at competitive prices without sacrificing. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare")
          ],
        ),
      ),
    );
  }

  Widget _row(
    ThemeData theme, {
    required String index,
    required String text,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$index.',
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(width: 8.sp),
        Expanded(
          child: Text(
            text,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    ).marginOnly(bottom: 16);
  }
}
