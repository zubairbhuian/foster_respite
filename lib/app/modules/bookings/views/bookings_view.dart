import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/modules/bookings/views/foster_bookings_view.dart';
import 'package:foster_respite/app/modules/bookings/views/respit_provider_bookings_view.dart';

import 'package:get/get.dart';

import '../controllers/bookings_controller.dart';

class BookingsView extends GetView<BookingsController> {
  const BookingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [FosterBookingsView(), RespitProviderBookingsView()],
    );
  }
}
