package com.google.android.gms.internal;

import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public class zzbq extends zzca {
    private static volatile Long zzqW = null;
    private static final Object zzqS = new Object();

    public zzbq(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, int i, int i2) {
        super(zzbdVar, str, str2, zzaVar, i, i2);
    }

    @Override // com.google.android.gms.internal.zzca
    protected void zzbd() throws IllegalAccessException, InvocationTargetException {
        if (zzqW == null) {
            synchronized (zzqS) {
                if (zzqW == null) {
                    zzqW = (Long) this.zzre.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzqV) {
            this.zzqV.zzbu = zzqW;
        }
    }
}
