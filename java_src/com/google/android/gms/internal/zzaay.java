package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzaad;
/* loaded from: classes2.dex */
public class zzaay<O extends Api.ApiOptions> extends zzaap {
    private final com.google.android.gms.common.api.zzc<O> zzaCK;

    public zzaay(com.google.android.gms.common.api.zzc<O> zzcVar) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.zzaCK = zzcVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Context getContext() {
        return this.zzaCK.getApplicationContext();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Looper getLooper() {
        return this.zzaCK.getLooper();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, R extends Result, T extends zzaad.zza<R, A>> T zza(T t) {
        return (T) this.zzaCK.doRead((com.google.android.gms.common.api.zzc<O>) t);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zza(zzabx zzabxVar) {
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, T extends zzaad.zza<? extends Result, A>> T zzb(T t) {
        return (T) this.zzaCK.doWrite((com.google.android.gms.common.api.zzc<O>) t);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zzb(zzabx zzabxVar) {
    }
}
