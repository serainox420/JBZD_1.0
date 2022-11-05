package com.mopub.common;

import android.os.Build;
import com.facebook.appevents.AppEventsConstants;
import com.loopme.debugging.Params;
import com.mopub.network.AdResponse;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes3.dex */
public class AdReport implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final AdResponse f4316a;
    private final String b;
    private final String c;
    private final String d;
    private final Locale e;
    private final String f;

    public AdReport(String str, ClientMetadata clientMetadata, AdResponse adResponse) {
        this.b = str;
        this.c = clientMetadata.getSdkVersion();
        this.d = clientMetadata.getDeviceModel();
        this.e = clientMetadata.getDeviceLocale();
        this.f = clientMetadata.getDeviceId();
        this.f4316a = adResponse;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        a(sb, Params.SDK_VERSION, this.c);
        a(sb, "creative_id", this.f4316a.getDspCreativeId());
        a(sb, "platform_version", Integer.toString(Build.VERSION.SDK_INT));
        a(sb, "device_model", this.d);
        a(sb, "ad_unit_id", this.b);
        a(sb, "device_locale", this.e == null ? null : this.e.toString());
        a(sb, Params.DEVICE_ID, this.f);
        a(sb, "network_type", this.f4316a.getNetworkType());
        a(sb, "platform", io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE);
        a(sb, "timestamp", a(this.f4316a.getTimestamp()));
        a(sb, "ad_type", this.f4316a.getAdType());
        Object width = this.f4316a.getWidth();
        Integer height = this.f4316a.getHeight();
        StringBuilder append = new StringBuilder().append("{");
        if (width == null) {
            width = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        }
        a(sb, "ad_size", append.append(width).append(", ").append(height == null ? AppEventsConstants.EVENT_PARAM_VALUE_NO : height).append("}").toString());
        return sb.toString();
    }

    public String getResponseString() {
        return this.f4316a.getStringBody();
    }

    public String getDspCreativeId() {
        return this.f4316a.getDspCreativeId();
    }

    private void a(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(" : ");
        sb.append(str2);
        sb.append("\n");
    }

    private String a(long j) {
        if (j != -1) {
            return new SimpleDateFormat("M/d/yy hh:mm:ss a z", Locale.US).format(new Date(j));
        }
        return null;
    }
}
