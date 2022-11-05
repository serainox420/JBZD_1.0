package com.mopub.mobileads.factories;

import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventBannerAdapter;
import com.mopub.mobileads.MoPubView;
import java.util.Map;
/* loaded from: classes.dex */
public class CustomEventBannerAdapterFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static CustomEventBannerAdapterFactory f4514a = new CustomEventBannerAdapterFactory();

    @Deprecated
    public static void setInstance(CustomEventBannerAdapterFactory customEventBannerAdapterFactory) {
        f4514a = customEventBannerAdapterFactory;
    }

    public static CustomEventBannerAdapter create(MoPubView moPubView, String str, Map<String, String> map, long j, AdReport adReport) {
        return f4514a.a(moPubView, str, map, j, adReport);
    }

    protected CustomEventBannerAdapter a(MoPubView moPubView, String str, Map<String, String> map, long j, AdReport adReport) {
        return new CustomEventBannerAdapter(moPubView, str, map, j, adReport);
    }
}
