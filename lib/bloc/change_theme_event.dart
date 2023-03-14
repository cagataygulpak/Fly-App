part of 'change_theme_bloc.dart';

@immutable
abstract class ChangeThemeEvent {}

class ThemeChangeEvent extends ChangeThemeEvent {
  final ThemeMode themeMode;
  final bool themeControl;
  ThemeChangeEvent({required this.themeMode, required this.themeControl});
}


