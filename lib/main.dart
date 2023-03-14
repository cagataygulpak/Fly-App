import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'bloc/bloc_translation_bloc.dart';
import 'bloc/change_theme_bloc.dart';
import 'constant/constant.dart';
import 'view/main_screen.dart';
import 'package:easy_localization/easy_localization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale("en", "US"),
        Locale("tr", "TR"),
      ],
      path: "assets/translation",
      fallbackLocale: const Locale("en", "US"),
      startLocale: const Locale("en", "US"),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ChangeThemeBloc()),
        BlocProvider(create: (context) => BlocTranslationBloc()),
      ],
      child: BlocBuilder<ChangeThemeBloc, ChangeThemeState>(
        builder: (context, state) {
          if (state is ChangeTheme) {
            ChangeTheme statetheme = state;
            return BlocBuilder<BlocTranslationBloc, BlocTranslationState>(
              builder: (context, state) {
                return state is ChangeLanguageState
                    ? GetMaterialApp(
                        debugShowCheckedModeBanner: false,
                        title: 'title'.tr(),
                        themeMode: statetheme.themeMode,
                        theme: themeLight,
                        darkTheme: themeDark,
                        localizationsDelegates: context.localizationDelegates,
                        supportedLocales: context.supportedLocales,
                        locale: context.locale,
                        home: MainScreen(
                          changeThemeState: statetheme,
                          languageState: state,
                        ),
                      )
                    : const Center(child: CircularProgressIndicator());
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
