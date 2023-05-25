
import 'colors.dart';
import 'gradient_color.dart';
import 'text_style.dart';
import 'font.dart';

class AppTheme {
  AppColor color;
  AppFont font;
  AppTextStyle textStyle;
  GradientColor gradientColor;
  AppTheme(this.color, this.font, this.textStyle, this.gradientColor);
}

class FireTheme extends AppTheme {
  FireTheme()
      : super(
            FireColor(),
            AppFont(AppFontFamily(), AppFontWeight(), AppFontSize()),
            AppTextStyle(),
            FireThemeGradientColor());
}

class IceTheme extends AppTheme {
  IceTheme()
      : super(
            IceColor(),
            AppFont(AppFontFamily(), AppFontWeight(), AppFontSize()),
            AppTextStyle(),
            IceThemeGradientColor());
}
