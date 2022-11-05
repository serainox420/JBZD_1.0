package com.google.android.gms.internal;

import android.support.v4.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class zzaap extends GoogleApiClient {
    private final UnsupportedOperationException zzaBj;

    public zzaap(String str) {
        this.zzaBj = new UnsupportedOperationException(str);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult blockingConnect() {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public PendingResult<Status> clearDefaultAccountAndReconnect() {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void connect() {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void disconnect() {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult getConnectionResult(Api<?> api) {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean hasConnectedApi(Api<?> api) {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnected() {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnecting() {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void reconnect() {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void stopAutoManage(FragmentActivity fragmentActivity) {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        throw this.zzaBj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        throw this.zzaBj;
    }
}
