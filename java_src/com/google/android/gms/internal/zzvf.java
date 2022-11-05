package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzvl;
/* loaded from: classes2.dex */
public final class zzvf extends com.google.android.gms.common.internal.zzl<zzvl> {
    private final Auth.AuthCredentialsOptions zzajQ;

    public zzvf(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Auth.AuthCredentialsOptions authCredentialsOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 68, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzajQ = authCredentialsOptions;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzaE */
    public zzvl zzh(IBinder iBinder) {
        return zzvl.zza.zzaG(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public Bundle zzqL() {
        return this.zzajQ == null ? new Bundle() : this.zzajQ.zzqL();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Auth.AuthCredentialsOptions zzrc() {
        return this.zzajQ;
    }
}
