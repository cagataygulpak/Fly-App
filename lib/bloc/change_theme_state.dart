part of 'change_theme_bloc.dart';

@immutable
abstract class ChangeThemeState {}

class ChangeTheme extends ChangeThemeState {
  final ThemeMode themeMode;
  final bool themeModeControl;
  ChangeTheme({required this.themeMode, required this.themeModeControl});
}


