package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public final class zzbvi {
    public static void zzax(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static <T> T zzw(T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        return t;
    }
}
