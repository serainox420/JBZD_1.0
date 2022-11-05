package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzvr;
/* loaded from: classes2.dex */
public final class zzvp extends com.google.android.gms.common.internal.zzl<zzvr> {
    private final Bundle zzaje;

    public zzvp(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, com.google.android.gms.auth.api.zzb zzbVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 16, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzaje = zzbVar == null ? new Bundle() : zzbVar.zzqU();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzaH */
    public zzvr zzh(IBinder iBinder) {
        return zzvr.zza.zzaJ(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.auth.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public Bundle zzqL() {
        return this.zzaje;
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public boolean zzrd() {
        com.google.android.gms.common.internal.zzg zzxW = zzxW();
        return !TextUtils.isEmpty(zzxW.getAccountName()) && !zzxW.zzc(com.google.android.gms.auth.api.zza.API).isEmpty();
    }
}
