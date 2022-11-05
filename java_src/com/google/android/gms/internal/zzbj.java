package com.google.android.gms.internal;

import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public class zzbj extends zzca {
    private static volatile String zzqR = null;
    private static final Object zzqS = new Object();

    public zzbj(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, int i, int i2) {
        super(zzbdVar, str, str2, zzaVar, i, i2);
    }

    @Override // com.google.android.gms.internal.zzca
    protected void zzbd() throws IllegalAccessException, InvocationTargetException {
        this.zzqV.zzbw = "E";
        if (zzqR == null) {
            synchronized (zzqS) {
                if (zzqR == null) {
                    zzqR = (String) this.zzre.invoke(null, this.zzpz.getContext());
                }
            }
        }
        synchronized (this.zzqV) {
            this.zzqV.zzbw = zzam.zza(zzqR.getBytes(), true);
        }
    }
}
