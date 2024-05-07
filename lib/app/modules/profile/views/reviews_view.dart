import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/widgets/appbar.dart';

import 'package:get/get.dart';

class ReviewsView extends GetView {
  const ReviewsView({super.key});
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
              "My Reviews",
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 20.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/profile/left.png'),
                Text(
                  "4.9",
                  style: theme.textTheme.displayLarge,
                ),
                Image.asset('assets/images/profile/right.png'),
              ],
            ),
            const Center(child: Text("Overall Rating")),
            Container(
             margin: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 6,top: 20,bottom: 20),
                    margin: const EdgeInsets.only(right: 6),
                    decoration: BoxDecoration(
                        border:
                            Border(right: BorderSide(color: theme.hintColor))),
                    child: Column(
                      children: [
                        Text(
                          "58",
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          "Total Reviews",
                          style: theme.textTheme.labelSmall
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            ignoreGestures: true,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 16,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              size: 11,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                          SizedBox(width: 10.sp),
                          Expanded(
                            child: LinearProgressIndicator(
                              value: .8,
                              color: const Color(0xffFFC120),
                              backgroundColor: theme.hintColor,
                              semanticsLabel: 'Linear progress indicator',
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            ignoreGestures: true,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 16,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              size: 11,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                          SizedBox(width: 10.sp),
                          Expanded(
                            child: LinearProgressIndicator(
                              value: .6,
                              color: const Color(0xffFFC120),
                              backgroundColor: theme.hintColor,
                              semanticsLabel: 'Linear progress indicator',
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            ignoreGestures: true,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 16,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              size: 11,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                          SizedBox(width: 10.sp),
                          Expanded(
                            child: LinearProgressIndicator(
                              value: .3,
                              color: const Color(0xffFFC120),
                              backgroundColor: theme.hintColor,
                              semanticsLabel: 'Linear progress indicator',
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 2,
                            minRating: 1,
                            ignoreGestures: true,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 16,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              size: 11,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                          SizedBox(width: 10.sp),
                          Expanded(
                            child: LinearProgressIndicator(
                              value: .2,
                              color: const Color(0xffFFC120),
                              backgroundColor: theme.hintColor,
                              semanticsLabel: 'Linear progress indicator',
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 1,
                            minRating: 1,
                            ignoreGestures: true,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 16,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              size: 11,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                          SizedBox(width: 10.sp),
                          Expanded(
                            child: LinearProgressIndicator(
                              value: .1,
                              color: const Color(0xffFFC120),
                              backgroundColor: theme.hintColor,
                              semanticsLabel: 'Linear progress indicator',
                            ),
                          )
                        ],
                      )
                    ],
                  ))
                ],
              ),
            ),
            // review 1
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: theme.hintColor))),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(800.r),
                          child: Image.asset(
                              width: 40,
                              height: 40,
                              'assets/images/profile/demo_respite.png')),
                      SizedBox(width: 12.sp),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Leslie Alexander",
                              style: theme.textTheme.labelMedium,
                            ),
                            SizedBox(height: 6.sp),
                            Text(
                              "15 February, 2024 12:47PM",
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 18,
                            color: Color(0xffFFC107),
                          ),
                          const SizedBox(width: 3),
                          Text(
                            "5.0",
                            style: theme.textTheme.labelLarge,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 16.sp),
                  Text(
                    "Cameron has been an absolute blessing for our family. As a respite provider, she embodies the true essence of compassion and care. From the moment we met her, it was evident that she genuinely cares about the well-being of her clients.",
                    style: theme.textTheme.labelMedium,
                  )
                ],
              ),
            ),
            // review 2
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: theme.hintColor))),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(800.r),
                          child: Image.asset(
                              width: 40,
                              height: 40,
                              'assets/images/profile/demo_respite.png')),
                      SizedBox(width: 12.sp),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Leslie Alexander",
                              style: theme.textTheme.labelMedium,
                            ),
                            SizedBox(height: 6.sp),
                            Text(
                              "15 February, 2024 12:47PM",
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 18,
                            color: Color(0xffFFC107),
                          ),
                          const SizedBox(width: 3),
                          Text(
                            "5.0",
                            style: theme.textTheme.labelLarge,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 16.sp),
                  Text(
                    "Cameron has been an absolute blessing for our family. As a respite provider, she embodies the true essence of compassion and care. From the moment we met her, it was evident that she genuinely cares about the well-being of her clients.",
                    style: theme.textTheme.labelMedium,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
