import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AddNewWidget extends StatelessWidget {
  const AddNewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue.shade100,
        child: const Icon(
          Icons.add_outlined,
          color: Colors.blue,
        ),
      ),
      title: Text(
        "add_new_widgets".tr(),
        style: const TextStyle(
          color: Colors.blue,
        ),
      ),
    );
  }
}
