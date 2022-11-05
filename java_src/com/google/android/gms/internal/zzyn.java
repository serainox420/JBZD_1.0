package com.google.android.gms.internal;

import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
/* loaded from: classes2.dex */
public abstract class zzyn<R extends Result> extends zzaad.zza<R, zzyq> {
    public zzyn(GoogleApiClient googleApiClient) {
        super(Cast.API, googleApiClient);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
    public /* synthetic */ void setResult(Object obj) {
        super.zzb((zzyn<R>) ((Result) obj));
    }

    public void zzck(int i) {
        zzb((zzyn<R>) zzc(new Status(i)));
    }

    public void zze(int i, String str) {
        zzb((zzyn<R>) zzc(new Status(i, str, null)));
    }
}
