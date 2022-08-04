import 'dart:async';

import 'package:rxdart/rxdart.dart';
import '../../di/injector.dart';
import '../../utils/extension/connectivity_service.dart';

abstract class IInput {
  void dispose() {}
}

abstract class IOutput {
  final offline = PublishSubject<bool>();
  final loading = PublishSubject<bool>();
  final alert = PublishSubject<String>();

  void dispose() {
    offline.close();
    loading.close();
    alert.close();
  }
}

class BaseViewModel {
  final ConnectivityService _connectivityService = sl<ConnectivityService>();
  late StreamSubscription _connectSubscription;

  final IInput input = BaseInput();
  final IOutput output = BaseOutput();

  BaseViewModel() {
    _connectSubscription =
        _connectivityService.connectionStatusStream.listen((status) {
      if (status == ConnectivityStatus.Offline) {
        output.offline.add(true);
      } else {
        output.offline.add(false);
      }
    });
    transform();
  }

  void transform() {}

  void dispose() {
    _connectSubscription.cancel();
    input.dispose();
    output.dispose();
  }
}

class BaseInput implements IInput {
  void dispose() {}
}

class BaseOutput implements IOutput {
  @override
  PublishSubject<String> alert = PublishSubject<String>();
  @override
  PublishSubject<bool> loading = PublishSubject<bool>();
  @override
  PublishSubject<bool> offline = PublishSubject<bool>();

  @override
  void dispose() {
    alert.close();
    loading.close();
    offline.close();
  }
}
