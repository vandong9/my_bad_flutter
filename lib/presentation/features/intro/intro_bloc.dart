import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bad/presentation/features/intro/intro_event.dart';
import 'package:my_bad/presentation/features/intro/intro_state.dart';

class IntroBloc extends Bloc<IntroEvent, IntroState> {
  IntroBloc() : super(IntroStateInitialState());

  Stream<IntroState> mapEventToState(
    IntroEvent event,
  ) async* {
    if (event is NextPressed) {
      yield IntroStateNextState();
    }

    if (event is StartPressed) {
      yield IntroStateEndState();
    }
  }
}
