package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzk;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
/* loaded from: classes2.dex */
public class zzd extends com.google.android.gms.common.internal.zzl<zzk> {
    private final GoogleSignInOptions zzakw;

    public zzd(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleSignInOptions googleSignInOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 91, zzgVar, connectionCallbacks, onConnectionFailedListener);
        googleSignInOptions = googleSignInOptions == null ? new GoogleSignInOptions.Builder().build() : googleSignInOptions;
        if (!zzgVar.zzxM().isEmpty()) {
            GoogleSignInOptions.Builder builder = new GoogleSignInOptions.Builder(googleSignInOptions);
            for (Scope scope : zzgVar.zzxM()) {
                builder.requestScopes(scope, new Scope[0]);
            }
            googleSignInOptions = builder.build();
        }
        this.zzakw = googleSignInOptions;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzaK */
    public zzk zzh(IBinder iBinder) {
        return zzk.zza.zzaM(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public boolean zzrr() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public Intent zzrs() {
        return zze.zza(getContext(), this.zzakw);
    }

    public GoogleSignInOptions zzrt() {
        return this.zzakw;
    }
}
