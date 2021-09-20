import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-4066984467805494/2181439735';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-4066984467805494/2181439735';
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }
}
//ca-app-pub-4066984467805494/2181439735