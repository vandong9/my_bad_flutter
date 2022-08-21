import 'package:my_bad/common/theme/theme_manager.dart';
import 'package:my_bad/common/utils/localized.dart';
import 'package:my_bad/di/injector.dart';
import 'package:my_bad/environment_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../common/theme/theme.dart';

class ComponentsModule extends DIModule {
  @override
  Future<void> provides({EnvironmentInfo? env}) async {
    sl.registerLazySingleton<EnvironmentInfo>(() => env!);
    // Language
    sl.registerLazySingleton<ILocalizedLanguage>(() => MultipleLanguage());
    // Theme

    SharedPreferences prefs = await SharedPreferences.getInstance();

    // sl.registerLazySingletonAsync<SharedPreferences>(
    // () => SharedPreferences.getInstance());
    sl.registerLazySingleton<SharedPreferences>(() => prefs);
    sl.registerLazySingleton<ThemeManager>(() => ThemeManager());
  }
}
