package com.facebook.ads.internal.d;

import android.content.Context;
import android.util.Log;
import com.facebook.ads.internal.h;
/* loaded from: classes.dex */
public class a {
    private static a b;
    private Context d;

    /* renamed from: a  reason: collision with root package name */
    private static final String f2129a = a.class.getName();
    private static boolean c = false;

    private a(Context context) {
        this.d = context;
    }

    public static a a(Context context) {
        if (b == null) {
            Context applicationContext = context.getApplicationContext();
            synchronized (applicationContext) {
                if (b == null) {
                    b = new a(applicationContext);
                }
            }
        }
        return b;
    }

    public synchronized void a() {
        if (!c) {
            if (h.c(this.d)) {
                try {
                    Thread.setDefaultUncaughtExceptionHandler(new b(Thread.getDefaultUncaughtExceptionHandler(), this.d));
                } catch (SecurityException e) {
                    Log.e(f2129a, "No permissions to set the default uncaught exception handler", e);
                }
            }
            c = true;
        }
    }
}
