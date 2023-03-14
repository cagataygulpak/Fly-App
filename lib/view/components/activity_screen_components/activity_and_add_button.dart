import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fly_app/constant/constant.dart';

class ActivityAndAddButton extends StatelessWidget {
  const ActivityAndAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
             Text(
              "activity".tr(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            5.0.height,
             Text(
              "${"month_december".tr()} 30, 2022",
              style:const TextStyle(fontSize: 12),
            ),
          ],
        ),
        const Spacer(),
        10.0.width,
        Container(
          height: 45,
          width: 125,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green.shade200,
          ),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.add_outlined,
                  color: Colors.white,
                ),
                10.0.width,
                 Text(
                  "add_plan".tr(),
                  style:const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
