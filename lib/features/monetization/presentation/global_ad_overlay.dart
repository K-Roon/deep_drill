import 'package:flutter/material.dart';
import 'package:deep_drill/features/monetization/presentation/banner_ad_widget.dart';

class GlobalAdOverlay extends StatelessWidget {
  const GlobalAdOverlay({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: IgnorePointer(
        ignoring: false,
        child: const BottomBannerAd(
            adUnitIdAndroid: "ca-app-pub-2748600890197597~8971645330",
            adUnitIdIOS: "ca-app-pub-2748600890197597~5726135514"),
      ),
    );
  }
}