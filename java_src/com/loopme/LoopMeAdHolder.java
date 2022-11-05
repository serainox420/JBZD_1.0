package com.loopme;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class LoopMeAdHolder {
    private static final Map<String, LoopMeInterstitial> mInterstitialMap = new HashMap();
    private static final Map<String, LoopMeBanner> mBannerMap = new HashMap();

    private LoopMeAdHolder() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putAd(BaseAd baseAd) {
        String appKey = baseAd.getAppKey();
        if (baseAd.getAdFormat() == 1001) {
            mInterstitialMap.put(appKey, (LoopMeInterstitial) baseAd);
        } else {
            mBannerMap.put(appKey, (LoopMeBanner) baseAd);
        }
    }

    public static LoopMeInterstitial getInterstitial(String str, Context context) {
        if (mInterstitialMap.containsKey(str)) {
            return mInterstitialMap.get(str);
        }
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        LoopMeInterstitial loopMeInterstitial = new LoopMeInterstitial(context.getApplicationContext(), str);
        mInterstitialMap.put(str, loopMeInterstitial);
        return loopMeInterstitial;
    }

    public static LoopMeBanner getBanner(String str, Context context) {
        if (mBannerMap.containsKey(str)) {
            return mBannerMap.get(str);
        }
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        LoopMeBanner loopMeBanner = new LoopMeBanner(context.getApplicationContext(), str);
        mBannerMap.put(str, loopMeBanner);
        return loopMeBanner;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void removeInterstitial(String str) {
        mInterstitialMap.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void removeBanner(String str) {
        mBannerMap.remove(str);
    }
}
