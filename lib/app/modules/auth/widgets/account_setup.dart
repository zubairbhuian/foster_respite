import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foster_respite/app/modules/auth/controllers/auth_controller.dart';
import 'package:foster_respite/app/utils/logger.dart';
import 'package:foster_respite/app/widgets/custom_btn.dart';
import 'package:foster_respite/app/widgets/custom_textfield.dart';
import 'package:foster_respite/config/gape.dart';
import 'package:get/get.dart';

class AccountSetup extends GetView<AuthController> {
  const AccountSetup({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Account Setup',
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 24.sp),
                  _profile(theme),
                  SizedBox(height: 32.sp),
                  const CustomTextField(
                    extraLabel: "First Name",
                    hintText: 'Enter First Name',
                  ),
                  const CustomTextField(
                    extraLabel: "Last Name",
                    hintText: 'Enter Last Name',
                  ),
                  CustomTextField(
                    extraLabel: "Mobile Number",
                    hintText: 'Enter Mobile Number',
                    prefixIcon: SizedBox(
                      // color: Colors.red,
                      width: 100,
                      height: 54,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: () {
                                  showCountryPicker(
                                    context: context,
                                    showPhoneCode: true,
                                    onSelect: (Country country) {
                                      controller.onSelectCountry(country);
                                    },
                                  );
                                },
                                child: Obx(
                                  () => Text(
                                    controller.countryFlagAndNumberCode.value,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                )),
                            VerticalDivider(
                              color: theme.dividerColor,
                              width: 1,
                              indent: 16,
                              endIndent: 16,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: PrimaryBtn(
                onPressed: () {
                  controller.pageIncrement();
                },
                child: const Text(
                  "Continue",
                )),
          ),
          SizedBox(height: Gaps.medium),
        ],
      ),
    );
  }

  Widget _profile(ThemeData theme) {
    return Center(
        child: InkWell(
      onTap: () {},
      splashFactory: NoSplash.splashFactory,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(800),
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Container(
              width: 108,
              height: 108,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/auth/demo_user.png"))),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    color: theme.primaryColorDark,
                    child: const Center(
                      child: Text(
                        "Add",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    )))
          ],
        ),
      ),
    ));
  }
}
