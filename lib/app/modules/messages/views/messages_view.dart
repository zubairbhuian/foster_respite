import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/modules/messages/views/single_chat_view.dart';
import 'package:foster_respite/app/widgets/custom_textfield.dart';

import 'package:get/get.dart';

import '../controllers/messages_controller.dart';

class MessagesView extends GetView<MessagesController> {
  const MessagesView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColorLight,
        foregroundColor: Colors.white,
        title: const Text('Messages'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // search
            SizedBox(height: 16.sp),
            _search(),
            // chat
            _chatCard(theme)
          ],
        ),
      ),
    );
  }

  Widget _search() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: CustomSearchTextField(),
    );
  }

  Widget _chatCard(ThemeData theme) {
    return Column(
      children: List.generate(2, (index) {
        return InkWell(
          onTap: () {
            Get.to(() => const SingleChatView());
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // profile
                Container(
                  width: 42.sp,
                  height: 42.sp,
                  margin: EdgeInsets.only(right: 16.sp),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image:
                              AssetImage("assets/images/auth/demo_user.png"))),
                ),
                //title
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "James Johnson",
                        style: theme.textTheme.titleSmall,
                      ),
                      Text(
                        "How are you today?😃",
                        style: theme.textTheme.labelMedium,
                      )
                    ],
                  ),
                ),
                //lading
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "2 min",
                      style: theme.textTheme.labelSmall
                          ?.copyWith(color: theme.hintColor),
                    ),
                    CircleAvatar(
                        radius: 10,
                        backgroundColor: theme.primaryColor,
                        child: Text(
                          "2",
                          style: theme.textTheme.labelMedium
                              ?.copyWith(color: Colors.white),
                        ))
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
