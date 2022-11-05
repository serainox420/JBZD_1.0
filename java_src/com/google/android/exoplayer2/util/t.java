package com.google.android.exoplayer2.util;

import android.annotation.TargetApi;
import android.os.Trace;
/* compiled from: TraceUtil.java */
/* loaded from: classes2.dex */
public final class t {
    public static void a(String str) {
        if (v.f3519a >= 18) {
            b(str);
        }
    }

    public static void a() {
        if (v.f3519a >= 18) {
            b();
        }
    }

    @TargetApi(18)
    private static void b(String str) {
        Trace.beginSection(str);
    }

    @TargetApi(18)
    private static void b() {
        Trace.endSection();
    }
}
