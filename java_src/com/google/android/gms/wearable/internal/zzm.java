package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.wearable.Wearable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzm<R extends Result> extends zzaad.zza<R, zzcx> {
    public zzm(GoogleApiClient googleApiClient) {
        super(Wearable.API, googleApiClient);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
    public /* synthetic */ void setResult(Object obj) {
        super.zzb((zzm<R>) ((Result) obj));
    }
}
