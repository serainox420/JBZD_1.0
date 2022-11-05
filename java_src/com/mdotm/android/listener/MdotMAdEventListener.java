package com.mdotm.android.listener;

import com.mdotm.android.nativeads.MdotMNativeAd;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public interface MdotMAdEventListener {
    void didShowInterstitial();

    void onDismissScreen();

    void onFailedToReceiveInterstitialAd();

    void onFailedToReceiveNativeAd();

    void onInterstitialAdClick();

    void onInterstitialDismiss();

    void onLeaveApplicationFromInterstitial();

    void onNativeAdClick();

    void onReceiveInterstitialAd();

    void onReceiveNativeAd(ArrayList<MdotMNativeAd> arrayList);

    void onRewardedVideoComplete(boolean z, String str);

    void willShowInterstitial();
}
