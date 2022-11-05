package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.internal.zzbt;
/* loaded from: classes2.dex */
public final class zzac extends zzbt.zza {
    private zzr zzbUe;
    private zzad zzbUi;
    private final Object zzrJ = new Object();

    @Override // com.google.android.gms.wearable.internal.zzbt
    public void zzE(int i, int i2) {
        zzad zzadVar;
        zzr zzrVar;
        synchronized (this.zzrJ) {
            zzadVar = this.zzbUi;
            zzrVar = new zzr(i, i2);
            this.zzbUe = zzrVar;
        }
        if (zzadVar != null) {
            zzadVar.zzb(zzrVar);
        }
    }

    public void zza(zzad zzadVar) {
        zzr zzrVar;
        synchronized (this.zzrJ) {
            this.zzbUi = (zzad) com.google.android.gms.common.internal.zzac.zzw(zzadVar);
            zzrVar = this.zzbUe;
        }
        if (zzrVar != null) {
            zzadVar.zzb(zzrVar);
        }
    }
}
