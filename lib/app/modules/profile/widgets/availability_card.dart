import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

class AvailabilityCard extends StatelessWidget {
  final String day;
  final String time;
  final void Function()? onTap;
  final bool value;
  final void Function(bool)? onChanged;
  const AvailabilityCard(
      {super.key, this.onTap, required this.value, this.onChanged, required this.day, required this.time});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      splashFactory: NoSplash.splashFactory,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: theme.cardColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  child: Switch(
                    activeTrackColor: theme.primaryColor,
                      splashRadius: 0, value: value, onChanged: onChanged),
                ),
                SizedBox(width: 12.sp),
                Text(
                  day,
                  style: theme.textTheme.labelMedium,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  time,
                  style: theme.textTheme.labelSmall,
                ),
                SizedBox(width: 5.sp),
                const Icon(IconlyLight.arrow_right_2)
              ],
            )
          ],
        ),
      ),
    );
  }
}
