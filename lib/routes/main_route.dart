import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bad/presentation/features/intro/intro.dart';
import 'package:my_bad/presentation/features/intro/intro_screen.dart';
import 'package:my_bad/presentation/features/main/home.dart';
import 'package:my_bad/routes/route_name.dart';
import 'package:product/router.dart' as productRouters;

Map<String, WidgetBuilder> mainRoutes() {
  Map<String, WidgetBuilder> allRoutes = Map<String, WidgetBuilder>();
  allRoutes.addAll(productRouters.routes());

  Map<String, WidgetBuilder> appRoutes = <String, WidgetBuilder>{
    AppRouteName.intro: (context) => BlocProvider<IntroBloc>(
          create: (context) => IntroBloc(),
          child: IntroScreen(),
        ),
    AppRouteName.home: (context) => HomeScreen(),
  };
  allRoutes.addAll(appRoutes);

  return allRoutes;
}
