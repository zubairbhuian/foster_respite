import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foster_respite/app/modules/home/views/book_now_view.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class ProviderDetailsScreenView extends GetView {
  const ProviderDetailsScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomSheet: _bottomSheet(theme),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _banner(theme),
            SizedBox(height: 16.sp),
            Text(
              "Cameron Williamson",
              style: theme.textTheme.titleLarge,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.builder(
                  initialRating: 3.5,
                  minRating: 1,
                  ignoreGestures: true,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 16,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 0),
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
              mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(height: 16.sp),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // price card
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
                 
                  // about
                  SizedBox(height: 24.sp),
                  Text(
                    "About",
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 12.sp),
                  Text(
                    "Hi there, I'm Cameron, your dedicated respite provider! With a heart full of compassion and a commitment to making a positive impact, I'm here to offer you and your loved ones the support and care you deserve",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 24.sp),

                  /// Cameron’s
                  Text(
                    "Cameron’s",
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 12.sp),
                  // row -1
                  Row(
                    children: [
                      Icon(
                        Icons.verified,
                        color: theme.primaryColorLight,
                      ),
                      SizedBox(width: 12.sp),
                      Expanded(
                          child: Text(
                        "Licensed and Certified",
                        style: theme.textTheme.labelLarge
                            ?.copyWith(color: theme.primaryColorLight),
                      ))
                    ],
                  ).marginOnly(bottom: 12),
                  // row -2
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/Background_Check.svg"),
                      SizedBox(width: 12.sp),
                      Expanded(
                          child: Text(
                        "Background Cleared",
                        style: theme.textTheme.labelLarge
                            ?.copyWith(color: theme.primaryColorLight),
                      ))
                    ],
                  ).marginOnly(bottom: 12),
                  // row -2
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/Fingerprinted.svg'),
                      SizedBox(width: 12.sp),
                      Expanded(
                          child: Text(
                        "Fingerprinted",
                        style: theme.textTheme.labelLarge
                            ?.copyWith(color: theme.primaryColorLight),
                      ))
                    ],
                  ).marginOnly(bottom: 24),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Reviews",
                        style: theme.textTheme.titleMedium,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            "View All",
                            style: theme.textTheme.labelMedium
                                ?.copyWith(color: theme.primaryColorLight),
                          ))
                    ],
                  ),
                  SizedBox(height: 24.sp),
                  // reviews -1
                  Container(
                    padding: const EdgeInsets.only(bottom: 16),
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: theme.hintColor))),
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
                  // reviews -2
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: theme.hintColor))),
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



                  SizedBox(height: 80.sp),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _banner(ThemeData theme) {
    return SizedBox(
      height: 220,
      child: Stack(
        children: [
          Container(
            height: 160,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/profile/banner_bg.png"))),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/images/profile/demo_respite.png")),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(width: 3, color: Colors.white)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                IconlyLight.arrow_left,
              ),
            ),
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
      child: Row(
        children: [
          Expanded(
              child: PrimaryBtn(
            onPressed: () {},
            backgroundColor: theme.primaryColorLight,
            child: const Text("Send Message"),
          )),
          SizedBox(width: 20.sp),
          Expanded(
              child: PrimaryBtn(
                  onPressed: () {
                    Get.to(() => const BookNowView());
                  },
                  child: const Text("Book Now"))),
        ],
      ),
    );
  }
}
