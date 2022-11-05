package com.google.android.gms.internal;

import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public class zzbn extends zzca {
    private long startTime;

    public zzbn(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, long j, int i, int i2) {
        super(zzbdVar, str, str2, zzaVar, i, i2);
        this.startTime = j;
    }

    @Override // com.google.android.gms.internal.zzca
    protected void zzbd() throws IllegalAccessException, InvocationTargetException {
        long longValue = ((Long) this.zzre.invoke(null, new Object[0])).longValue();
        synchronized (this.zzqV) {
            this.zzqV.zzca = Long.valueOf(longValue);
            if (this.startTime != 0) {
                this.zzqV.zzbq = Long.valueOf(longValue - this.startTime);
                this.zzqV.zzbv = Long.valueOf(this.startTime);
            }
        }
    }
}
