import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fly_app/constant/constant.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';

import 'package:lottie/lottie.dart';
import '../../bloc/bloc_translation_bloc.dart';
import '../../bloc/change_theme_bloc.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen(
      {super.key, required this.changeThemeState, required this.languageState});
  final ChangeTheme changeThemeState;
  final ChangeLanguageState languageState;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: ListView(
          children: [
            const ListTileItem(
              svgPathItem: "brand_plane",
              title: "Easy Flight",
              textStyle: TextStyle(fontWeight: FontWeight.bold),
              subtitle: "travel_company",
              height: 30,
              width: 30,
            ),
            50.0.height,
            const ListTileItem(svgPathItem: "dashboard", title: "dashboard"),
            const ListTileItem(svgPathItem: "takeoffplane", title: "deal"),
            const ListTileItem(svgPathItem: "people", title: "clients"),
            const ListTileItem(svgPathItem: "mysite", title: "my_site"),
            ListTileItem(
                svgPathItem: "message",
                title: "messages",
                trailing: Container(
                  alignment: Alignment.center,
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.red.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text(2.toString())),
                )),
            const ListTileItem(
              svgPathItem: "settings",
              title: "settings",
            ),
            Divider(color: Theme.of(context).dividerColor),
            ListTileItem(
              svgPathItem: "moon",
              title: "dark_mode",
              trailing: Switch(
                value: changeThemeState.themeModeControl,
                onChanged: (value) {
                  value
                      ? context.read<ChangeThemeBloc>().add(ThemeChangeEvent(
                          themeMode: ThemeMode.dark, themeControl: value))
                      : context.read<ChangeThemeBloc>().add(ThemeChangeEvent(
                          themeMode: ThemeMode.light, themeControl: value));
                },
              ),
            ),
            ListTileItem(
              svgPathItem: "translation",
              title: "translate",
              trailing: Switch(
                value: languageState.localeControl,
                onChanged: (value) {
                  if (value) {
                     Get.updateLocale(const Locale("tr", "TR"));
                    EasyLocalization.of(context)!
                        .setLocale(const Locale("tr", "TR"));
                    context
                        .read<BlocTranslationBloc>()
                        .add(ChangeLanguageEvent(localeControl: value));
                  } else {
                    Get.updateLocale(const Locale("en", "US"));
                    EasyLocalization.of(context)!
                        .setLocale(const Locale("en", "US"));
                    context
                        .read<BlocTranslationBloc>()
                        .add(ChangeLanguageEvent(localeControl: value));
                  }
                },
              ),
            ),
            const StackDrawer()
          ],
        ),
      ),
    );
  }
}

class StackDrawer extends StatelessWidget {
  const StackDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.passthrough,
      children: [
        Container(
          width: 300,
          height: 275,
          color: Colors.transparent,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: 250,
            height: 225,
            decoration: BoxDecoration(
              color: const Color(0xFF10062B),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: LottieBuilder.asset(
                    "${lottieBasePath}plane_travel.json",
                    height: 130,
                  ),
                ),
                Text(
                  "updating_your_plan".tr(),
                  style: const TextStyle(
                    color: Colors.white,
                    wordSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                30.0.height,
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    "upgrade_now".tr(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ListTileItem extends StatelessWidget {
  const ListTileItem(
      {super.key,
      required this.svgPathItem,
      required this.title,
      this.height = 20,
      this.width = 20,
      this.subtitle = "",
      this.textStyle = const TextStyle(),
      this.trailing = const SizedBox()});
  final String svgPathItem;
  final String title;
  final double height;
  final double width;
  final String subtitle;
  final TextStyle textStyle;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        "$svgBasePath$svgPathItem.svg",
        fit: BoxFit.contain,
        height: height,
        width: width,
        color: Theme.of(context).iconTheme.color,
      ),
      title: Text(title.tr()),
      subtitle: Text(subtitle.tr()),
      trailing: trailing,
    );
  }
}
