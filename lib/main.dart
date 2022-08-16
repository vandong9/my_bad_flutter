import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_bad/di/injector.dart' as service_locator;

import 'app.dart';
import 'common/utils/localized.dart';
import 'di/injector.dart';
import 'environment_info.dart';

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
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  final envi = await EnvironmentInfo.dev();
  await Injection.inject(envi);
  final language = sl<ILocalizedLanguage>();

  await language.loadData();

  runApp(EasyLocalization(
    supportedLocales: [const Locale('en', 'US')],
    path: 'assets/langs',
    child: const App(),
  ));
}
