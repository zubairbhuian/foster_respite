import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/modules/home/views/provider_details_screen_view.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';
import 'package:foster_respite/app/widgets/custom_textfield.dart';
import 'package:foster_respite/config/gape.dart';

import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _banner(theme),
            _respiteProviders(theme),
            SizedBox(height: 20.sp),
            _popularRespiteProviders(theme)
          ],
        ),
      ),
    );
  }

  Widget _banner(ThemeData theme) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage("assets/images/auth/login_banner.png"))),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              top: Gaps.reguler,
              left: Gaps.medium,
              bottom: Gaps.xlarge,
              right: Gaps.xxlarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.sp),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Welcome Monika",
                      style: theme.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                  const Badge(
                    child: Icon(Icons.notifications_none_sharp,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 8.sp),
              Text(
                "How can we help with?",
                style:
                    theme.textTheme.bodyMedium?.copyWith(color: Colors.white),
              ),
              SizedBox(height: 20.sp),
              Row(
                children: [
                  const Expanded(
                      child: CustomSearchTextField(
                    fillColor: Colors.white,
                    borderRadius: 22,
                  )),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: PrimaryBtn(
                      onPressed: () {},
                      borderRadius: 800,
                      padding: EdgeInsets.zero,
                      child: const Icon(IconlyLight.filter),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _respiteProviders(ThemeData theme) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                  onTap: () {},
                  child: Text(
                    "View All",
                    style: theme.textTheme.labelMedium
                        ?.copyWith(color: theme.primaryColorLight),
                  ))
            ],
          ),
          // slyder area
        ),
        CarouselSlider(
            items: List.generate(
                10,
                (index) => Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          color: theme.cardColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(12.r),
                              child: Image.asset(
                                  'assets/images/profile/demo_respite_2.png')),
                          SizedBox(width: 12.sp),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Cameron Williamson",
                                  style: theme.textTheme.labelMedium,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 6.sp),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 0,
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
                                      "N/A",
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
                            ),
                          )
                        ],
                      ),
                    )),
            options: CarouselOptions(
              height: 110,
              aspectRatio: 16 / 9,
              viewportFraction: 0.7,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.2,
              onPageChanged: (int, CarouselPageChangedReason) {},
              scrollDirection: Axis.horizontal,
            ))
      ],
    );
  }

  Widget _popularRespiteProviders(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Respite Providers",
                style: theme.textTheme.titleSmall,
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
          SizedBox(height: 22.sp),
          // card
          ...List.generate(
              4,
              (index) => Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: theme.cardColor,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                      children: [
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
                       
                        Divider(
                          height: 40,
                          thickness: .8,
                          color: theme.dividerColor.withOpacity(.2),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Price per child",
                                  style: theme.textTheme.labelSmall,
                                ),
                                Text(
                                  "\$200.00",
                                  style: theme.textTheme.labelSmall?.copyWith(
                                      color: const Color(0xff0A9B22)),
                                ),
                              ],
                            )),
                            PrimaryBtn(
                                onPressed: () {
                                  Get.to(() => const ProviderDetailsScreenView());
                                },
                                child: const Text("Book Now"))
                          ],
                        )
                      ],
                    ),
                  ))
        ],
      ),
    );
  }
}
