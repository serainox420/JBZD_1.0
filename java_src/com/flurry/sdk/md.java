package com.flurry.sdk;

import android.content.Context;
import com.flurry.sdk.lq;
import java.lang.Thread;
/* loaded from: classes2.dex */
public class md implements kp, lq.a, Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3055a = md.class.getSimpleName();
    private boolean b;

    @Override // com.flurry.sdk.kp
    public final void a(Context context) {
        lp a2 = lp.a();
        this.b = ((Boolean) a2.a("CaptureUncaughtExceptions")).booleanValue();
        a2.a("CaptureUncaughtExceptions", (lq.a) this);
        km.a(4, f3055a, "initSettings, CrashReportingEnabled = " + this.b);
        me a3 = me.a();
        synchronized (a3.b) {
            a3.b.put(this, null);
        }
    }

    @Override // com.flurry.sdk.lq.a
    public final void a(String str, Object obj) {
        if (str.equals("CaptureUncaughtExceptions")) {
            this.b = ((Boolean) obj).booleanValue();
            km.a(4, f3055a, "onSettingUpdate, CrashReportingEnabled = " + this.b);
            return;
        }
        km.a(6, f3055a, "onSettingUpdate internal error!");
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        th.printStackTrace();
        if (this.b) {
            String str = "";
            StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace != null && stackTrace.length > 0) {
                StringBuilder sb = new StringBuilder();
                if (th.getMessage() != null) {
                    sb.append(" (").append(th.getMessage()).append(")\n");
                }
                str = sb.toString();
            } else if (th.getMessage() != null) {
                str = th.getMessage();
            }
            hr.a();
            hr.a("uncaught", str, th);
        }
        lm.a().d();
        jp.a().f();
    }
}
