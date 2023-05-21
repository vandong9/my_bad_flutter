// image name -> Assets name
import '../../../r.dart';

enum VIBImageAssets {
  backImage;
}

String vibImageNameFor(VIBImageAssets mapKey) {
  switch (mapKey) {
    case VIBImageAssets.backImage:
      return "";
  }
}

String assetsNameFor(VIBImageAssets mapKey) {
  switch (mapKey) {
    case VIBImageAssets.backImage:
      return R.controlsImages.cmBackIcImages.cmBackIc;
  }
}

final Map<String, String> mapVibImageAsset = {
  "arrow_left": R.controlsImages.cmBackIcImages.cmBackIc,
  "close": R.controlsImages.cmCloseHeaderIcImagesetImages.cmCloseHeaderIc
};
