package com.mopub.mobileads;

import com.mopub.common.AdFormat;
import com.mopub.common.AdType;
import com.mopub.common.util.ResponseHeader;
import com.mopub.network.HeaderUtils;
import java.util.Map;
/* loaded from: classes3.dex */
public class AdTypeTranslator {
    public static final String BANNER_SUFFIX = "_banner";
    public static final String INTERSTITIAL_SUFFIX = "_interstitial";

    /* loaded from: classes3.dex */
    public enum CustomEventType {
        GOOGLE_PLAY_SERVICES_BANNER("admob_native_banner", "com.mopub.mobileads.GooglePlayServicesBanner"),
        GOOGLE_PLAY_SERVICES_INTERSTITIAL("admob_full_interstitial", "com.mopub.mobileads.GooglePlayServicesInterstitial"),
        MILLENNIAL_BANNER("millennial_native_banner", "com.mopub.mobileads.MillennialBanner"),
        MILLENNIAL_INTERSTITIAL("millennial_full_interstitial", "com.mopub.mobileads.MillennialInterstitial"),
        MRAID_BANNER("mraid_banner", "com.mopub.mraid.MraidBanner"),
        MRAID_INTERSTITIAL("mraid_interstitial", "com.mopub.mraid.MraidInterstitial"),
        HTML_BANNER("html_banner", "com.mopub.mobileads.HtmlBanner"),
        HTML_INTERSTITIAL("html_interstitial", "com.mopub.mobileads.HtmlInterstitial"),
        VAST_VIDEO_INTERSTITIAL("vast_interstitial", "com.mopub.mobileads.VastVideoInterstitial"),
        MOPUB_NATIVE("mopub_native", "com.mopub.nativeads.MoPubCustomEventNative"),
        MOPUB_VIDEO_NATIVE("mopub_video_native", "com.mopub.nativeads.MoPubCustomEventVideoNative"),
        MOPUB_REWARDED_VIDEO(AdType.REWARDED_VIDEO, "com.mopub.mobileads.MoPubRewardedVideo"),
        UNSPECIFIED("", null);
        

        /* renamed from: a  reason: collision with root package name */
        private final String f4406a;
        private final String b;

        CustomEventType(String str, String str2) {
            this.f4406a = str;
            this.b = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static CustomEventType b(String str) {
            CustomEventType[] values;
            for (CustomEventType customEventType : values()) {
                if (customEventType.f4406a.equals(str)) {
                    return customEventType;
                }
            }
            return UNSPECIFIED;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.b;
        }
    }

    public static String getCustomEventName(AdFormat adFormat, String str, String str2, Map<String, String> map) {
        if ("custom".equalsIgnoreCase(str)) {
            return HeaderUtils.extractHeader(map, ResponseHeader.CUSTOM_EVENT_NAME);
        }
        if (AdType.STATIC_NATIVE.equalsIgnoreCase(str)) {
            return CustomEventType.MOPUB_NATIVE.toString();
        }
        if (AdType.VIDEO_NATIVE.equalsIgnoreCase(str)) {
            return CustomEventType.MOPUB_VIDEO_NATIVE.toString();
        }
        if (AdType.REWARDED_VIDEO.equalsIgnoreCase(str)) {
            return CustomEventType.MOPUB_REWARDED_VIDEO.toString();
        }
        if (AdType.HTML.equalsIgnoreCase(str) || "mraid".equalsIgnoreCase(str)) {
            return (AdFormat.INTERSTITIAL.equals(adFormat) ? CustomEventType.b(str + INTERSTITIAL_SUFFIX) : CustomEventType.b(str + BANNER_SUFFIX)).toString();
        }
        return "interstitial".equalsIgnoreCase(str) ? CustomEventType.b(str2 + INTERSTITIAL_SUFFIX).toString() : CustomEventType.b(str + BANNER_SUFFIX).toString();
    }
}
