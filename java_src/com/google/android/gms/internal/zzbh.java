package com.google.android.gms.internal;

import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public class zzbh extends zzca {
    public zzbh(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, int i, int i2) {
        super(zzbdVar, str, str2, zzaVar, i, i2);
    }

    @Override // com.google.android.gms.internal.zzca
    protected void zzbd() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.zzqV) {
            this.zzqV.zzbc = -1L;
            this.zzqV.zzbc = (Long) this.zzre.invoke(null, this.zzpz.getContext());
        }
    }
}
