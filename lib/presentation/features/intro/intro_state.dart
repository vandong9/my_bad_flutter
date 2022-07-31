import 'package:equatable/equatable.dart';

abstract class IntroState extends Equatable {
  @override
  List<Object> get props => [];
}

class IntroStateInitialState extends IntroState {}

class IntroStateNextState extends IntroState {}

class IntroStateEndState extends IntroState {}
