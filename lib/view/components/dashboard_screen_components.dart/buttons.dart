import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fly_app/constant/constant.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ...List.generate(
          buttonName.length,
          (index) => Row(
            children: [
              ButonForButtons(
                title: buttonName[index],
              ),
              10.0.width,
            ],
          ),
        ),
      ],
    );
  }
}

class ButonForButtons extends StatelessWidget {
  const ButonForButtons({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.shade100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
        foregroundColor: Colors.green,
        padding: const EdgeInsets.symmetric(horizontal: 10),
      ),
      child: Row(
        children: [
          Text(
            title.tr(),
            style: const TextStyle(color: Colors.black),
          ),
          5.0.width,
          const Icon(
            Icons.arrow_downward_outlined,
            color: Colors.black,
            size: 16,
          ),
        ],
      ),
    );
  }
}

List<String> buttonName = <String>[
  "departure_date",
  "booking_type",
  "date_range",
];
