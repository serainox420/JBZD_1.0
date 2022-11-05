package com.google.android.gms.internal;

import com.google.android.gms.fitness.result.DataSourcesResult;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaon;
/* loaded from: classes2.dex */
public class zzaoc extends zzaon.zza {
    private final zzaad.zzb<DataSourcesResult> zzaUC;

    public zzaoc(zzaad.zzb<DataSourcesResult> zzbVar) {
        this.zzaUC = zzbVar;
    }

    @Override // com.google.android.gms.internal.zzaon
    public void zza(DataSourcesResult dataSourcesResult) {
        this.zzaUC.setResult(dataSourcesResult);
    }
}
