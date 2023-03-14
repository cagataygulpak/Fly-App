import 'package:flutter/material.dart';

const String svgBasePath = "assets/images/";
const String lottieBasePath = "assets/lottie/";

ThemeData themeLight = ThemeData.light().copyWith(
  listTileTheme: const ListTileThemeData().copyWith(textColor: Colors.black),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: Colors.black,
    hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
    filled: true,
    fillColor: Colors.grey.shade500,
    isDense: true,
    constraints: const BoxConstraints.expand(height: 40, width: 200),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
  ),
);

ThemeData themeDark = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color(0xFF232931),
  switchTheme: const SwitchThemeData().copyWith(
    thumbColor: MaterialStateProperty.resolveWith((states) {
      return Colors.yellow;
    }),
  ),
  drawerTheme: const DrawerThemeData()
      .copyWith(backgroundColor: const Color(0xFF232931)),
  dividerTheme: const DividerThemeData(color: Colors.white),
  listTileTheme: const ListTileThemeData().copyWith(textColor: Colors.white),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: Colors.white,
    hintStyle: const TextStyle(fontSize: 14, color: Colors.white),
    filled: true,
    fillColor: Colors.black,
    isDense: true,
    constraints: const BoxConstraints.expand(height: 40, width: 200),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
  ),
);

extension Width on double {
  Widget get width => SizedBox(width: this);
}

extension Height on double {
  Widget get height => SizedBox(height: this);
}

List<String> days = [
  "monday",
  "tuesday",
  "wednesday",
  "thursday",
  "friday",
  "saturday",
  "sunday",
];

List<ChartData> chartData = <ChartData>[
  ChartData(x: 0, y: 10),
  ChartData(x: 30, y: 15),
  ChartData(x: 100, y: 20),
  ChartData(x: 125, y: 25),
];

class ChartData {
  ChartData({required this.x, required this.y});
  final double x;
  final int y;
}
