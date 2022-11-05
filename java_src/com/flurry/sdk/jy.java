package com.flurry.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
/* loaded from: classes2.dex */
public class jy {
    private static final String e = jy.class.getSimpleName();
    private static jy f;

    /* renamed from: a  reason: collision with root package name */
    public final Context f2947a;
    public final Handler c;
    public final String d;
    private final ko h;
    public final Handler b = new Handler(Looper.getMainLooper());
    private final HandlerThread g = new HandlerThread("FlurryAgent");

    public static jy a() {
        return f;
    }

    public static synchronized void a(Context context, String str) {
        synchronized (jy.class) {
            if (f != null) {
                if (!f.d.equals(str)) {
                    throw new IllegalStateException("Only one API key per application is supported!");
                }
                km.e(e, "Flurry is already initialized");
            } else if (context == null) {
                throw new IllegalArgumentException("Context cannot be null");
            } else {
                if (TextUtils.isEmpty(str)) {
                    throw new IllegalArgumentException("API key must be specified");
                }
                jy jyVar = new jy(context, str);
                f = jyVar;
                jyVar.h.a(context);
            }
        }
    }

    private jy(Context context, String str) {
        this.f2947a = context.getApplicationContext();
        this.g.start();
        this.c = new Handler(this.g.getLooper());
        this.d = str;
        this.h = new ko();
    }

    public final void a(Runnable runnable) {
        this.b.post(runnable);
    }

    public final void b(Runnable runnable) {
        this.c.post(runnable);
    }

    public final void a(Runnable runnable, long j) {
        if (runnable != null) {
            this.c.postDelayed(runnable, j);
        }
    }

    public final kp a(Class<? extends kp> cls) {
        return this.h.b(cls);
    }
}
