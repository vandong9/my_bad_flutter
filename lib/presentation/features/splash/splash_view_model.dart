import 'package:my_bad/presentation/base/base_view_model.dart';
import 'package:rxdart/rxdart.dart';

class SplashViewModel {
  final SplashViewModelOutput output = SplashViewModelOutput();

  final SplashViewModelInput input = SplashViewModelInput();
}

class SplashViewModelOutput extends BaseOutput {}

class SplashViewModelInput extends BaseInput {}
