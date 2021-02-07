import 'package:firebase_admob/firebase_admob.dart';

class AdPage{
   String bannerAdUnitId="ca-app-pub-4412751165741856/5449907382";
   String interstitialAdUnitId="ca-app-pub-4412751165741856/4180030075";
  static const MobileAdTargetingInfo targetingInfo=MobileAdTargetingInfo(
 // RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList("AB73102FDEA6786E4F4302CDED199552")
  //testDevices: ,
  nonPersonalizedAds: true,
  );

  BannerAd createBannerAd(){
    return BannerAd(
      adUnitId: bannerAdUnitId,
      size: AdSize.banner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event){
        print("BannerAd $event");
      }
    );
  }
BannerAd createBannerAd2(){
    return BannerAd(
      adUnitId: bannerAdUnitId,
      size: AdSize.mediumRectangle,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event){
        print("BannerAd $event");
      }
    );
  }
  InterstitialAd createInterstitialAd(){
    return InterstitialAd(
      adUnitId: interstitialAdUnitId,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event){
        print("InterstitialAd $event");
      }
    );
  }
 
}
