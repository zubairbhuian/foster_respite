import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/widgets/appbar.dart';

import 'package:get/get.dart';

class TermsAndConditionsView extends GetView {
  const TermsAndConditionsView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Terms & conditions',
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 16.sp),
            Text(
              'These Terms Of Services positioned to offer bespoke services at competitive prices without sacrificing. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare',
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 16.sp),
            Text(
              'Please read the Of Services positioned to offer bespoke services at competitive prices.',
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 16.sp),
            Text(
              'Applicability & Acceptance of these Terms Of Use.',
              style: theme.textTheme.titleSmall,
            ),
            Text(
              'These Terms Of Services positioned to offer bespoke services at competitive prices without sacrificing. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare',
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 16.sp),
            Text(
              'Please read the Of Services positioned to offer bespoke services at competitive prices.',
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 16.sp),
            Text(
              'These Terms Of Services positioned to offer bespoke services at competitive prices without sacrificing. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare',
              style: theme.textTheme.bodyMedium,
            )
          ],
        ),
      ),
    );
  }
}
