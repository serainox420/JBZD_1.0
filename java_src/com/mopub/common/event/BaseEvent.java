package com.mopub.common.event;

import com.google.android.gms.games.request.Requests;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Preconditions;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes3.dex */
public abstract class BaseEvent {
    private final String A;
    private final Integer B;
    private final long C;
    private ClientMetadata D;
    private final double E;

    /* renamed from: a  reason: collision with root package name */
    private final ScribeCategory f4363a;
    private final Name b;
    private final Category c;
    private final SdkProduct d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final Double i;
    private final Double j;
    private final String k;
    private final Integer l;
    private final Integer m;
    private final Double n;
    private final Double o;
    private final Double p;
    private final ClientMetadata.MoPubNetworkType q;
    private final String r;
    private final String s;
    private final String t;
    private final String u;
    private final String v;
    private final String w;
    private final Double x;
    private final String y;
    private final Integer z;

    /* loaded from: classes3.dex */
    public enum ScribeCategory {
        EXCHANGE_CLIENT_EVENT("exchange_client_event"),
        EXCHANGE_CLIENT_ERROR("exchange_client_error");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f4369a;

        ScribeCategory(String str) {
            this.f4369a = str;
        }

        public String getCategory() {
            return this.f4369a;
        }
    }

    /* loaded from: classes3.dex */
    public enum SdkProduct {
        NONE(0),
        WEB_VIEW(1),
        NATIVE(2);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f4370a;

        SdkProduct(int i) {
            this.f4370a = i;
        }

        public int getType() {
            return this.f4370a;
        }
    }

    /* loaded from: classes3.dex */
    public enum AppPlatform {
        NONE(0),
        IOS(1),
        ANDROID(2),
        MOBILE_WEB(3);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f4364a;

        AppPlatform(int i) {
            this.f4364a = i;
        }

        public int getType() {
            return this.f4364a;
        }
    }

    /* loaded from: classes3.dex */
    public enum Name {
        AD_REQUEST("ad_request"),
        IMPRESSION_REQUEST("impression_request"),
        CLICK_REQUEST("click_request"),
        DOWNLOAD_START("download_start"),
        DOWNLOAD_VIDEO_READY("download_video_ready"),
        DOWNLOAD_BUFFERING("download_video_buffering"),
        DOWNLOAD_FINISHED("download_finished"),
        ERROR_DURING_PLAYBACK("error_during_playback"),
        ERROR_FAILED_TO_PLAY("error_failed_to_play"),
        AD_DWELL_TIME("clickthrough_dwell_time");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f4367a;

        Name(String str) {
            this.f4367a = str;
        }

        public String getName() {
            return this.f4367a;
        }
    }

    /* loaded from: classes3.dex */
    public enum Category {
        REQUESTS(Requests.EXTRA_REQUESTS),
        NATIVE_VIDEO("native_video"),
        AD_INTERACTIONS("ad_interactions");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f4366a;

        Category(String str) {
            this.f4366a = str;
        }

        public String getCategory() {
            return this.f4366a;
        }
    }

    /* loaded from: classes3.dex */
    public enum SamplingRate {
        AD_REQUEST(0.1d),
        NATIVE_VIDEO(0.1d),
        AD_INTERACTIONS(0.1d);
        

        /* renamed from: a  reason: collision with root package name */
        private final double f4368a;

        SamplingRate(double d) {
            this.f4368a = d;
        }

        public double getSamplingRate() {
            return this.f4368a;
        }
    }

    public BaseEvent(Builder builder) {
        Preconditions.checkNotNull(builder);
        this.f4363a = builder.f4365a;
        this.b = builder.b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
        this.h = builder.h;
        this.i = builder.i;
        this.j = builder.j;
        this.k = builder.k;
        this.n = builder.l;
        this.o = builder.m;
        this.p = builder.n;
        this.x = builder.o;
        this.y = builder.p;
        this.z = builder.q;
        this.A = builder.r;
        this.B = builder.s;
        this.E = builder.t;
        this.C = System.currentTimeMillis();
        this.D = ClientMetadata.getInstance();
        if (this.D != null) {
            this.l = Integer.valueOf(this.D.getDeviceScreenWidthDip());
            this.m = Integer.valueOf(this.D.getDeviceScreenHeightDip());
            this.q = this.D.getActiveNetworkType();
            this.r = this.D.getNetworkOperator();
            this.s = this.D.getNetworkOperatorName();
            this.t = this.D.getIsoCountryCode();
            this.u = this.D.getSimOperator();
            this.v = this.D.getSimOperatorName();
            this.w = this.D.getSimIsoCountryCode();
            return;
        }
        this.l = null;
        this.m = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
    }

    public ScribeCategory getScribeCategory() {
        return this.f4363a;
    }

    public Name getName() {
        return this.b;
    }

    public Category getCategory() {
        return this.c;
    }

    public SdkProduct getSdkProduct() {
        return this.d;
    }

    public String getSdkVersion() {
        if (this.D == null) {
            return null;
        }
        return this.D.getSdkVersion();
    }

    public String getAdUnitId() {
        return this.e;
    }

    public String getAdCreativeId() {
        return this.f;
    }

    public String getDspCreativeId() {
        return this.k;
    }

    public String getAdType() {
        return this.g;
    }

    public String getAdNetworkType() {
        return this.h;
    }

    public Double getAdWidthPx() {
        return this.i;
    }

    public Double getAdHeightPx() {
        return this.j;
    }

    public AppPlatform getAppPlatform() {
        return AppPlatform.ANDROID;
    }

    public String getAppName() {
        if (this.D == null) {
            return null;
        }
        return this.D.getAppName();
    }

    public String getAppPackageName() {
        if (this.D == null) {
            return null;
        }
        return this.D.getAppPackageName();
    }

    public String getAppVersion() {
        if (this.D == null) {
            return null;
        }
        return this.D.getAppVersion();
    }

    public String getClientAdvertisingId() {
        if (this.D == null) {
            return null;
        }
        return this.D.getDeviceId();
    }

    public String getObfuscatedClientAdvertisingId() {
        return "ifa:XXXX";
    }

    public Boolean getClientDoNotTrack() {
        return Boolean.valueOf(this.D == null || this.D.isDoNotTrackSet());
    }

    public String getDeviceManufacturer() {
        if (this.D == null) {
            return null;
        }
        return this.D.getDeviceManufacturer();
    }

    public String getDeviceModel() {
        if (this.D == null) {
            return null;
        }
        return this.D.getDeviceModel();
    }

    public String getDeviceProduct() {
        if (this.D == null) {
            return null;
        }
        return this.D.getDeviceProduct();
    }

    public String getDeviceOsVersion() {
        if (this.D == null) {
            return null;
        }
        return this.D.getDeviceOsVersion();
    }

    public Integer getDeviceScreenWidthDip() {
        return this.l;
    }

    public Integer getDeviceScreenHeightDip() {
        return this.m;
    }

    public Double getGeoLat() {
        return this.n;
    }

    public Double getGeoLon() {
        return this.o;
    }

    public Double getGeoAccuracy() {
        return this.p;
    }

    public Double getPerformanceDurationMs() {
        return this.x;
    }

    public ClientMetadata.MoPubNetworkType getNetworkType() {
        return this.q;
    }

    public String getNetworkOperatorCode() {
        return this.r;
    }

    public String getNetworkOperatorName() {
        return this.s;
    }

    public String getNetworkIsoCountryCode() {
        return this.t;
    }

    public String getNetworkSimCode() {
        return this.u;
    }

    public String getNetworkSimOperatorName() {
        return this.v;
    }

    public String getNetworkSimIsoCountryCode() {
        return this.w;
    }

    public String getRequestId() {
        return this.y;
    }

    public Integer getRequestStatusCode() {
        return this.z;
    }

    public String getRequestUri() {
        return this.A;
    }

    public Integer getRequestRetries() {
        return this.B;
    }

    public double getSamplingRate() {
        return this.E;
    }

    public Long getTimestampUtcMs() {
        return Long.valueOf(this.C);
    }

    public String toString() {
        return "BaseEvent\nScribeCategory: " + getScribeCategory() + "\nName: " + getName() + "\nCategory: " + getCategory() + "\nSdkProduct: " + getSdkProduct() + "\nSdkVersion: " + getSdkVersion() + "\nAdUnitId: " + getAdUnitId() + "\nAdCreativeId: " + getAdCreativeId() + "\nAdType: " + getAdType() + "\nAdNetworkType: " + getAdNetworkType() + "\nAdWidthPx: " + getAdWidthPx() + "\nAdHeightPx: " + getAdHeightPx() + "\nDspCreativeId: " + getDspCreativeId() + "\nAppPlatform: " + getAppPlatform() + "\nAppName: " + getAppName() + "\nAppPackageName: " + getAppPackageName() + "\nAppVersion: " + getAppVersion() + "\nDeviceManufacturer: " + getDeviceManufacturer() + "\nDeviceModel: " + getDeviceModel() + "\nDeviceProduct: " + getDeviceProduct() + "\nDeviceOsVersion: " + getDeviceOsVersion() + "\nDeviceScreenWidth: " + getDeviceScreenWidthDip() + "\nDeviceScreenHeight: " + getDeviceScreenHeightDip() + "\nGeoLat: " + getGeoLat() + "\nGeoLon: " + getGeoLon() + "\nGeoAccuracy: " + getGeoAccuracy() + "\nPerformanceDurationMs: " + getPerformanceDurationMs() + "\nNetworkType: " + getNetworkType() + "\nNetworkOperatorCode: " + getNetworkOperatorCode() + "\nNetworkOperatorName: " + getNetworkOperatorName() + "\nNetworkIsoCountryCode: " + getNetworkIsoCountryCode() + "\nNetworkSimCode: " + getNetworkSimCode() + "\nNetworkSimOperatorName: " + getNetworkSimOperatorName() + "\nNetworkSimIsoCountryCode: " + getNetworkSimIsoCountryCode() + "\nRequestId: " + getRequestId() + "\nRequestStatusCode: " + getRequestStatusCode() + "\nRequestUri: " + getRequestUri() + "\nRequestRetries: " + getRequestRetries() + "\nSamplingRate: " + getSamplingRate() + "\nTimestampUtcMs: " + new SimpleDateFormat().format(new Date(getTimestampUtcMs().longValue())) + "\n";
    }

    /* loaded from: classes3.dex */
    public static abstract class Builder {

        /* renamed from: a  reason: collision with root package name */
        private ScribeCategory f4365a;
        private Name b;
        private Category c;
        private SdkProduct d;
        private String e;
        private String f;
        private String g;
        private String h;
        private Double i;
        private Double j;
        private String k;
        private Double l;
        private Double m;
        private Double n;
        private Double o;
        private String p;
        private Integer q;
        private String r;
        private Integer s;
        private double t;

        /* renamed from: build */
        public abstract BaseEvent mo552build();

        public Builder(ScribeCategory scribeCategory, Name name, Category category, double d) {
            Preconditions.checkNotNull(scribeCategory);
            Preconditions.checkNotNull(name);
            Preconditions.checkNotNull(category);
            Preconditions.checkArgument(d >= 0.0d && d <= 1.0d);
            this.f4365a = scribeCategory;
            this.b = name;
            this.c = category;
            this.t = d;
        }

        public Builder withSdkProduct(SdkProduct sdkProduct) {
            this.d = sdkProduct;
            return this;
        }

        public Builder withAdUnitId(String str) {
            this.e = str;
            return this;
        }

        public Builder withAdCreativeId(String str) {
            this.f = str;
            return this;
        }

        public Builder withAdType(String str) {
            this.g = str;
            return this;
        }

        public Builder withAdNetworkType(String str) {
            this.h = str;
            return this;
        }

        public Builder withAdWidthPx(Double d) {
            this.i = d;
            return this;
        }

        public Builder withAdHeightPx(Double d) {
            this.j = d;
            return this;
        }

        public Builder withDspCreativeId(String str) {
            this.k = str;
            return this;
        }

        public Builder withGeoLat(Double d) {
            this.l = d;
            return this;
        }

        public Builder withGeoLon(Double d) {
            this.m = d;
            return this;
        }

        public Builder withGeoAccuracy(Double d) {
            this.n = d;
            return this;
        }

        public Builder withPerformanceDurationMs(Double d) {
            this.o = d;
            return this;
        }

        public Builder withRequestId(String str) {
            this.p = str;
            return this;
        }

        public Builder withRequestStatusCode(Integer num) {
            this.q = num;
            return this;
        }

        public Builder withRequestUri(String str) {
            this.r = str;
            return this;
        }

        public Builder withRequestRetries(Integer num) {
            this.s = num;
            return this;
        }
    }
}
