import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../constant/constant.dart';

class ActivityTimeline extends StatefulWidget {
  const ActivityTimeline({super.key});

  @override
  State<ActivityTimeline> createState() => _ActivityTimelineState();
}

class _ActivityTimelineState extends State<ActivityTimeline> {
  int currentIndex = 4;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
          days.length,
          (index) => TimeLineItem(
            title: "${days[index].tr()}\n\n${index + 14}",
            currentIndex: currentIndex,
            index: index,
            onChanged: (selectedIndex) => setState(() {
              currentIndex = selectedIndex;
            }),
          ),
        ),
      ],
    );
  }
}

class TimeLineItem extends StatelessWidget {
  const TimeLineItem({
    super.key,
    required this.title,
    required this.currentIndex,
    required this.index,
    required this.onChanged,
  });
  final String title;
  final int currentIndex;
  final int index;
  final void Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(index),
      child: AnimatedOpacity(
          opacity: (currentIndex + 3) == index || (currentIndex - 3) == index
              ? 0.4
              : 1,
          duration: const Duration(milliseconds: 350),
          child: Container(
            height: currentIndex == index ? 75 : null,
            width: currentIndex == index ? 45 : null,
            alignment: Alignment.center,
            decoration: currentIndex == index
                ? BoxDecoration(
                    color: Colors.green.shade200,
                    borderRadius: BorderRadius.circular(10),
                  )
                : null,
            child: Text(
              title,
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
