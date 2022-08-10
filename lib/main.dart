import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_translate/flutter_translate.dart';

import 'package:my_bad/di/injector.dart' as service_locator;
import 'package:my_bad/presentation/features/intro/intro_screen.dart';
import 'package:my_bad/presentation/features/main/home.dart';
import 'package:my_bad/presentation/features/splash/splash_bloc.dart';
import 'package:my_bad/routes/main_route.dart';

import 'app.dart';

class SimpleBlocDelegate extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print(error);
  }
}

void main() async {
  service_locator.init();
  // var delegate = await LocalizationDelegate.create(
  //   fallbackLocale: 'en_US',
  //   supportedLocales: ['en_US', 'de', 'fr'],
  // );

  // Bloc.observer = SimpleBlocDelegate();

  runApp(const App());
}
