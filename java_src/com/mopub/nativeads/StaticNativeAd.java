package com.mopub.nativeads;

import android.view.View;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class StaticNativeAd extends BaseNativeAd implements ClickInterface, ImpressionInterface {

    /* renamed from: a  reason: collision with root package name */
    private String f4621a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private Double g;
    private String h;
    private String i;
    private boolean j;
    private int k = 1000;
    private final Map<String, Object> l = new HashMap();

    public final String getTitle() {
        return this.e;
    }

    public final String getText() {
        return this.f;
    }

    public final String getMainImageUrl() {
        return this.f4621a;
    }

    public final String getIconImageUrl() {
        return this.b;
    }

    public final String getCallToAction() {
        return this.d;
    }

    public final Double getStarRating() {
        return this.g;
    }

    public final String getPrivacyInformationIconClickThroughUrl() {
        return this.h;
    }

    public String getPrivacyInformationIconImageUrl() {
        return this.i;
    }

    public final Object getExtra(String str) {
        if (!Preconditions.NoThrow.checkNotNull(str, "getExtra key is not allowed to be null")) {
            return null;
        }
        return this.l.get(str);
    }

    public final Map<String, Object> getExtras() {
        return new HashMap(this.l);
    }

    public final String getClickDestinationUrl() {
        return this.c;
    }

    public final void setMainImageUrl(String str) {
        this.f4621a = str;
    }

    public final void setIconImageUrl(String str) {
        this.b = str;
    }

    public final void setClickDestinationUrl(String str) {
        this.c = str;
    }

    public final void setCallToAction(String str) {
        this.d = str;
    }

    public final void setTitle(String str) {
        this.e = str;
    }

    public final void setText(String str) {
        this.f = str;
    }

    public final void setStarRating(Double d) {
        if (d == null) {
            this.g = null;
        } else if (d.doubleValue() >= 0.0d && d.doubleValue() <= 5.0d) {
            this.g = d;
        } else {
            MoPubLog.d("Ignoring attempt to set invalid star rating (" + d + "). Must be between 0.0 and 5.0.");
        }
    }

    public final void setPrivacyInformationIconClickThroughUrl(String str) {
        this.h = str;
    }

    public final void setPrivacyInformationIconImageUrl(String str) {
        this.i = str;
    }

    public final void addExtra(String str, Object obj) {
        if (Preconditions.NoThrow.checkNotNull(str, "addExtra key is not allowed to be null")) {
            this.l.put(str, obj);
        }
    }

    public final void setImpressionMinTimeViewed(int i) {
        if (i >= 0) {
            this.k = i;
        }
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void prepare(View view) {
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void clear(View view) {
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void destroy() {
    }

    public void recordImpression(View view) {
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final int getImpressionMinPercentageViewed() {
        return 50;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final int getImpressionMinTimeViewed() {
        return this.k;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final boolean isImpressionRecorded() {
        return this.j;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final void setImpressionRecorded() {
        this.j = true;
    }

    public void handleClick(View view) {
    }
}
