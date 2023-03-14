import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'change_theme_event.dart';
part 'change_theme_state.dart';

class ChangeThemeBloc extends Bloc<ChangeThemeEvent, ChangeThemeState> {
  ChangeThemeBloc()
      : super(
            ChangeTheme(themeMode: ThemeMode.light, themeModeControl: false)) {
    on<ThemeChangeEvent>((event, emit) {
      emit(ChangeTheme(
          themeMode: event.themeMode, themeModeControl: event.themeControl));
    });
    
  }
}
