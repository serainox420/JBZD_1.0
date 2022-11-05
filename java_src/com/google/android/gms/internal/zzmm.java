package com.google.android.gms.internal;

import com.google.android.gms.internal.zzmh;
import com.google.android.gms.internal.zzmu;
import java.lang.ref.WeakReference;
@zzme
/* loaded from: classes.dex */
public final class zzmm extends zzmu.zza {
    private final WeakReference<zzmh.zza> zzSl;

    public zzmm(zzmh.zza zzaVar) {
        this.zzSl = new WeakReference<>(zzaVar);
    }

    @Override // com.google.android.gms.internal.zzmu
    public void zza(zzmn zzmnVar) {
        zzmh.zza zzaVar = this.zzSl.get();
        if (zzaVar != null) {
            zzaVar.zza(zzmnVar);
        }
    }
}
