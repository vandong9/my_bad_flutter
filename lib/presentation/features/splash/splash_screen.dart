import 'package:flutter/material.dart';
import 'package:my_bad/presentation/widget/loading/loading.dart';

import 'splash_view_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashScreen> {
  final SplashViewModel _splashViewModel = SplashViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          StreamBuilder(
            stream: _splashViewModel.output.loading.stream,
            builder: (context, snapShot) {
              if (snapShot.data is bool) {
                if ((snapShot.data as bool) == true) {
                  return const Loading(); // Replace with Loading widget
                }
              }
              return Container();
            },
          ),
        ],
      )),
    );
  }
}
