import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bloc_translation_event.dart';
part 'bloc_translation_state.dart';

class BlocTranslationBloc
    extends Bloc<BlocTranslationEvent, BlocTranslationState> {
  BlocTranslationBloc() : super(ChangeLanguageState(localeControl: false)) {
    on<ChangeLanguageEvent>((event, emit) {
      emit(ChangeLanguageState(localeControl: event.localeControl));
    });
  }
}
