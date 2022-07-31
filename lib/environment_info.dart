const String HOST_DEV = 'https://floralpunk.stag.mixcore.studio';
const String RETAILER_DEV = 'floralpunktest';
const String CLIENT_ID_DEV = '112f5536-00d5-480c-aa5d-fe2840372931';
const String CLIENT_SECRET_DEV = '0F986DE0A6030E86A57A61A77C42B87FF6D1EEC2';

const String HOST_PROD = 'https://floralpunk.stag.mixcore.studio';
const String RETAILER_PROD = 'floralpunktest';
const String CLIENT_ID_PROD = '112f5536-00d5-480c-aa5d-fe2840372931';
const String CLIENT_SECRET_PROD = '0F986DE0A6030E86A57A61A77C42B87FF6D1EEC2';

const String VERSION = 'v1';

class EnvironmentInfo {
  final String host;
  final String retailer;
  final String appVersion;
  final String apiVersion;
  final String clientId;
  final String clientSecret;

  EnvironmentInfo({
    required this.host,
    required this.appVersion,
    required this.retailer,
    required this.apiVersion,
    required this.clientId,
    required this.clientSecret,
  });

  static Future<EnvironmentInfo> dev() async {
    print(HOST_DEV);
    return EnvironmentInfo(
      host: HOST_DEV,
      appVersion: "",
      apiVersion: VERSION,
      retailer: RETAILER_DEV,
      clientId: CLIENT_ID_DEV,
      clientSecret: CLIENT_SECRET_DEV,
    );
  }

  static Future<EnvironmentInfo> pro() async {
    print(HOST_PROD);
    return EnvironmentInfo(
      host: HOST_PROD,
      appVersion: "",
      apiVersion: VERSION,
      retailer: RETAILER_PROD,
      clientId: CLIENT_ID_PROD,
      clientSecret: CLIENT_SECRET_PROD,
    );
  }
}
