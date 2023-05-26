// image name -> Assets name
import 'package:flutter/material.dart';

import '../../../r.dart';

final Map<String, String> mapVibImageAsset = {
  "arrow_left": R.controlsImages.cmBackIcImages.cmBackIc,
  "close": R.controlsImages.cmCloseHeaderIcImagesetImages.cmCloseHeaderIc
};

final Map<String, Color> mapVIbColorName = {
  "clear": const Color(0xFFFFFF00),
  "whiteColor": Colors.white,
  "blackColor": Colors.black,
  "grey900": const Color(0xFF121826),
  "grey800": const Color(0xFF212936),
  "grey700": const Color(0xFF394150),
  "grey600": const Color(0xFF4D5562),
  "grey500": const Color(0xFF6C727F),
  "grey400": const Color(0xFF9DA3AE),
  "grey300": const Color(0xFFD2D5DA),
  "grey200": const Color(0xFFE5E7EB),
  "grey100": const Color(0xFFF3F4F6),
  "grey50": const Color(0xFFF9FAFB),
  "blue40,": const Color(0xFF318DD2),
  "blue300": const Color(0xFF83BBE4),
  "blue200": const Color(0xFFACD2ED),
  "blue100": const Color(0xFFD5E9F6),
  "yellow400": const Color(0xFFFDB813),
  "yellow300": const Color(0xFFFDD471),
  "yellow200": const Color(0xFFFDE2A0),
  "yellow100": const Color(0xFFFDF0CF),
  "orange400": const Color(0xFFF7941E),
  "orange300": const Color(0xFFF9B869),
  "orange200": const Color(0xFFFDD3A6),
  "orange100": const Color(0xFFFFE8D3),
  "lightThemeColor": const Color(0xFFFE9B25),
  "darkThemeColor": const Color(0xFFFE9B25),
  "themeColor":
      const Color(0xFFFE9B25) // this color will change up to selected theme
};
