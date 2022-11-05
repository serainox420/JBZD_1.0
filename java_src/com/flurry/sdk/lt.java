package com.flurry.sdk;
/* loaded from: classes2.dex */
public final class lt {

    /* renamed from: a  reason: collision with root package name */
    private static long f3040a = 100;
    private static lt b = null;
    private final lu c = new lu();

    public static synchronized lt a() {
        lt ltVar;
        synchronized (lt.class) {
            if (b == null) {
                b = new lt();
            }
            ltVar = b;
        }
        return ltVar;
    }

    public lt() {
        this.c.f3041a = f3040a;
        this.c.b = true;
    }

    public final synchronized void a(kh<ls> khVar) {
        ki.a().a("com.flurry.android.sdk.TickEvent", khVar);
        if (ki.a().a("com.flurry.android.sdk.TickEvent") > 0) {
            this.c.a();
        }
    }

    public final synchronized void b(kh<ls> khVar) {
        ki.a().b("com.flurry.android.sdk.TickEvent", khVar);
        if (ki.a().a("com.flurry.android.sdk.TickEvent") == 0) {
            this.c.b();
        }
    }
}
