import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsetsDirectional.symmetric(
              horizontal: 20, vertical: 30),
          child: Column(
            children: [
            
            ],
          )),
    );
  }
}
