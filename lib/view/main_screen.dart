import 'package:flutter/material.dart';
import 'package:fly_app/view/components/activity_screen.dart';
import 'package:fly_app/view/components/drawer_screen.dart';

import '../bloc/bloc_translation_bloc.dart';
import '../bloc/change_theme_bloc.dart';
import 'components/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen(
      {super.key, required this.changeThemeState, required this.languageState});
  final ChangeTheme changeThemeState;
  final ChangeLanguageState languageState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1.75.toInt(),
            child: DrawerScreen(
              changeThemeState: changeThemeState,
              languageState: languageState,
            ),
          ),
          const VerticalDivider(),
          Expanded(
            flex: 3.25.toInt(),
            child: const DashBoardScreen(),
          ),
          Expanded(
            flex: 1.75.toInt(),
            child: const ActivityScreen(),
          ),
        ],
      ),
    );
  }
}
