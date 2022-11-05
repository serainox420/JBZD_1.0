package com.google.android.gms.internal;

import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public class zzbx extends zzca {
    public zzbx(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, int i, int i2) {
        super(zzbdVar, str, str2, zzaVar, i, i2);
    }

    @Override // com.google.android.gms.internal.zzca
    protected void zzbd() throws IllegalAccessException, InvocationTargetException {
        this.zzqV.zzbK = 2;
        boolean booleanValue = ((Boolean) this.zzre.invoke(null, this.zzpz.getApplicationContext())).booleanValue();
        synchronized (this.zzqV) {
            if (booleanValue) {
                this.zzqV.zzbK = 1;
            } else {
                this.zzqV.zzbK = 0;
            }
        }
    }
}
