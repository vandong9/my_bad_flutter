import 'package:flutter/widgets.dart';
import 'package:my_bad/presentation/features/intro/intro_screen.dart';
import 'package:my_bad/routes/route_name.dart';

Map<String, WidgetBuilder> _registerRoutes() {
  return <String, WidgetBuilder>{
    AppRouteName.intro: (context) => IntroScreen(),
  };
}
