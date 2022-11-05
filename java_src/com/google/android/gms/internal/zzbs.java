package com.google.android.gms.internal;

import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public class zzbs extends zzca {
    private static volatile String zzbb = null;
    private static final Object zzqS = new Object();

    public zzbs(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, int i, int i2) {
        super(zzbdVar, str, str2, zzaVar, i, i2);
    }

    @Override // com.google.android.gms.internal.zzca
    protected void zzbd() throws IllegalAccessException, InvocationTargetException {
        this.zzqV.zzbb = "E";
        if (zzbb == null) {
            synchronized (zzqS) {
                if (zzbb == null) {
                    zzbb = (String) this.zzre.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzqV) {
            this.zzqV.zzbb = zzbb;
        }
    }
}
