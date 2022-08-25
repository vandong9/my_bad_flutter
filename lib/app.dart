import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:my_bad/common/theme/theme.dart';
// import 'package:my_bad/common/theme/theme_manager.dart';
import 'package:my_bad/di/injector.dart';
import 'package:my_bad/routes/routes.dart';
import 'package:share_ui/share_ui.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  late AppTheme appTheme;

  @override
  void initState() {
    super.initState();
    ThemeManager themeManager = sl<ThemeManager>();
    appTheme = themeManager.current;
    themeManager.onChangedCurrentTheme = () {
      setState(() {
        appTheme = themeManager.current;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    ThemeManager themeManager = sl<ThemeManager>();

    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: InheritedAppThemeProvider(
          appTheme: themeManager.current,
          child: MaterialApp(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,

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
              initialRoute: "/"),
        ));
  }
}
