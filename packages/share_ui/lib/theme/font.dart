import 'dart:ui';

class AppFontFamily {
  static const String SVNMillerBanner = "SVNMillerBanner";
  static const String Helvetica = "Helvetica";
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
}

class AppFont {
  AppFontFamily fontFamily;
  AppFontWeight fontWeight;
  AppFontSize fontSize;
  AppFont(this.fontFamily, this.fontWeight, this.fontSize);
}
