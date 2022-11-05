package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbro;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzbrm implements zzbro {
    private final Set<String> zzciJ;
    private final zzbro.zza zzciK;

    public zzbrm(zzbro.zza zzaVar, List<String> list) {
        if (list != null) {
            this.zzciJ = new HashSet(list);
        } else {
            this.zzciJ = null;
        }
        this.zzciK = zzaVar;
    }

    @Override // com.google.android.gms.internal.zzbro
    public zzbro.zza zzYe() {
        return this.zzciK;
    }

    protected String zza(zzbro.zza zzaVar, String str, String str2, long j) {
        String valueOf = String.valueOf(new Date(j).toString());
        String valueOf2 = String.valueOf(zzaVar);
        return new StringBuilder(String.valueOf(valueOf).length() + 6 + String.valueOf(valueOf2).length() + String.valueOf(str).length() + String.valueOf(str2).length()).append(valueOf).append(" [").append(valueOf2).append("] ").append(str).append(": ").append(str2).toString();
    }

    protected boolean zza(zzbro.zza zzaVar, String str) {
        return zzaVar.ordinal() >= this.zzciK.ordinal() && (this.zzciJ == null || zzaVar.ordinal() > zzbro.zza.DEBUG.ordinal() || this.zzciJ.contains(str));
    }

    protected void zzau(String str, String str2) {
        System.err.println(str2);
    }

    protected void zzav(String str, String str2) {
        System.out.println(str2);
    }

    protected void zzaw(String str, String str2) {
        System.out.println(str2);
    }

    protected void zzax(String str, String str2) {
        System.out.println(str2);
    }

    @Override // com.google.android.gms.internal.zzbro
    public void zzb(zzbro.zza zzaVar, String str, String str2, long j) {
        if (zza(zzaVar, str)) {
            String zza = zza(zzaVar, str, str2, j);
            switch (zzaVar) {
                case ERROR:
                    zzau(str, zza);
                    return;
                case WARN:
                    zzav(str, zza);
                    return;
                case INFO:
                    zzaw(str, zza);
                    return;
                case DEBUG:
                    zzax(str, zza);
                    return;
                default:
                    throw new RuntimeException("Should not reach here!");
            }
        }
    }
}
