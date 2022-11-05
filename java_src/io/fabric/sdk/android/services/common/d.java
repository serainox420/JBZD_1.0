package io.fabric.sdk.android.services.common;

import android.content.Context;
import com.mopub.common.GpsHelper;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdvertisingInfoReflectionStrategy.java */
/* loaded from: classes3.dex */
public class d implements f {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5665a;

    public d(Context context) {
        this.f5665a = context.getApplicationContext();
    }

    boolean a(Context context) {
        try {
            return ((Integer) Class.forName("com.google.android.gms.common.GooglePlayServicesUtil").getMethod("isGooglePlayServicesAvailable", Context.class).invoke(null, context)).intValue() == 0;
        } catch (Exception e) {
            return false;
        }
    }

    @Override // io.fabric.sdk.android.services.common.f
    public b a() {
        if (a(this.f5665a)) {
            return new b(b(), c());
        }
        return null;
    }

    private String b() {
        try {
            return (String) Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("getId", new Class[0]).invoke(d(), new Object[0]);
        } catch (Exception e) {
            io.fabric.sdk.android.c.h().d("Fabric", "Could not call getId on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
            return null;
        }
    }

    private boolean c() {
        try {
            return ((Boolean) Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod(GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, new Class[0]).invoke(d(), new Object[0])).booleanValue();
        } catch (Exception e) {
            io.fabric.sdk.android.c.h().d("Fabric", "Could not call isLimitAdTrackingEnabled on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
            return false;
        }
    }

    private Object d() {
        try {
            return Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", Context.class).invoke(null, this.f5665a);
        } catch (Exception e) {
            io.fabric.sdk.android.c.h().d("Fabric", "Could not call getAdvertisingIdInfo on com.google.android.gms.ads.identifier.AdvertisingIdClient");
            return null;
        }
    }
}
