package com.google.android.gms.internal;

import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public class zzbl extends zzca {
    public zzbl(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, int i, int i2) {
        super(zzbdVar, str, str2, zzaVar, i, i2);
    }

    @Override // com.google.android.gms.internal.zzca
    protected void zzbd() throws IllegalAccessException, InvocationTargetException {
        this.zzqV.zzbe = -1L;
        this.zzqV.zzbf = -1L;
        int[] iArr = (int[]) this.zzre.invoke(null, this.zzpz.getContext());
        synchronized (this.zzqV) {
            this.zzqV.zzbe = Long.valueOf(iArr[0]);
            this.zzqV.zzbf = Long.valueOf(iArr[1]);
        }
    }
}
