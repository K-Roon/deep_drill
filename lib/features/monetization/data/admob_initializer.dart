import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobInitializer {
  static bool _inited = false;

  static Future<void> ensureInitialized() async {
    if (_inited) return;
    await MobileAds.instance.initialize();
    _inited = true;
  }
}