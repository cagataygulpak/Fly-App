part of 'bloc_translation_bloc.dart';

@immutable
abstract class BlocTranslationState {}

class ChangeLanguageState extends BlocTranslationState {
  final bool localeControl;
  ChangeLanguageState({required this.localeControl});
}
