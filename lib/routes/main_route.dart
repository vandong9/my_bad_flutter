import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bad/presentation/features/intro/intro.dart';
import 'package:my_bad/presentation/features/intro/intro_screen.dart';
import 'package:my_bad/presentation/features/main/home.dart';
import 'package:my_bad/routes/route_name.dart';

Map<String, WidgetBuilder> mainRoutes() {
  return <String, WidgetBuilder>{
    AppRouteName.intro: (context) => BlocProvider<IntroBloc>(
          create: (context) => IntroBloc(),
          child: IntroScreen(),
        ),
    AppRouteName.home: (context) => HomeScreen(),
  };
}
