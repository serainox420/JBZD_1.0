package com.flurry.sdk;

import android.content.Context;
import com.flurry.android.FlurryEventRecordStatus;
import java.util.Map;
/* loaded from: classes2.dex */
public class hr implements kp {
    private static final String d = hr.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public im f2812a;
    public je b;
    public io c;

    public static synchronized hr a() {
        hr hrVar;
        synchronized (hr.class) {
            hrVar = (hr) jy.a().a(hr.class);
        }
        return hrVar;
    }

    @Override // com.flurry.sdk.kp
    public final void a(Context context) {
        lk.a(jh.class);
        this.b = new je();
        this.f2812a = new im();
        this.c = new io();
        if (!ly.a(context, "android.permission.INTERNET")) {
            km.b(d, "Application must declare permission: android.permission.INTERNET");
        }
        if (ly.a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return;
        }
        km.e(d, "It is highly recommended that the application declare permission: android.permission.ACCESS_NETWORK_STATE");
    }

    public static FlurryEventRecordStatus a(String str, String str2, Map<String, String> map) {
        jh b = b();
        FlurryEventRecordStatus flurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
        if (b != null) {
            return b.a(str, jj.a(str2), map);
        }
        return flurryEventRecordStatus;
    }

    public static void a(String str, String str2, Throwable th) {
        jh b = b();
        if (b != null) {
            b.a(str, str2, th.getClass().getName(), th);
        }
    }

    public static jh b() {
        lk b = lm.a().b();
        if (b == null) {
            return null;
        }
        return (jh) b.b(jh.class);
    }
}
