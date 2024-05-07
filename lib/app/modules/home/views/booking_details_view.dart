import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/widgets/appbar.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';

import 'package:get/get.dart';

class BookingDetailsView extends GetView {
  const BookingDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: const CustomAppBar(),
        bottomSheet: _bottomSheet(theme),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Booking Details",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 24.sp),
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.asset(
                          'assets/images/profile/demo_respite.png')),
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
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 0),
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
              // divider
              Divider(
                thickness: 4,
                color: theme.hintColor.withOpacity(.1),
                height: 32,
              ),
              Text(
                "Booking Information",
                style: theme.textTheme.titleSmall,
              ),
              _row(theme, title: "Service Name", value: "Home Appliances"),
              _row(theme,
                  title: "Date & Time", value: "17 April, 2024 | 10 : 00 am"),
              _row(theme, title: "Kids Need Respite", value: "2"),
              _row(theme, title: "Ages", value: "24"),
              Text(
                "Bobst Library 70 Washington Square South, New York, NY 10012, United States",
                style: theme.textTheme.labelMedium,
              ),
              // divider
              Divider(
                thickness: 4,
                color: theme.hintColor.withOpacity(.1),
                height: 32,
              ),
              Text(
                "Payment Information",
                style: theme.textTheme.titleSmall,
              ),
              _row(theme, title: "Price", value: "\$200.00"),
              _row(theme, title: "Tax", value: "\$00.00"),
              _row(theme, title: "Total Amount", value: "\$200.00"),
            ],
          ),
        ));
  }

  Widget _row(ThemeData theme, {required String title, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
              child: Text(
            title,
            style: theme.textTheme.bodyMedium,
          )),
          Text(
            value,
            style:theme.textTheme.labelMedium,
          ),
        ],
      ),
    );
  }

  Widget _bottomSheet(ThemeData theme) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Expanded(
          child: PrimaryBtn(
              onPressed: () {
                Get.to(() => const BookingDetailsView());
              },
              child: const Text("Make  a Payment"))),
    );
  }
}
