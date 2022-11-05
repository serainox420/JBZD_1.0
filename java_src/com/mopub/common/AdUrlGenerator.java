package com.mopub.common;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.mopub.common.ClientMetadata;
import com.mopub.common.util.DateAndTime;
/* loaded from: classes.dex */
public abstract class AdUrlGenerator extends BaseUrlGenerator {

    /* renamed from: a  reason: collision with root package name */
    protected Context f4317a;
    protected String b;
    protected String c;
    protected Location d;

    public AdUrlGenerator(Context context) {
        this.f4317a = context;
    }

    /* renamed from: withAdUnitId */
    public AdUrlGenerator mo553withAdUnitId(String str) {
        this.b = str;
        return this;
    }

    public AdUrlGenerator withKeywords(String str) {
        this.c = str;
        return this;
    }

    public AdUrlGenerator withLocation(Location location) {
        this.d = location;
        return this;
    }

    protected void a(String str) {
        b("id", str);
    }

    protected void b(String str) {
        b("nv", str);
    }

    protected void c(String str) {
        b("q", str);
    }

    protected void a(Location location) {
        Location lastKnownLocation = LocationService.getLastKnownLocation(this.f4317a, MoPub.getLocationPrecision(), MoPub.getLocationAwareness());
        if (lastKnownLocation != null && (location == null || lastKnownLocation.getTime() >= location.getTime())) {
            location = lastKnownLocation;
        }
        if (location != null) {
            b("ll", location.getLatitude() + "," + location.getLongitude());
            b("lla", String.valueOf((int) location.getAccuracy()));
            b("llf", String.valueOf(b(location)));
            if (location == lastKnownLocation) {
                b("llsdk", "1");
            }
        }
    }

    protected void d(String str) {
        b("z", str);
    }

    protected void e(String str) {
        b("o", str);
    }

    protected void a(float f) {
        b("sc_a", "" + f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z) {
        if (z) {
            b("mr", "1");
        }
    }

    protected void f(String str) {
        b("mcc", str == null ? "" : str.substring(0, m(str)));
    }

    protected void g(String str) {
        b("mnc", str == null ? "" : str.substring(m(str)));
    }

    protected void h(String str) {
        b("iso", str);
    }

    protected void i(String str) {
        b("cn", str);
    }

    protected void a(ClientMetadata.MoPubNetworkType moPubNetworkType) {
        a("ct", moPubNetworkType);
    }

    protected void j(String str) {
        if (!TextUtils.isEmpty(str)) {
            b("bundle", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ClientMetadata clientMetadata) {
        a(this.b);
        b(clientMetadata.getSdkVersion());
        a(clientMetadata.getDeviceManufacturer(), clientMetadata.getDeviceModel(), clientMetadata.getDeviceProduct());
        j(clientMetadata.getAppPackageName());
        c(this.c);
        a(this.d);
        d(DateAndTime.getTimeZoneOffsetString());
        e(clientMetadata.getOrientationString());
        a(clientMetadata.getDeviceDimensions());
        a(clientMetadata.getDensity());
        String networkOperatorForUrl = clientMetadata.getNetworkOperatorForUrl();
        f(networkOperatorForUrl);
        g(networkOperatorForUrl);
        h(clientMetadata.getIsoCountryCode());
        i(clientMetadata.getNetworkOperatorName());
        a(clientMetadata.getActiveNetworkType());
        l(clientMetadata.getAppVersion());
        b();
    }

    private void a(String str, ClientMetadata.MoPubNetworkType moPubNetworkType) {
        b(str, moPubNetworkType.toString());
    }

    private int m(String str) {
        return Math.min(3, str.length());
    }

    private static int b(Location location) {
        Preconditions.checkNotNull(location);
        return (int) (System.currentTimeMillis() - location.getTime());
    }

    @Deprecated
    public AdUrlGenerator withFacebookSupported(boolean z) {
        return this;
    }
}
