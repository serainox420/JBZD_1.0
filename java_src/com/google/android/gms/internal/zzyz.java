package com.google.android.gms.internal;

import android.text.TextUtils;
import android.util.Log;
import java.util.Locale;
/* loaded from: classes.dex */
public class zzyz {
    private static boolean zzawE = false;
    protected final String mTag;
    private final boolean zzawF;
    private boolean zzawG;
    private boolean zzawH;
    private String zzawI;

    public zzyz(String str) {
        this(str, false);
    }

    public zzyz(String str, boolean z) {
        com.google.android.gms.common.internal.zzac.zzh(str, "The log tag cannot be null or empty.");
        this.mTag = str;
        this.zzawF = str.length() <= 23;
        this.zzawG = z;
        this.zzawH = false;
    }

    public void zza(String str, Object... objArr) {
    }

    public void zza(Throwable th, String str, Object... objArr) {
        Log.e(this.mTag, zzg(str, objArr), th);
    }

    public void zzar(boolean z) {
        this.zzawG = z;
    }

    public void zzb(String str, Object... objArr) {
        if (!zzuM()) {
            return;
        }
        Log.d(this.mTag, zzg(str, objArr));
    }

    public void zzb(Throwable th, String str, Object... objArr) {
        if (!zzuM()) {
            return;
        }
        Log.d(this.mTag, zzg(str, objArr), th);
    }

    public void zzc(String str, Object... objArr) {
        Log.e(this.mTag, zzg(str, objArr));
    }

    public void zzc(Throwable th, String str, Object... objArr) {
        Log.w(this.mTag, zzg(str, objArr), th);
    }

    public void zzcV(String str) {
        this.zzawI = TextUtils.isEmpty(str) ? null : String.format("[%s] ", str);
    }

    public void zze(String str, Object... objArr) {
        Log.i(this.mTag, zzg(str, objArr));
    }

    public void zzf(String str, Object... objArr) {
        Log.w(this.mTag, zzg(str, objArr));
    }

    protected String zzg(String str, Object... objArr) {
        if (objArr.length != 0) {
            str = String.format(Locale.ROOT, str, objArr);
        }
        if (!TextUtils.isEmpty(this.zzawI)) {
            String valueOf = String.valueOf(this.zzawI);
            String valueOf2 = String.valueOf(str);
            return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        }
        return str;
    }

    public boolean zzuM() {
        return this.zzawG || (this.zzawF && Log.isLoggable(this.mTag, 3));
    }
}
