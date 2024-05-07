import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/modules/home/views/booking_details_view.dart';
import 'package:foster_respite/app/widgets/appbar.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class BookNowView extends GetView {
  const BookNowView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: const CustomAppBar(),
        bottomSheet: _bottomSheet(theme),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Book Now",
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              Text(
                "Select Date",
                style: theme.textTheme.labelMedium,
              ),
              TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                // calendarFormat: CalendarFormat.week,
                // availableCalendarFormats: const {CalendarFormat.week: 'Week'},
                daysOfWeekStyle: const DaysOfWeekStyle(
                    // weekdayStyle: TextStyle(color: kDisabledColor),
                    // weekendStyle: TextStyle(color: kDisabledColor),
                    ),
                calendarStyle: CalendarStyle(
                  todayDecoration: const BoxDecoration(
                      color: Color(0xffD6EDFF), shape: BoxShape.circle),
                  todayTextStyle: TextStyle(
                      color: theme.primaryColorDark,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Select Date",
                style: theme.textTheme.labelMedium,
              ),
              const SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      10,
                      (index) => PrimaryBtn(
                            backgroundColor: Colors.transparent,
                            onPressed: () {},
                            side: BorderSide(
                              color: theme.primaryColorLight,
                              width: 1,
                            ),
                            borderRadius: 22,
                            foregroundColor: theme.primaryColorDark,
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 14),
                            child: const Text("10:00 am"),
                          ).marginOnly(right: 8)),
                ),
              )
            ],
          ),
        ));
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
              child: const Text("Continue"))),
    );
  }
}
