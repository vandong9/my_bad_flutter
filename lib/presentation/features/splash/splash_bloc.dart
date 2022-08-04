import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bad/presentation/features/splash/splash_event.dart';
import 'package:my_bad/presentation/features/splash/splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(InitialSplashState());
}
