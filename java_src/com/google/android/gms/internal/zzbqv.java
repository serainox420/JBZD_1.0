package com.google.android.gms.internal;

import com.google.firebase.database.c;
/* loaded from: classes2.dex */
public class zzbqv implements zzbqy {
    private final zzbph zzcag;
    private final zzbpc zzchL;
    private final c zzchM;

    public zzbqv(zzbpc zzbpcVar, c cVar, zzbph zzbphVar) {
        this.zzchL = zzbpcVar;
        this.zzcag = zzbphVar;
        this.zzchM = cVar;
    }

    @Override // com.google.android.gms.internal.zzbqy
    public String toString() {
        String valueOf = String.valueOf(zzWM());
        return new StringBuilder(String.valueOf(valueOf).length() + 7).append(valueOf).append(":CANCEL").toString();
    }

    public zzbph zzWM() {
        return this.zzcag;
    }

    @Override // com.google.android.gms.internal.zzbqy
    public void zzZT() {
        this.zzchL.zza(this.zzchM);
    }
}
