import 'colors.dart';
import 'text_style.dart';
import 'font.dart';

export 'colors.dart';
export 'text_style.dart';
export 'font.dart';

enum SupportTheme { dark, light }

class AppTheme {
  AppColor color;
  AppFont font;
  AppTextStyle textStyle;
  AppTheme(this.color, this.font, this.textStyle);
}
