package com.unity3d.ads;

import com.unity3d.ads.UnityAds;
/* loaded from: classes3.dex */
public interface IUnityAdsListener {
    void onUnityAdsError(UnityAds.UnityAdsError unityAdsError, String str);

    void onUnityAdsFinish(String str, UnityAds.FinishState finishState);

    void onUnityAdsReady(String str);

    void onUnityAdsStart(String str);
}
