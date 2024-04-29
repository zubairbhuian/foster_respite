import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/modules/auth/controllers/auth_controller.dart';
import 'package:foster_respite/app/modules/auth/widgets/account_setup.dart';
import 'package:foster_respite/app/modules/auth/widgets/add_address.dart';
import 'package:foster_respite/app/modules/auth/widgets/additional_information.dart';
import 'package:foster_respite/app/modules/auth/widgets/my_Indicator.dart';
import 'package:foster_respite/app/modules/auth/widgets/upload_documents.dart';
import 'package:get/get.dart';

class RegesterUserView extends GetView<AuthController> {
  const RegesterUserView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App bar
            _appbar(theme),
            SizedBox(height: 16.sp),
            // pages
            _pages(theme)
          ],
        ),
      ),
    );
  }
  
  
  //****** App bar ******
  Widget _appbar(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.sp),
          child: InkWell(
              onTap: () {
                controller.pageDecrement();
              },
              splashColor:theme.cardColor,
              borderRadius: BorderRadius.circular(800),
              child: Padding(
                padding: EdgeInsets.all(8.sp),
                child: const Icon(Icons.arrow_back_outlined),
              )),
        ),
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Obx(() => MyIndicator(
                count:controller.totalPage.value,
                activeIndex: controller.pageIndex.value,
              )),
        )
      ],
    );
  }
  
  //****** Pages ******
  Widget _pages(ThemeData theme) {
    return Expanded(
      child: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          AccountSetup(),
          AddAddress(),
          AdditionalInformation(),
          UploadDocuments()
        ],
      ),
    );
  }
}
