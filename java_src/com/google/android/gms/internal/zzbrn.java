package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbro;
import java.io.PrintWriter;
import java.io.StringWriter;
/* loaded from: classes2.dex */
public class zzbrn {
    private final String prefix;
    private final zzbro zzcbE;
    private final String zzciL;

    public zzbrn(zzbro zzbroVar, String str) {
        this(zzbroVar, str, null);
    }

    public zzbrn(zzbro zzbroVar, String str, String str2) {
        this.zzcbE = zzbroVar;
        this.zzciL = str;
        this.prefix = str2;
    }

    private long zzaaE() {
        return System.currentTimeMillis();
    }

    private String zzj(String str, Object... objArr) {
        if (objArr.length > 0) {
            str = String.format(str, objArr);
        }
        if (this.prefix == null) {
            return str;
        }
        String str2 = this.prefix;
        return new StringBuilder(String.valueOf(str2).length() + 3 + String.valueOf(str).length()).append(str2).append(" - ").append(str).toString();
    }

    private static String zzk(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public void info(String str) {
        this.zzcbE.zzb(zzbro.zza.INFO, this.zzciL, zzj(str, new Object[0]), zzaaE());
    }

    public void warn(String str) {
        zze(str, null);
    }

    public void zza(String str, Throwable th, Object... objArr) {
        if (zzaaD()) {
            String zzj = zzj(str, objArr);
            if (th != null) {
                String valueOf = String.valueOf(zzk(th));
                zzj = new StringBuilder(String.valueOf(zzj).length() + 1 + String.valueOf(valueOf).length()).append(zzj).append("\n").append(valueOf).toString();
            }
            this.zzcbE.zzb(zzbro.zza.DEBUG, this.zzciL, zzj, zzaaE());
        }
    }

    public boolean zzaaD() {
        return this.zzcbE.zzYe().ordinal() <= zzbro.zza.DEBUG.ordinal();
    }

    public void zzd(String str, Throwable th) {
        String valueOf = String.valueOf(zzj(str, new Object[0]));
        String valueOf2 = String.valueOf(zzk(th));
        this.zzcbE.zzb(zzbro.zza.ERROR, this.zzciL, new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length()).append(valueOf).append("\n").append(valueOf2).toString(), zzaaE());
    }

    public void zze(String str, Throwable th) {
        String zzj = zzj(str, new Object[0]);
        if (th != null) {
            String valueOf = String.valueOf(zzk(th));
            zzj = new StringBuilder(String.valueOf(zzj).length() + 1 + String.valueOf(valueOf).length()).append(zzj).append("\n").append(valueOf).toString();
        }
        this.zzcbE.zzb(zzbro.zza.WARN, this.zzciL, zzj, zzaaE());
    }

    public void zzi(String str, Object... objArr) {
        zza(str, null, objArr);
    }
}
