package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzabh;
/* loaded from: classes2.dex */
public abstract class zzaan<L> implements zzabh.zzc<L> {
    private final DataHolder zzaBi;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzaan(DataHolder dataHolder) {
        this.zzaBi = dataHolder;
    }

    protected abstract void zza(L l, DataHolder dataHolder);

    @Override // com.google.android.gms.internal.zzabh.zzc
    public final void zzs(L l) {
        zza(l, this.zzaBi);
    }

    @Override // com.google.android.gms.internal.zzabh.zzc
    public void zzwc() {
        if (this.zzaBi != null) {
            this.zzaBi.close();
        }
    }
}
