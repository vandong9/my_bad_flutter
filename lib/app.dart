import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_bad/routes/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var localizationDelegate = LocalizedApp.of(context).delegate;

    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: MaterialApp(
            // localizationsDelegates: [
            //   // localizationDelegate,
            // ],
            // onGenerateRoute: _registerRoutesWithParameters,
            // supportedLocales: localizationDelegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            // locale: localizationDelegate.currentLocale,
            title: 'Open FLutter E-commerce',
            // theme: OpenFlutterEcommerceTheme.of(context),
            routes: mainRoutes(),
            initialRoute: "/"));
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
