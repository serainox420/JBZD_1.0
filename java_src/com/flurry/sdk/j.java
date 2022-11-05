package com.flurry.sdk;

import com.flurry.android.FlurryAdListener;
import com.flurry.android.ICustomAdNetworkHandler;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class j {
    private static j e;
    private static final String f = j.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public WeakReference<FlurryAdListener> f2888a = new WeakReference<>(null);
    public ICustomAdNetworkHandler b = null;
    public final e c = new e();
    private volatile String g = null;
    public volatile String d = null;
    private volatile boolean h = false;

    public static synchronized j a() {
        j jVar;
        synchronized (j.class) {
            if (e == null) {
                e = new j();
            }
            jVar = e;
        }
        return jVar;
    }

    private j() {
    }

    public final FlurryAdListener b() {
        return this.f2888a.get();
    }

    public final String c() {
        if (this.g != null) {
            return this.g + "/v16/getAds.do";
        }
        if (d()) {
            return "https://ads.flurry.com/v16/getAds.do";
        }
        return "http://ads.flurry.com/v16/getAds.do";
    }

    public static boolean d() {
        return ((Boolean) lp.a().a("UseHttps")).booleanValue();
    }
}
