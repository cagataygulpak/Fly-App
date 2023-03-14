import 'package:flutter/material.dart';
import 'package:fly_app/constant/constant.dart';
import 'activity_screen_components/activity_and_add_button.dart';
import 'activity_screen_components/activity_bottom_screen.dart';
import 'activity_screen_components/activity_timeline.dart';
import 'activity_screen_components/activity_top_screen.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ActivityTopScreen(),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                const ActivityAndAddButton(),
                45.0.height,
                const ActivityTimeline(),
                30.0.height,
                const ActivityBottomScreen(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

