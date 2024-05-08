import 'package:flutter/material.dart';

class MyIndicator extends StatelessWidget {
  final int count;
  final int activeIndex;
  const MyIndicator({
    super.key,
    required this.count,
    required this.activeIndex
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      children: List.generate(
          count,
          (index) => Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: index + 1 == count ? 0 : 8),
                  height: 6,
                  decoration: BoxDecoration(
                      color: activeIndex == index
                          ? theme.primaryColorLight
                          : theme.hintColor,
                      borderRadius: BorderRadius.circular(23)),
                ),
              )),
    );
  }
}
