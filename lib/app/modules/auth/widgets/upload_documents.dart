import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/modules/auth/controllers/auth_controller.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';
import 'package:get/get.dart';

class UploadDocuments extends GetView<AuthController> {
  const UploadDocuments({super.key});

  @override
  Widget build(BuildContext context) {
       return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Column(children: [
        PrimaryBtn(onPressed: (){
          controller.pageIncrement();
        }, child: const Text("Change page"))
      ],),
    );
  }
}