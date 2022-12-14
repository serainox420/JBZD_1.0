package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
/* loaded from: classes.dex */
public final class zzac {
    public static int zza(int i, Object obj) {
        if (i == 0) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return i;
    }

    public static long zza(long j, Object obj) {
        if (j == 0) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return j;
    }

    public static void zza(Handler handler) {
        if (Looper.myLooper() != handler.getLooper()) {
            throw new IllegalStateException("Must be called on the handler thread");
        }
    }

    public static void zza(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void zza(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }

    public static void zzaw(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void zzax(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static <T> T zzb(T t, Object obj) {
        if (t == null) {
            throw new NullPointerException(String.valueOf(obj));
        }
        return t;
    }

    public static void zzb(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void zzb(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static int zzcX(int i) {
        if (i == 0) {
            throw new IllegalArgumentException("Given Integer is zero");
        }
        return i;
    }

    public static void zzdj(String str) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException(str);
        }
    }

    public static void zzdk(String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException(str);
        }
    }

    public static String zzdr(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
        return str;
    }

    public static String zzh(String str, Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }

    public static <T> T zzw(T t) {
        if (t == null) {
            throw new NullPointerException("null reference");
        }
        return t;
    }

    public static void zzye() {
        zzdk("Must not be called on the main application thread");
    }
}
