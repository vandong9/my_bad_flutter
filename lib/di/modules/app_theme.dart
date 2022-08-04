import '../../common/theme/theme.dart';
import '../../environment_info.dart';
import '../injector.dart';

class AppThemeInstance extends DIModule {
  @override
  Future<void> provides({EnvironmentInfo? env}) async {
    sl.registerLazySingleton(() => AppTheme(
        AppColor(),
        AppFont(AppFontFamily(), AppFontWeight(), AppFontSize()),
        AppTextStyle()));
  }
}
