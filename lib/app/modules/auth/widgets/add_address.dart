import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/modules/auth/controllers/auth_controller.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';
import 'package:foster_respite/config/gape.dart';
import 'package:get/get.dart';

class AddAddress extends GetView<AuthController> {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
     return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: Gaps.medium),
      child: Column(children: [
        PrimaryBtn(onPressed: (){
          controller.pageIncrement();
        }, child: Text("Change page"))
      ],),
    );
  }
}