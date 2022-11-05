package com.google.android.gms.internal;

import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public class zzbv extends zzca {
    public zzbv(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, int i, int i2) {
        super(zzbdVar, str, str2, zzaVar, i, i2);
    }

    @Override // com.google.android.gms.internal.zzca
    protected void zzbd() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.zzqV) {
            zzbc zzbcVar = new zzbc((String) this.zzre.invoke(null, new Object[0]));
            this.zzqV.zzbM = zzbcVar.zzql;
            this.zzqV.zzbN = zzbcVar.zzqm;
        }
    }
}
