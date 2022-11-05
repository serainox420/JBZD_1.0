package com.applovin.impl.sdk;

import android.net.Uri;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes.dex */
public class AppLovinAdImpl implements az, AppLovinAd {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinAdSize f1572a;
    private final AppLovinAdType b;
    private final long c;
    private final String d;
    private final AdTarget e;
    private final String f;
    private final String g;
    private final float h;
    private final float i;
    private final int j;
    private final String k;
    private final String l;
    private final String m;
    private final String n;
    private final com.applovin.impl.adview.v o;

    /* loaded from: classes.dex */
    public enum AdTarget {
        DEFAULT,
        ACTIVITY_PORTRAIT,
        ACTIVITY_LANDSCAPE
    }

    /* loaded from: classes.dex */
    public class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f1574a;
        private AppLovinAdSize b;
        private AppLovinAdType c;
        private String d;
        private AdTarget e;
        private com.applovin.impl.adview.v f;
        private float g;
        private float h;
        private int i;
        private long j;
        private String k;
        private String l;
        private String m;
        private String n;
        private String o;

        public AppLovinAdImpl build() {
            return new AppLovinAdImpl(this.f1574a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o);
        }

        public Builder setClCode(String str) {
            this.k = str;
            return this;
        }

        public Builder setCloseDelay(float f) {
            this.h = f;
            return this;
        }

        public Builder setCloseStyle(com.applovin.impl.adview.v vVar) {
            this.f = vVar;
            return this;
        }

        public Builder setCompletionUrl(String str) {
            this.l = str;
            return this;
        }

        public Builder setCountdownLength(int i) {
            this.i = i;
            return this;
        }

        public Builder setCurrentAdIdNumber(long j) {
            this.j = j;
            return this;
        }

        public Builder setHtml(String str) {
            this.f1574a = str;
            return this;
        }

        public Builder setMuteImageFilename(String str) {
            this.n = str;
            return this;
        }

        public Builder setSize(AppLovinAdSize appLovinAdSize) {
            this.b = appLovinAdSize;
            return this;
        }

        public Builder setSupplementalClickTrackingUrl(String str) {
            this.m = str;
            return this;
        }

        public Builder setTarget(AdTarget adTarget) {
            this.e = adTarget;
            return this;
        }

        public Builder setType(AppLovinAdType appLovinAdType) {
            this.c = appLovinAdType;
            return this;
        }

        public Builder setUnmuteImageFilename(String str) {
            this.o = str;
            return this;
        }

        public Builder setVideoCloseDelay(float f) {
            this.g = f;
            return this;
        }

        public Builder setVideoFilename(String str) {
            this.d = str;
            return this;
        }
    }

    private AppLovinAdImpl(String str, AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, String str2, AdTarget adTarget, com.applovin.impl.adview.v vVar, float f, float f2, int i, long j, String str3, String str4, String str5, String str6, String str7) {
        if (appLovinAdSize == null) {
            throw new IllegalArgumentException("No size specified");
        }
        if (appLovinAdType == null) {
            throw new IllegalArgumentException("No type specified");
        }
        this.f1572a = appLovinAdSize;
        this.b = appLovinAdType;
        this.d = str2;
        this.c = j;
        this.g = str;
        this.e = adTarget;
        this.h = f;
        this.j = i;
        this.f = str3;
        this.o = vVar;
        this.i = f2;
        this.k = str4;
        this.l = str5;
        this.m = str6;
        this.n = str7;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) obj;
        if (this.c != appLovinAdImpl.c || Float.compare(appLovinAdImpl.h, this.h) != 0 || Float.compare(appLovinAdImpl.i, this.i) != 0 || this.j != appLovinAdImpl.j) {
            return false;
        }
        if (this.f1572a != null) {
            if (!this.f1572a.equals(appLovinAdImpl.f1572a)) {
                return false;
            }
        } else if (appLovinAdImpl.f1572a != null) {
            return false;
        }
        if (this.b != null) {
            if (!this.b.equals(appLovinAdImpl.b)) {
                return false;
            }
        } else if (appLovinAdImpl.b != null) {
            return false;
        }
        if (this.d != null) {
            if (!this.d.equals(appLovinAdImpl.d)) {
                return false;
            }
        } else if (appLovinAdImpl.d != null) {
            return false;
        }
        if (this.e != appLovinAdImpl.e) {
            return false;
        }
        if (this.f != null) {
            if (!this.f.equals(appLovinAdImpl.f)) {
                return false;
            }
        } else if (appLovinAdImpl.f != null) {
            return false;
        }
        if (this.g != null) {
            if (!this.g.equals(appLovinAdImpl.g)) {
                return false;
            }
        } else if (appLovinAdImpl.g != null) {
            return false;
        }
        if (this.k != null) {
            if (!this.k.equals(appLovinAdImpl.k)) {
                return false;
            }
        } else if (appLovinAdImpl.k != null) {
            return false;
        }
        if (this.l != null) {
            if (!this.l.equals(appLovinAdImpl.l)) {
                return false;
            }
        } else if (appLovinAdImpl.l != null) {
            return false;
        }
        if (this.m != null) {
            if (!this.m.equals(appLovinAdImpl.m)) {
                return false;
            }
        } else if (appLovinAdImpl.m != null) {
            return false;
        }
        if (this.n != null) {
            if (!this.n.equals(appLovinAdImpl.n)) {
                return false;
            }
        } else if (appLovinAdImpl.n != null) {
            return false;
        }
        if (this.o != appLovinAdImpl.o) {
            z = false;
        }
        return z;
    }

    @Override // com.applovin.sdk.AppLovinAd
    public long getAdIdNumber() {
        return this.c;
    }

    public String getClCode() {
        return this.f;
    }

    public float getCloseDelay() {
        return this.i;
    }

    public com.applovin.impl.adview.v getCloseStyle() {
        return this.o;
    }

    public String getCompletionUrl() {
        return this.k;
    }

    public int getCountdownLength() {
        return this.j;
    }

    public String getHtmlSource() {
        return this.g;
    }

    public String getMuteImageFilename() {
        return this.m;
    }

    public String getParametrizedCompletionUrl(int i, String str) {
        String completionUrl = getCompletionUrl();
        return AppLovinSdkUtils.isValidString(completionUrl) ? di.a(str, Uri.parse(completionUrl.replace("{CLCODE}", getClCode())).buildUpon().appendQueryParameter(NativeAdImpl.QUERY_PARAM_VIDEO_PERCENT_VIEWED, Integer.toString(i)).build().toString()) : "";
    }

    @Override // com.applovin.sdk.AppLovinAd
    public AppLovinAdSize getSize() {
        return this.f1572a;
    }

    public String getSupplementalClickTrackingUrl() {
        return getSupplementalClickTrackingUrl(null);
    }

    public String getSupplementalClickTrackingUrl(String str) {
        String str2 = this.l;
        return AppLovinSdkUtils.isValidString(str2) ? di.a(str, str2.replace("{CLCODE}", getClCode())) : "";
    }

    public AdTarget getTarget() {
        return this.e;
    }

    @Override // com.applovin.sdk.AppLovinAd
    public AppLovinAdType getType() {
        return this.b;
    }

    public String getUnmuteImageFilename() {
        return this.n;
    }

    public float getVideoCloseDelay() {
        return this.h;
    }

    public String getVideoFilename() {
        return this.d;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.n != null ? this.n.hashCode() : 0) + (((this.m != null ? this.m.hashCode() : 0) + (((this.l != null ? this.l.hashCode() : 0) + (((this.k != null ? this.k.hashCode() : 0) + (((((this.i != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(this.i) : 0) + (((this.h != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(this.h) : 0) + (((this.g != null ? this.g.hashCode() : 0) + (((this.f != null ? this.f.hashCode() : 0) + (((this.e != null ? this.e.hashCode() : 0) + (((this.d != null ? this.d.hashCode() : 0) + (((((this.b != null ? this.b.hashCode() : 0) + ((this.f1572a != null ? this.f1572a.hashCode() : 0) * 31)) * 31) + ((int) (this.c ^ (this.c >>> 32)))) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + this.j) * 31)) * 31)) * 31)) * 31)) * 31;
        if (this.o != null) {
            i = this.o.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.applovin.sdk.AppLovinAd
    public boolean isVideoAd() {
        return AppLovinSdkUtils.isValidString(this.d);
    }

    public String toString() {
        return "AppLovinAdImpl{size=" + this.f1572a + ", type=" + this.b + ", adIdNumber=" + this.c + ", videoFilename='" + this.d + "', target=" + this.e + ", clCode='" + this.f + "', htmlSource='" + this.g + "', videoCloseDelay=" + this.h + ", closeDelay=" + this.i + ", countdownLength=" + this.j + ", completionUrl='" + this.k + "', supplementalClickTrackingUrl='" + this.l + "', muteImageFilename='" + this.m + "', unmuteImageFilename='" + this.n + "', closeStyle=" + this.o + '}';
    }
}
