import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'loading/circle_loading.dart';
import 'dialog/progress_dialog.dart';

class BaseWidget extends StatefulWidget {
  const BaseWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BaseState();
  }
}

class BaseState<T extends BaseWidget> extends State<T> {
  // final _baseBloc = sl<BaseBloc>();
  StreamSubscription? streamSubscriptionBase;
  StreamSubscription? streamNotificationBase;
  ProgressDialog? pbLoading;

  void initDialogLoading(BuildContext context, String message) {
    pbLoading = ProgressDialog(
      context,
      showLogs: true,
      isDismissible: false,
    );
    pbLoading?.style(
      message: message,
      progressWidget: CircleLoading(),
    );
  }

  void lockPortrait() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }

  @override
  void initState() {
    super.initState();
    // streamSubscriptionBase = _baseBloc.stream.listen((state) {
    //   //Do for Logout State
    //   if (state is LogoutState) {
    //     NavigateUtil.pop(context,
    //         routeName: IntroScreen.routeName, release: true);
    //   }
    // });

    lockPortrait();
  }

  @override
  void dispose() {
    super.dispose();
    streamSubscriptionBase?.cancel();
    streamNotificationBase?.cancel();
  }

  void hideKeyboard() {}
}
