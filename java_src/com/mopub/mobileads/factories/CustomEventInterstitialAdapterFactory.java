package com.mopub.mobileads.factories;

import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventInterstitialAdapter;
import com.mopub.mobileads.MoPubInterstitial;
import java.util.Map;
/* loaded from: classes.dex */
public class CustomEventInterstitialAdapterFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static CustomEventInterstitialAdapterFactory f4516a = new CustomEventInterstitialAdapterFactory();

    @Deprecated
    public static void setInstance(CustomEventInterstitialAdapterFactory customEventInterstitialAdapterFactory) {
        f4516a = customEventInterstitialAdapterFactory;
    }

    public static CustomEventInterstitialAdapter create(MoPubInterstitial moPubInterstitial, String str, Map<String, String> map, long j, AdReport adReport) {
        return f4516a.a(moPubInterstitial, str, map, j, adReport);
    }

    protected CustomEventInterstitialAdapter a(MoPubInterstitial moPubInterstitial, String str, Map<String, String> map, long j, AdReport adReport) {
        return new CustomEventInterstitialAdapter(moPubInterstitial, str, map, j, adReport);
    }
}
