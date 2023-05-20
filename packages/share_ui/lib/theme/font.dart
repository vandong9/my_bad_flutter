import 'dart:ui';

class AppFontFamily {
  static const String SVNMillerBanner = "SVNMillerBanner";
  static const String Helvetica = "Helvetica";
  static const String Intern = "Intern";

  static const String Intern_regular = "Inter-Regular";
  static const String Intern_medium = "Inter-Medium";
  static const String Intern_semiBold = "Inter-SemiBold";
  static const String Intern_bold = "Inter-Bold";

  static const String Intern_italic = "Inter-Regular_Italic";
  static const String Intern_thin = "Inter-Regular_Thin";
  static const String Intern_thinItalic = "Inter-Regular_Thin-Italic";
  static const String Intern_extraLight = "Inter-Regular_ExtraLight";
  static const String Intern_extraLightItalic =
      "Inter-Regular_ExtraLight-Italic";
  static const String Intern_light = "Inter-Regular_Light";
  static const String Intern_lightItalic = "Inter-Regular_Light-Italic";
  static const String Intern_mediumItalic = "Inter-Regular_Medium-Italic";
  static const String Intern_semiBoldItalic = "Inter-Regular_SemiBold-Italic";
  static const String Intern_boldItalic = "Inter-Regular_Bold-Italic";
  static const String Intern_extraBold = "Inter-Regular_ExtraBold";
  static const String Intern_extraBoldItalic = "Inter-Regular_ExtraBold-Italic";
  static const String Intern_black = "Inter-Regular_Black";
}

class AppFontWeight {
  static const FontWeight black = FontWeight.w900;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
}

class AppFontSize {
  static const sizeIcon = 3.0;
  static const sizeIconDouble = 6.0;
  static const sizeVerySmall = 5.0;
  static const sizeVerySmallx = 7.0;

  static const sizeSmall = 10.0;
  static const sizeSmallx = 12.0;
  static const sizeSmallxx = 14.0;
  static const sizeSmallxxx = 16.0;
  static const sizeSmallxxxx = 18.0;

  static const sizeNormal = 20.0;
  static const sizeNormalx = 25.0;
  static const sizeNormalxx = 30.0;
  static const sizeNormalxxx = 35.0;

  static const sizeLarge = 40.0;
  static const sizeLargex = 45.0;
  static const sizeLargexx = 50.0;
  static const sizeLargexxx = 60.0;

  static const sizeExLarge = 80.0;
  static const sizeExLargex = 85.0;
  static const sizeExLargexx = 90.0;
  static const sizeExLargexxx = 95.0;

  static const sizeImageSmall = 100.0;

  static const sizeImageNormal = 120.0;
  static const sizeImageNormalx = 140.0;
  static const sizeImageNormalxx = 160.0;
  static const sizeImageNormalxxx = 200.0;
  static const sizeImageNormalxxxx = 260.0;

  static const sizeImageLarge = 240.0;
  static const sizeImageLargex = 280.0;
  static const sizeImageLargexx = 320.0;
  static const sizeImageLargexxx = 360.0;
  static const sizeImageLargexxxx = 400.0;

  static const sizeImageSLarge = 600.0;
}

class AppFont {
  AppFontFamily fontFamily;
  AppFontWeight fontWeight;
  AppFontSize fontSize;
  AppFont(this.fontFamily, this.fontWeight, this.fontSize);
}
