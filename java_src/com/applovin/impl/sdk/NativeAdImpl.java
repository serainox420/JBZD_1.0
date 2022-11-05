package com.applovin.impl.sdk;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Map;
/* loaded from: classes.dex */
public class NativeAdImpl implements az, y {
    public static final String QUERY_PARAM_IS_FIRST_PLAY = "fp";
    public static final String QUERY_PARAM_VIDEO_PERCENT_VIEWED = "pv";

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkImpl f1578a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private float l;
    private String m;
    private String n;
    private String o;
    private String p;
    private String q;
    private String r;
    private long s;
    public static final AppLovinAdSize SIZE_NATIVE = new AppLovinAdSize("NATIVE");
    public static final AppLovinAdType TYPE_NATIVE = new AppLovinAdType("NATIVE");
    public static final c SPEC_NATIVE = new c(SIZE_NATIVE, TYPE_NATIVE);

    private NativeAdImpl(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, float f, String str10, String str11, String str12, String str13, String str14, String str15, String str16, long j, AppLovinSdkImpl appLovinSdkImpl) {
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = str6;
        this.h = str7;
        this.j = str8;
        this.k = str9;
        this.l = f;
        this.m = str10;
        this.n = str11;
        this.o = str12;
        this.p = str13;
        this.q = str14;
        this.r = str15;
        this.i = str16;
        this.s = j;
        this.f1578a = appLovinSdkImpl;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NativeAdImpl nativeAdImpl = (NativeAdImpl) obj;
        if (this.h == null ? nativeAdImpl.h != null : !this.h.equals(nativeAdImpl.h)) {
            return false;
        }
        if (this.r == null ? nativeAdImpl.r != null : !this.r.equals(nativeAdImpl.r)) {
            return false;
        }
        if (this.o == null ? nativeAdImpl.o != null : !this.o.equals(nativeAdImpl.o)) {
            return false;
        }
        if (this.i == null ? nativeAdImpl.i != null : !this.i.equals(nativeAdImpl.i)) {
            return false;
        }
        if (this.g == null ? nativeAdImpl.g != null : !this.g.equals(nativeAdImpl.g)) {
            return false;
        }
        if (this.n == null ? nativeAdImpl.n != null : !this.n.equals(nativeAdImpl.n)) {
            return false;
        }
        if (this.b == null ? nativeAdImpl.b != null : !this.b.equals(nativeAdImpl.b)) {
            return false;
        }
        if (this.c == null ? nativeAdImpl.c != null : !this.c.equals(nativeAdImpl.c)) {
            return false;
        }
        if (this.d == null ? nativeAdImpl.d != null : !this.d.equals(nativeAdImpl.d)) {
            return false;
        }
        if (this.e == null ? nativeAdImpl.e != null : !this.e.equals(nativeAdImpl.e)) {
            return false;
        }
        if (this.f == null ? nativeAdImpl.f != null : !this.f.equals(nativeAdImpl.f)) {
            return false;
        }
        if (this.q == null ? nativeAdImpl.q != null : !this.q.equals(nativeAdImpl.q)) {
            return false;
        }
        if (this.p != null) {
            if (this.p.equals(nativeAdImpl.p)) {
                return true;
            }
        } else if (nativeAdImpl.p == null) {
            return true;
        }
        return false;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public long getAdId() {
        return this.s;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getCaptionText() {
        return this.h;
    }

    public String getClCode() {
        return this.r;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getClickUrl() {
        return this.o;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getCtaText() {
        return this.i;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getDescriptionText() {
        return this.g;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getIconUrl() {
        return this.j;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getImageUrl() {
        return this.k;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getImpressionTrackingUrl() {
        return this.n;
    }

    public String getSourceIconUrl() {
        return this.b;
    }

    public String getSourceImageUrl() {
        return this.c;
    }

    public String getSourceStarRatingImageUrl() {
        return this.d;
    }

    public String getSourceVideoUrl() {
        return this.e;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public float getStarRating() {
        return this.l;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getTitle() {
        return this.f;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getVideoEndTrackingUrl(int i, boolean z) {
        if (this.q == null) {
            return Uri.EMPTY.toString();
        }
        if (i < 0 || i > 100) {
            Log.e("AppLovinNativeAd", "Invalid percent viewed supplied.", new IllegalArgumentException("Percent viewed must be an integer between 0 and 100."));
        }
        return Uri.parse(this.q).buildUpon().appendQueryParameter(QUERY_PARAM_VIDEO_PERCENT_VIEWED, Integer.toString(i)).appendQueryParameter(QUERY_PARAM_IS_FIRST_PLAY, Boolean.toString(z)).build().toString();
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getVideoStartTrackingUrl() {
        return this.p;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public String getVideoUrl() {
        return this.m;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.q != null ? this.q.hashCode() : 0) + (((this.p != null ? this.p.hashCode() : 0) + (((this.o != null ? this.o.hashCode() : 0) + (((this.n != null ? this.n.hashCode() : 0) + (((this.i != null ? this.i.hashCode() : 0) + (((this.h != null ? this.h.hashCode() : 0) + (((this.g != null ? this.g.hashCode() : 0) + (((this.f != null ? this.f.hashCode() : 0) + (((this.e != null ? this.e.hashCode() : 0) + (((this.d != null ? this.d.hashCode() : 0) + (((this.c != null ? this.c.hashCode() : 0) + ((this.b != null ? this.b.hashCode() : 0) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        if (this.r != null) {
            i = this.r.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public boolean isImagePrecached() {
        return (this.j != null && !this.j.equals(this.b)) && (this.k != null && !this.k.equals(this.c));
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public boolean isVideoPrecached() {
        return this.m != null && !this.m.equals(this.e);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAd
    public void launchClickTarget(Context context) {
        this.f1578a.getPersistentPostbackManager().a(this.o, (Map) null);
        AppLovinSdkUtils.openUrl(context, this.o, this.f1578a);
    }

    public void setIconUrl(String str) {
        this.j = str;
    }

    public void setImageUrl(String str) {
        this.k = str;
    }

    public void setStarRating(float f) {
        this.l = f;
    }

    public void setVideoUrl(String str) {
        this.m = str;
    }

    public String toString() {
        return "WidgetSlot{clCode='" + this.r + "', sourceIconUrl='" + this.b + "', sourceImageUrl='" + this.c + "', sourceStarRatingImageUrl='" + this.d + "', sourceVideoUrl='" + this.e + "', title='" + this.f + "', descriptionText='" + this.g + "', captionText='" + this.h + "', ctaText='" + this.i + "', iconUrl='" + this.j + "', imageUrl='" + this.k + "', starRating='" + this.l + "', videoUrl='" + this.m + "', impressionTrackingUrl='" + this.n + "', clickUrl='" + this.o + "', videoStartTrackingUrl='" + this.p + "', videoEndTrackingUrl='" + this.q + "'}";
    }
}
