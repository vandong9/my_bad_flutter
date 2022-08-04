import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_translate/flutter_translate.dart';

import 'package:my_bad/di/injector.dart' as service_locator;
import 'package:my_bad/presentation/features/intro/intro_screen.dart';
import 'package:my_bad/presentation/features/splash/splash_bloc.dart';
import 'package:my_bad/routes/main_route.dart';

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

  runApp(OpenFlutterEcommerceApp()

      // BlocProvider<SplashBloc>(
      //   create: (context) => SplashBloc(),
      //   child: MultiRepositoryProvider(
      //     providers: [],
      //     child: LocalizedApp(
      //       delegate,
      //       OpenFlutterEcommerceApp(),
      //     ),
      //   ),
      // ),
      );
}

class OpenFlutterEcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var localizationDelegate = LocalizedApp.of(context).delegate;

    return MaterialApp(
        // localizationsDelegates: [
        //   // localizationDelegate,
        // ],
        onGenerateRoute: _registerRoutesWithParameters,
        // supportedLocales: localizationDelegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        // locale: localizationDelegate.currentLocale,
        title: 'Open FLutter E-commerce',
        // theme: OpenFlutterEcommerceTheme.of(context),
        routes: mainRoutes(),
        initialRoute: "/");
    // return LocalizationProvider(
    //     state: LocalizationProvider.of(context).state,
    //     child: MaterialApp(
    //         localizationsDelegates: [
    //           localizationDelegate,
    //         ],
    //         onGenerateRoute: _registerRoutesWithParameters,
    //         supportedLocales: localizationDelegate.supportedLocales,
    //         debugShowCheckedModeBanner: false,
    //         locale: localizationDelegate.currentLocale,
    //         title: 'Open FLutter E-commerce',
    //         // theme: OpenFlutterEcommerceTheme.of(context),
    //         routes: mainRoutes(),
    //         initialRoute: "/"));
  }
}

Route _registerRoutesWithParameters(RouteSettings settings) {
  return MaterialPageRoute(builder: (context) => IntroScreen());
}
