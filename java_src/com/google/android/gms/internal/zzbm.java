package com.google.android.gms.internal;

import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public class zzbm extends zzca {
    private static volatile Long zzbI = null;
    private static final Object zzqS = new Object();

    public zzbm(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, int i, int i2) {
        super(zzbdVar, str, str2, zzaVar, i, i2);
    }

    @Override // com.google.android.gms.internal.zzca
    protected void zzbd() throws IllegalAccessException, InvocationTargetException {
        if (zzbI == null) {
            synchronized (zzqS) {
                if (zzbI == null) {
                    zzbI = (Long) this.zzre.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzqV) {
            this.zzqV.zzbI = zzbI;
        }
    }
}
