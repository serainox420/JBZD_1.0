package com.google.android.gms.internal;

import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbt extends zzca {
    private List<Long> zzqY;

    public zzbt(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, int i, int i2) {
        super(zzbdVar, str, str2, zzaVar, i, i2);
        this.zzqY = null;
    }

    @Override // com.google.android.gms.internal.zzca
    protected void zzbd() throws IllegalAccessException, InvocationTargetException {
        this.zzqV.zzbx = -1L;
        this.zzqV.zzby = -1L;
        if (this.zzqY == null) {
            this.zzqY = (List) this.zzre.invoke(null, this.zzpz.getContext());
        }
        if (this.zzqY == null || this.zzqY.size() != 2) {
            return;
        }
        synchronized (this.zzqV) {
            this.zzqV.zzbx = Long.valueOf(this.zzqY.get(0).longValue());
            this.zzqV.zzby = Long.valueOf(this.zzqY.get(1).longValue());
        }
    }
}
