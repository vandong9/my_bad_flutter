import 'package:flutter/material.dart';
import 'font.dart';

class AppTextStyle {
  static const TextStyle textVerySmallx = TextStyle(
    color: Colors.black,
    fontSize: 7,
    fontFamily: AppFontFamily.SVNMillerBanner,
    decoration: TextDecoration.none,
  );

  TextStyle superLargeTitle(Color color) {
    return TextStyle(
        color: color,
        fontSize: 40,
        fontFamily: AppFontFamily.Intern_semiBold,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle largeTitle(Color color) {
    return TextStyle(
        color: color,
        fontSize: 34,
        fontFamily: AppFontFamily.Intern_bold,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle title1(Color color) {
    return TextStyle(
        color: color,
        fontSize: 28,
        fontFamily: AppFontFamily.Intern_bold,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle title2(Color color) {
    return TextStyle(
        color: color,
        fontSize: 22,
        fontFamily: AppFontFamily.Intern_bold,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle title3(Color color) {
    return TextStyle(
        color: color,
        fontSize: 20,
        fontFamily: AppFontFamily.Intern_semiBold,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle title4(Color color) {
    return TextStyle(
        color: color,
        fontSize: 18,
        fontFamily: AppFontFamily.Intern_semiBold,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle bodyBold(Color color) {
    return TextStyle(
        color: color,
        fontSize: 17,
        fontFamily: AppFontFamily.Intern_semiBold,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle bodyRegular(Color color) {
    return TextStyle(
        color: color,
        fontSize: 17,
        fontFamily: AppFontFamily.Intern_regular,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle bodyLink(Color color) {
    return TextStyle(
        color: color,
        fontSize: 17,
        fontFamily: AppFontFamily.Intern_medium,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle headline(Color color) {
    return TextStyle(
        color: color,
        fontSize: 16,
        fontFamily: AppFontFamily.Intern_semiBold,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle subheadlineBold(Color color) {
    return TextStyle(
        color: color,
        fontSize: 15,
        fontFamily: AppFontFamily.Intern_bold,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle subheadlineMedium(Color color) {
    return TextStyle(
        color: color,
        fontSize: 15,
        fontFamily: AppFontFamily.Intern_medium,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle subheadline(Color color) {
    return TextStyle(
        color: color,
        fontSize: 15,
        fontFamily: AppFontFamily.Intern_semiBold,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle subheadlineRegular(Color color) {
    return TextStyle(
        color: color,
        fontSize: 15,
        fontFamily: AppFontFamily.Intern_regular,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle smallBodyBold(Color color) {
    return TextStyle(
        color: color,
        fontSize: 13,
        fontFamily: AppFontFamily.Intern_semiBold,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle smallBodyRegular(Color color) {
    return TextStyle(
        color: color,
        fontSize: 13,
        fontFamily: AppFontFamily.Intern_regular,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle smallBodyLink(Color color) {
    return TextStyle(
        color: color,
        fontSize: 13,
        fontFamily: AppFontFamily.Intern_medium,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle inputMedium(Color color) {
    return TextStyle(
        color: color,
        fontSize: 13,
        fontFamily: AppFontFamily.Intern_medium,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle captionBold(Color color) {
    return TextStyle(
        color: color,
        fontSize: 12,
        fontFamily: AppFontFamily.Intern_bold,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle captionRegular(Color color) {
    return TextStyle(
        color: color,
        fontSize: 12,
        fontFamily: AppFontFamily.Intern_medium,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle bold11(Color color) {
    return TextStyle(
        color: color,
        fontSize: 11,
        fontFamily: AppFontFamily.Intern_bold,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  TextStyle bold17(Color color) {
    return TextStyle(
        color: color,
        fontSize: 17,
        fontFamily: AppFontFamily.Intern_bold,
        decoration: TextDecoration.none,
        package: "share_ui");
  }

  // static var baseSmallBodyLink: UIFont = AppFont.medium(size: 13)
  // static var baseInputMedium: UIFont = AppFont.medium(size: 13)
  // static var baseCaptionBold: UIFont = AppFont.semiBold(size: 12)
  // static var baseCaptionRegular: UIFont = AppFont.medium(size: 12)
  // static var baseBold11: UIFont = AppFont.bold(size: 11)
  // static var baseBold17: UIFont = AppFont.bold(size: 17)
}

const TextStyle textSmall = TextStyle(
  color: Colors.black,
  fontSize: 10,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
const TextStyle textSmall_Plus = TextStyle(
  color: Colors.black,
  fontSize: 11,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);

const TextStyle textSmallx = TextStyle(
  color: Colors.black,
  fontSize: 12,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
const TextStyle textSmallxx = TextStyle(
  color: Colors.black,
  fontSize: 14,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
const TextStyle textSmallxxx = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);

const TextStyle textNormal = TextStyle(
  color: Colors.black,
  fontSize: 18,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
const TextStyle textNormalx = TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
const TextStyle textNormalxx = TextStyle(
  color: Colors.black,
  fontSize: 22,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
const TextStyle textNormalxxx = TextStyle(
  color: Colors.black,
  fontSize: 24,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
const TextStyle textNormalxxxx = TextStyle(
  color: Colors.black,
  fontSize: 26,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);

const TextStyle textLarge = TextStyle(
  color: Colors.black,
  fontSize: 30,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
const TextStyle textLargex = TextStyle(
  color: Colors.black,
  fontSize: 32,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
const TextStyle textLargexx = TextStyle(
  color: Colors.black,
  fontSize: 34,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
const TextStyle textLargexxx = TextStyle(
  color: Colors.black,
  fontSize: 36,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
const TextStyle textLargexxxx = TextStyle(
  color: Colors.black,
  fontSize: 40,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
const TextStyle textLargexxxxx = TextStyle(
  color: Colors.black,
  fontSize: 45,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);

const TextStyle textExLarge = TextStyle(
  color: Colors.black,
  fontSize: 50,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
const TextStyle textExLargex = TextStyle(
  color: Colors.black,
  fontSize: 54,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
const TextStyle textExLargexx = TextStyle(
  color: Colors.black,
  fontSize: 58,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
const TextStyle textExLargexxx = TextStyle(
  color: Colors.black,
  fontSize: 62,
  fontFamily: AppFontFamily.SVNMillerBanner,
  decoration: TextDecoration.none,
);
