import 'package:equatable/equatable.dart';

abstract class LanguageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LanguageChangeCurrentEvent extends LanguageEvent {}
