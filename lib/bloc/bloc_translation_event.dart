part of 'bloc_translation_bloc.dart';

@immutable
abstract class BlocTranslationEvent {}

class ChangeLanguageEvent extends BlocTranslationEvent {
  final bool localeControl;
  ChangeLanguageEvent({required this.localeControl});
}
