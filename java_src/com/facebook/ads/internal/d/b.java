package com.facebook.ads.internal.d;

import android.content.Context;
import android.os.Process;
import com.facebook.ads.BuildConfig;
import com.facebook.ads.internal.f.g;
import com.facebook.ads.internal.f.i;
import com.facebook.ads.internal.g.p;
import com.facebook.ads.internal.util.ag;
import com.facebook.ads.internal.util.n;
import com.facebook.ads.internal.util.o;
import java.lang.Thread;
/* loaded from: classes.dex */
public class b implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f2130a;
    private final Context b;

    public b(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Context context) {
        this.f2130a = uncaughtExceptionHandler;
        if (context == null) {
            throw new IllegalArgumentException("Missing Context");
        }
        this.b = context.getApplicationContext();
    }

    private void a(Thread thread, Throwable th) {
        if (this.f2130a != null) {
            this.f2130a.uncaughtException(thread, th);
            return;
        }
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable th2) {
        }
        try {
            System.exit(10);
        } catch (Throwable th3) {
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        String a2 = ag.a(th);
        if (a2 != null && a2.contains(BuildConfig.APPLICATION_ID)) {
            o.a(new p(g.b(), g.c(), new n(a2, i.f)), this.b);
        }
        a(thread, th);
    }
}
