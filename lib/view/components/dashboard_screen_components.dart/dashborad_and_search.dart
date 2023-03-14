import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DashBoardAndSearchWidget extends StatelessWidget {
  const DashBoardAndSearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "dashboard".tr(),
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        TextField(
          cursorColor: Colors.white,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search_outlined),
            hintText: "search_anything".tr(),
          ),
        )
      ],
    );
  }
}
