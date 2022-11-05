package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2.dex */
public class zzaag implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    private final boolean zzaAu;
    private zzaah zzaAv;
    public final Api<?> zzaxf;

    public zzaag(Api<?> api, boolean z) {
        this.zzaxf = api;
        this.zzaAu = z;
    }

    private void zzvL() {
        com.google.android.gms.common.internal.zzac.zzb(this.zzaAv, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        zzvL();
        this.zzaAv.onConnected(bundle);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
        zzvL();
        this.zzaAv.zza(connectionResult, this.zzaxf, this.zzaAu);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        zzvL();
        this.zzaAv.onConnectionSuspended(i);
    }

    public void zza(zzaah zzaahVar) {
        this.zzaAv = zzaahVar;
    }
}
