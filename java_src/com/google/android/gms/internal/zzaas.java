package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzaad;
import java.util.Collections;
/* loaded from: classes2.dex */
public class zzaas implements zzaau {
    private final zzaav zzaBk;

    public zzaas(zzaav zzaavVar) {
        this.zzaBk = zzaavVar;
    }

    @Override // com.google.android.gms.internal.zzaau
    public void begin() {
        this.zzaBk.zzwu();
        this.zzaBk.zzaAw.zzaBR = Collections.emptySet();
    }

    @Override // com.google.android.gms.internal.zzaau
    public void connect() {
        this.zzaBk.zzws();
    }

    @Override // com.google.android.gms.internal.zzaau
    public boolean disconnect() {
        return true;
    }

    @Override // com.google.android.gms.internal.zzaau
    public void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.zzaau
    public void onConnectionSuspended(int i) {
    }

    @Override // com.google.android.gms.internal.zzaau
    public <A extends Api.zzb, R extends Result, T extends zzaad.zza<R, A>> T zza(T t) {
        this.zzaBk.zzaAw.zzaAU.add(t);
        return t;
    }

    @Override // com.google.android.gms.internal.zzaau
    public void zza(ConnectionResult connectionResult, Api<?> api, boolean z) {
    }

    @Override // com.google.android.gms.internal.zzaau
    public <A extends Api.zzb, T extends zzaad.zza<? extends Result, A>> T zzb(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
