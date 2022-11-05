package com.google.android.gms.internal;

import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public class zzbu extends zzca {
    private final StackTraceElement[] zzqZ;

    public zzbu(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(zzbdVar, str, str2, zzaVar, i, i2);
        this.zzqZ = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.zzca
    protected void zzbd() throws IllegalAccessException, InvocationTargetException {
        if (this.zzqZ != null) {
            zzbb zzbbVar = new zzbb((String) this.zzre.invoke(null, this.zzqZ));
            synchronized (this.zzqV) {
                this.zzqV.zzbJ = zzbbVar.zzqi;
                if (zzbbVar.zzqj.booleanValue()) {
                    this.zzqV.zzbR = Integer.valueOf(zzbbVar.zzqk.booleanValue() ? 0 : 1);
                }
            }
        }
    }
}
