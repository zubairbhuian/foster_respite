import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/modules/messages/controllers/messages_controller.dart';
import 'package:foster_respite/app/widgets/appbar.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';
import 'package:foster_respite/app/widgets/custom_textfield.dart';

import 'package:get/get.dart';

class SingleChatView extends GetView<MessagesController> {
  const SingleChatView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: _appbar(theme),
      bottomSheet: _bottomSheet(theme),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.sp),
            // date
            Center(
              child: Text(
                "4 February, 2024",
                style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.hintColor,
                    decoration: TextDecoration.underline,
                    decorationColor: theme.hintColor),
              ),
            ),
            SizedBox(height: 32.sp),
            // client chat
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    width: 42.sp,
                    height: 42.sp,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/auth/demo_user.png"))),
                  ),
                  SizedBox(width: 10.sp),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 30, bottom: 6),
                          padding: EdgeInsets.all(15.sp),
                          decoration: BoxDecoration(
                              color: theme.hintColor.withOpacity(.2),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              )),
                          child: Text(
                            "Hey There!",
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                        Text("09:37 AM",
                            style: theme.textTheme.bodySmall
                                ?.copyWith(color: theme.dividerColor))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16.sp),
            // user chat
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 30, bottom: 6),
                          padding: EdgeInsets.all(15.sp),
                          decoration: BoxDecoration(
                              color: theme.primaryColor,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              )),
                          child: Text(
                            "Hey i am here!",
                            style: theme.textTheme.labelMedium
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30, bottom: 6),
                          padding: EdgeInsets.all(15.sp),
                          decoration: BoxDecoration(
                              color: theme.primaryColor,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              )),
                          child: Text(
                            "Where are you?",
                            style: theme.textTheme.labelMedium
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                        Text("09:35 AM",
                            style: theme.textTheme.bodySmall
                                ?.copyWith(color: theme.dividerColor))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16.sp),
            // client chat
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    width: 42.sp,
                    height: 42.sp,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/auth/demo_user.png"))),
                  ),
                  SizedBox(width: 10.sp),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 30, bottom: 6),
                          padding: EdgeInsets.all(15.sp),
                          decoration: BoxDecoration(
                              color: theme.hintColor.withOpacity(.2),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              )),
                          child: Text(
                            "Tech stocks are volatile though.",
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                        Text("09:37 AM",
                            style: theme.textTheme.bodySmall
                                ?.copyWith(color: theme.dividerColor))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16.sp),
            // user chat
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 30, bottom: 6),
                          padding: EdgeInsets.all(15.sp),
                          decoration: BoxDecoration(
                              color: theme.primaryColor,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              )),
                          child: Text(
                            "Absolutely! Let's do it.",
                            style: theme.textTheme.labelMedium
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                        Text("09:35 AM",
                            style: theme.textTheme.bodySmall
                                ?.copyWith(color: theme.dividerColor))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ***** Appbar *******
  PreferredSizeWidget _appbar(ThemeData theme) {
    return CustomAppBar(
      title: Row(
        children: [
          // profile
          Container(
            width: 42.sp,
            height: 42.sp,
            margin: EdgeInsets.only(right: 16.sp),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/auth/demo_user.png"))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mac Jonathan',
                style: theme.textTheme.labelLarge,
              ),
              Text(
                'Typing...',
                style: theme.textTheme.labelMedium
                    ?.copyWith(color: theme.hintColor),
              ),
            ],
          )
          // title
        ],
      ),
    );
  }

  Widget _bottomSheet(ThemeData theme) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
              child: CustomSearchTextField(
            hintText: 'Type...',
            prefixIcon: null,
            borderRadius: 28,
          )),
          SizedBox(width: 16.sp),
          SizedBox(
            width: 52,
            height: 52,
            child: PrimaryBtn(
              onPressed: () {},
              padding: EdgeInsets.zero,
              borderRadius: 800,
              child: const Icon(Icons.send),
            ),
          )
          // CircleAvatar(
          //   radius: 33,
          // )

          // Container(
          //   width: 33,
          //   height: 33,
          //   color: Colors.red,
          // )
        ],
      ),
    );
  }
}
