import 'package:my_bad/common/utils/localized.dart';
import 'package:my_bad/di/injector.dart';
import 'package:my_bad/environment_info.dart';

class ComponentsModule extends DIModule {
  @override
  Future<void> provides({EnvironmentInfo? env}) async {
    sl.registerLazySingleton<EnvironmentInfo>(() => env!);

    sl.registerFactory<ILocalizedLanguage>(() => MultipleLanguage());
  }
}
