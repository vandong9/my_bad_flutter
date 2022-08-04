import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'intro.dart';

class IntroScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<IntroBloc, IntroState>(
        listener: (context, state) => {},
        builder: (context, state) {
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text("Intro")],
            ),
          );
        },
      ),
    );
  }
}
