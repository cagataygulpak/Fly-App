import 'package:flutter/material.dart';
import 'package:fly_app/constant/constant.dart';

import 'dashboard_screen_components.dart/add_new_widget.dart';
import 'dashboard_screen_components.dart/allbookings_month_button.dart';
import 'dashboard_screen_components.dart/bottom_information.dart';
import 'dashboard_screen_components.dart/buttons.dart';
import 'dashboard_screen_components.dart/chart_and_cards.dart';
import 'dashboard_screen_components.dart/dashborad_and_search.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        
        children: [
          const DashBoardAndSearchWidget(),
          const AddNewWidget(),
         const  ChartAndCardsWidget(),
          10.0.height,
          const AllbookingsMonthButtonWidget(),
           10.0.height,
          const Buttons(),
           10.0.height,
          const BottomInformation(),
        ],
      ),
    );
  }
}
