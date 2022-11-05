package com.google.android.gms.internal;

import android.util.Log;
/* loaded from: classes2.dex */
public class zzacm {
    private final String mTag;
    private final com.google.android.gms.common.internal.zzq zzaGO;
    private final String zzaGs;
    private final int zzafc;

    private zzacm(String str, String str2) {
        this.zzaGs = str2;
        this.mTag = str;
        this.zzaGO = new com.google.android.gms.common.internal.zzq(str);
        this.zzafc = getLogLevel();
    }

    public zzacm(String str, String... strArr) {
        this(str, zzd(strArr));
    }

    private int getLogLevel() {
        int i = 2;
        while (7 >= i && !Log.isLoggable(this.mTag, i)) {
            i++;
        }
        return i;
    }

    private static String zzd(String... strArr) {
        if (strArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        for (String str : strArr) {
            if (sb.length() > 1) {
                sb.append(",");
            }
            sb.append(str);
        }
        sb.append(']').append(' ');
        return sb.toString();
    }

    protected String format(String str, Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(str, objArr);
        }
        return this.zzaGs.concat(str);
    }

    public void zza(String str, Object... objArr) {
        if (zzak(2)) {
            Log.v(this.mTag, format(str, objArr));
        }
    }

    public boolean zzak(int i) {
        return this.zzafc <= i;
    }

    public void zzb(String str, Object... objArr) {
        if (zzak(3)) {
            Log.d(this.mTag, format(str, objArr));
        }
    }

    public void zze(String str, Object... objArr) {
        Log.i(this.mTag, format(str, objArr));
    }

    public void zzf(String str, Object... objArr) {
        Log.w(this.mTag, format(str, objArr));
    }
}
