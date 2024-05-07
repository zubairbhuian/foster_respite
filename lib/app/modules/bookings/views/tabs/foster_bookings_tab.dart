import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FosterBookingsTab extends StatelessWidget {
  const FosterBookingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
   return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: List.generate(
            4,
            (index) => Container(
                  margin: const EdgeInsets.only(top: 16),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(12.r),
                              child: Image.asset(
                                  'assets/images/profile/demo_respite_3.png')),
                          SizedBox(width: 12.sp),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cameron Williamson",
                                style: theme.textTheme.labelMedium,
                              ),
                              SizedBox(height: 6.sp),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RatingBar.builder(
                                    initialRating: 3.5,
                                    minRating: 1,
                                    ignoreGestures: true,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 16,
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      size: 11,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {},
                                  ),
                                  SizedBox(width: 6.sp),
                                  Text(
                                    "5.0  | 58 Reviews",
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                              SizedBox(height: 6.sp),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: theme.primaryColor,
                                    size: 20.sp,
                                  ),
                                  SizedBox(width: 6.sp),
                                  Text(
                                    "New York, USA",
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 16.sp),
                      // price card
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Amount", style: theme.textTheme.bodySmall),
                              Text("\$200.00",
                                  style: theme.textTheme.labelMedium?.copyWith(
                                      color: const Color(0xff0FA127))),
                            ],
                          )),
                          // const SizedBox(width: 60),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Status", style: theme.textTheme.bodySmall),
                              Text("New",
                                  style: theme.textTheme.labelMedium?.copyWith(
                                      color: theme.primaryColorLight)),
                            ],
                          )),
                        ],
                      ),
                      SizedBox(height: 12.sp),
                      Container(
                        height: 75,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 12),
                        decoration: BoxDecoration(
                            color: theme.cardColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Price per child',
                                  style: theme.textTheme.bodySmall,
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  '\$200.00',
                                  style: theme.textTheme.labelMedium,
                                ),
                              ],
                            )),
                            VerticalDivider(
                              width: 60,
                              endIndent: 5,
                              indent: 5,
                              color: theme.primaryColor,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Price per day',
                                  style: theme.textTheme.bodySmall,
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  '\$200.00',
                                  style: theme.textTheme.labelMedium,
                                ),
                              ],
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
      ),
    );
  }
}
