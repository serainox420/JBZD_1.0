package com.mopub.network;

import com.mopub.common.event.EventDetails;
import com.mopub.common.util.DateAndTime;
import java.io.Serializable;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class AdResponse implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final String f4647a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;
    private final String k;
    private final String l;
    private final Integer m;
    private final Integer n;
    private final Integer o;
    private final Integer p;
    private final String q;
    private final boolean r;
    private final String s;
    private final JSONObject t;
    private final EventDetails u;
    private final String v;
    private final Map<String, String> w;
    private final long x;

    private AdResponse(Builder builder) {
        this.f4647a = builder.f4648a;
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
        this.l = builder.l;
        this.m = builder.m;
        this.n = builder.n;
        this.o = builder.o;
        this.p = builder.p;
        this.q = builder.q;
        this.r = builder.r;
        this.s = builder.s;
        this.t = builder.t;
        this.u = builder.u;
        this.v = builder.v;
        this.w = builder.w;
        this.x = DateAndTime.now().getTime();
    }

    public boolean hasJson() {
        return this.t != null;
    }

    public JSONObject getJsonBody() {
        return this.t;
    }

    public EventDetails getEventDetails() {
        return this.u;
    }

    public String getStringBody() {
        return this.s;
    }

    public String getAdType() {
        return this.f4647a;
    }

    public String getFullAdType() {
        return this.c;
    }

    public String getAdUnitId() {
        return this.b;
    }

    public String getNetworkType() {
        return this.d;
    }

    public String getRewardedVideoCurrencyName() {
        return this.e;
    }

    public String getRewardedVideoCurrencyAmount() {
        return this.f;
    }

    public String getRewardedVideoCompletionUrl() {
        return this.g;
    }

    public String getRedirectUrl() {
        return this.h;
    }

    public String getClickTrackingUrl() {
        return this.i;
    }

    public String getImpressionTrackingUrl() {
        return this.j;
    }

    public String getFailoverUrl() {
        return this.k;
    }

    public String getRequestId() {
        return this.l;
    }

    public boolean isScrollable() {
        return this.r;
    }

    public Integer getWidth() {
        return this.m;
    }

    public Integer getHeight() {
        return this.n;
    }

    public Integer getAdTimeoutMillis() {
        return this.o;
    }

    public Integer getRefreshTimeMillis() {
        return this.p;
    }

    public String getDspCreativeId() {
        return this.q;
    }

    public String getCustomEventClassName() {
        return this.v;
    }

    public Map<String, String> getServerExtras() {
        return new TreeMap(this.w);
    }

    public long getTimestamp() {
        return this.x;
    }

    public Builder toBuilder() {
        return new Builder().setAdType(this.f4647a).setNetworkType(this.d).setRedirectUrl(this.h).setClickTrackingUrl(this.i).setImpressionTrackingUrl(this.j).setFailoverUrl(this.k).setDimensions(this.m, this.n).setAdTimeoutDelayMilliseconds(this.o).setRefreshTimeMilliseconds(this.p).setDspCreativeId(this.q).setScrollable(Boolean.valueOf(this.r)).setResponseBody(this.s).setJsonBody(this.t).setEventDetails(this.u).setCustomEventClassName(this.v).setServerExtras(this.w);
    }

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f4648a;
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
        private String l;
        private Integer m;
        private Integer n;
        private Integer o;
        private Integer p;
        private String q;
        private String s;
        private JSONObject t;
        private EventDetails u;
        private String v;
        private boolean r = false;
        private Map<String, String> w = new TreeMap();

        public Builder setAdType(String str) {
            this.f4648a = str;
            return this;
        }

        public Builder setAdUnitId(String str) {
            this.b = str;
            return this;
        }

        public Builder setFullAdType(String str) {
            this.c = str;
            return this;
        }

        public Builder setNetworkType(String str) {
            this.d = str;
            return this;
        }

        public Builder setRewardedVideoCurrencyName(String str) {
            this.e = str;
            return this;
        }

        public Builder setRewardedVideoCurrencyAmount(String str) {
            this.f = str;
            return this;
        }

        public Builder setRewardedVideoCompletionUrl(String str) {
            this.g = str;
            return this;
        }

        public Builder setRedirectUrl(String str) {
            this.h = str;
            return this;
        }

        public Builder setClickTrackingUrl(String str) {
            this.i = str;
            return this;
        }

        public Builder setImpressionTrackingUrl(String str) {
            this.j = str;
            return this;
        }

        public Builder setFailoverUrl(String str) {
            this.k = str;
            return this;
        }

        public Builder setRequestId(String str) {
            this.l = str;
            return this;
        }

        public Builder setDimensions(Integer num, Integer num2) {
            this.m = num;
            this.n = num2;
            return this;
        }

        public Builder setAdTimeoutDelayMilliseconds(Integer num) {
            this.o = num;
            return this;
        }

        public Builder setRefreshTimeMilliseconds(Integer num) {
            this.p = num;
            return this;
        }

        public Builder setScrollable(Boolean bool) {
            this.r = bool == null ? this.r : bool.booleanValue();
            return this;
        }

        public Builder setDspCreativeId(String str) {
            this.q = str;
            return this;
        }

        public Builder setResponseBody(String str) {
            this.s = str;
            return this;
        }

        public Builder setJsonBody(JSONObject jSONObject) {
            this.t = jSONObject;
            return this;
        }

        public Builder setEventDetails(EventDetails eventDetails) {
            this.u = eventDetails;
            return this;
        }

        public Builder setCustomEventClassName(String str) {
            this.v = str;
            return this;
        }

        public Builder setServerExtras(Map<String, String> map) {
            if (map == null) {
                this.w = new TreeMap();
            } else {
                this.w = new TreeMap(map);
            }
            return this;
        }

        public AdResponse build() {
            return new AdResponse(this);
        }
    }
}
