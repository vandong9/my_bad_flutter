import 'package:my_bad/common/utils/localized.dart';
import 'package:my_bad/di/injector.dart';

extension Localized on String {
  String localized([List<String> params = const []]) {
    final language = sl<ILocalizedLanguage>();
    String value = language.textForKey(this);
    for (var element in params) {
      value = value.replaceFirst('{\$}', element);
    }

    return value;
  }
}
