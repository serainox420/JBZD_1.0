package android.support.v4.os;

import android.annotation.TargetApi;
import android.os.Trace;
/* compiled from: TraceJellybeanMR2.java */
@TargetApi(18)
/* loaded from: classes.dex */
class j {
    public static void a(String str) {
        Trace.beginSection(str);
    }

    public static void a() {
        Trace.endSection();
    }
}
