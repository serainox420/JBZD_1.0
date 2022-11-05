package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.internal.zzaax;
/* loaded from: classes2.dex */
public final class zzaaj<O extends Api.ApiOptions> extends com.google.android.gms.common.api.zzc<O> {
    private final Api.zze zzaAJ;
    private final zzaag zzaAK;
    private final com.google.android.gms.common.internal.zzg zzaAL;
    private final Api.zza<? extends zzbai, zzbaj> zzazo;

    public zzaaj(Context context, Api<O> api, Looper looper, Api.zze zzeVar, zzaag zzaagVar, com.google.android.gms.common.internal.zzg zzgVar, Api.zza<? extends zzbai, zzbaj> zzaVar) {
        super(context, api, looper);
        this.zzaAJ = zzeVar;
        this.zzaAK = zzaagVar;
        this.zzaAL = zzgVar;
        this.zzazo = zzaVar;
        this.zzayX.zzb(this);
    }

    @Override // com.google.android.gms.common.api.zzc
    public Api.zze buildApiClient(Looper looper, zzaax.zza<O> zzaVar) {
        this.zzaAK.zza(zzaVar);
        return this.zzaAJ;
    }

    @Override // com.google.android.gms.common.api.zzc
    public zzabr createSignInCoordinator(Context context, Handler handler) {
        return new zzabr(context, handler, this.zzaAL, this.zzazo);
    }

    public Api.zze zzvU() {
        return this.zzaAJ;
    }
}
