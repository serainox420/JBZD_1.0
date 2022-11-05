package com.inmobi.monetization;

import java.util.Map;
/* loaded from: classes2.dex */
public interface IMInterstitialListener {
    void onDismissInterstitialScreen(IMInterstitial iMInterstitial);

    void onInterstitialFailed(IMInterstitial iMInterstitial, IMErrorCode iMErrorCode);

    void onInterstitialInteraction(IMInterstitial iMInterstitial, Map<String, String> map);

    void onInterstitialLoaded(IMInterstitial iMInterstitial);

    void onLeaveApplication(IMInterstitial iMInterstitial);

    void onShowInterstitialScreen(IMInterstitial iMInterstitial);
}
