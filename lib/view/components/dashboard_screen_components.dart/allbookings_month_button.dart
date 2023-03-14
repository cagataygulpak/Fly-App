import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fly_app/constant/constant.dart';

class AllbookingsMonthButtonWidget extends StatelessWidget {
  const AllbookingsMonthButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "all_bookings".tr(),
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        SizedBox(
          height: 40,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.date_range_outlined),
            label: Row(
              children: [
                Text("month".tr()),
                10.0.width,
                const Icon(Icons.arrow_downward_outlined),
              ],
            ),
          ),
        )
      ],
    );
  }
}
