package com.google.android.gms.internal;

import android.content.Context;
@zzme
/* loaded from: classes.dex */
public abstract class zznk {
    public abstract void zza(Context context, zzne zzneVar, zzqh zzqhVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public void zze(zzne zzneVar) {
        if (zzneVar.zzjv() != null) {
            zzneVar.zzjv().release();
        }
    }
}
