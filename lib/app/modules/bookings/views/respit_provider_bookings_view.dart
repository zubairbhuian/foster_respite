import 'package:flutter/material.dart';
import 'package:foster_respite/app/modules/bookings/controllers/bookings_controller.dart';
import 'package:foster_respite/app/modules/bookings/views/tabs/respit_provider_bookings_tab.dart';

import 'package:get/get.dart';

class RespitProviderBookingsView extends GetView<BookingsController> {
  const RespitProviderBookingsView({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            // app bar
            Container(
              width: double.infinity,
              color: theme.primaryColorLight,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "My Bookings",
                        style: theme.textTheme.titleLarge
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    TabBar(
                        controller: controller.respitProviderTabController,
                        // isScrollable: true,
                        indicatorColor: theme.primaryColor,
                        dividerHeight: 0,
                        labelColor: Colors.white,
                        labelStyle: theme.textTheme.labelMedium,
                        unselectedLabelColor: Colors.white.withOpacity(.3),
                        tabs: const [
                          Tab(
                            child: Text("New"),
                          ),
                          Tab(
                            child: Text("In Progress"),
                          ),
                          Tab(
                            child: Text("Completed"),
                          ),
                        ]),
                  ],
                ),
              ),
            ),
            // tab view
            Expanded(
              child: TabBarView(
                controller: controller.respitProviderTabController,
                children: const [
                  RespitProviderBookingsTab(
                    tabIndex:
                        0,
                  ),
                  RespitProviderBookingsTab(
                    tabIndex:1,
                  ),
                  RespitProviderBookingsTab(
                    tabIndex:2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
