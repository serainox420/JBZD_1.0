package com.smaato.soma;

import com.smaato.soma.debug.DebugCategory;
/* compiled from: CrashReportTemplate.java */
/* loaded from: classes3.dex */
public abstract class l<T> {
    public abstract T b() throws Exception;

    public T c() {
        try {
            return b();
        } catch (Throwable th) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Error", "Crash Detected", 2, DebugCategory.EXCEPTION, th));
            com.smaato.soma.internal.c.c.a().b();
            if (com.smaato.soma.debug.a.a()) {
                q.c().b(th);
            }
            return null;
        }
    }
}
