package com.google.android.gms.internal;

import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public class zzbr extends zzca {
    private long zzqX;

    public zzbr(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, int i, int i2) {
        super(zzbdVar, str, str2, zzaVar, i, i2);
        this.zzqX = -1L;
    }

    @Override // com.google.android.gms.internal.zzca
    protected void zzbd() throws IllegalAccessException, InvocationTargetException {
        this.zzqV.zzbl = -1L;
        if (this.zzqX == -1) {
            this.zzqX = ((Integer) this.zzre.invoke(null, this.zzpz.getContext())).intValue();
        }
        synchronized (this.zzqV) {
            this.zzqV.zzbl = Long.valueOf(this.zzqX);
        }
    }
}
