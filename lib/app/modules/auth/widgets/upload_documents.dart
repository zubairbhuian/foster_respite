import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/modules/auth/controllers/auth_controller.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';
import 'package:foster_respite/app/widgets/doted_border_btn.dart';
import 'package:foster_respite/config/gape.dart';
import 'package:get/get.dart';

class UploadDocuments extends GetView<AuthController> {
  const UploadDocuments({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Gaps.reguler),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upload Documents',
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 24.sp),
                  DotedBorderBtn(
                    lavel: "Active Licensed Foster/Adoptive Home Certification",
                    onTap: () {},
                    isActive: false,
                  ),
                  DotedBorderBtn(
                    lavel: "Current Respite Approved Training Certificate",
                    onTap: () {},
                    isActive: false,
                  ),
                  DotedBorderBtn(
                    lavel: "Current CPR Certification",
                    onTap: () {},
                    isActive: false,
                  ),
                  DotedBorderBtn(
                    lavel: "Current Medication Training Certificate",
                    onTap: () {},
                    isActive: false,
                  ),
                  DotedBorderBtn(
                    lavel: "Current Trauma Informed Training Certificate",
                    onTap: () {},
                    isActive: false,
                  ),
                  DotedBorderBtn(
                    lavel: "Current Sexual Abuse Training Certificate",
                    onTap: () {},
                    isActive: false,
                  ),
                  DotedBorderBtn(
                    lavel:
                        "Current 1 Year Background Check and Latest Fingerprint Clearance",
                    onTap: () {},
                    isActive: false,
                  ),
                   DotedBorderBtn(
                    lavel:
                        "Upload Photos of Your Home and Medication Lock Box",
                    onTap: () {},
                    isActive: false,
                  ),
                   DotedBorderBtn(
                    lavel:
                        "Upload Violations Within 6 months",
                    onTap: () {},
                    isActive: false,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: PrimaryBtn(
                onPressed: () {
                  controller.pageIncrement();
                },
                child: const Text(
                  "Continue",
                )),
          ),
          SizedBox(height: Gaps.medium),
        ],
      ),
    );
  }
}
