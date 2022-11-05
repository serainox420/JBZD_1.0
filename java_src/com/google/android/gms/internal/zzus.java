package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.auth.account.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2.dex */
public class zzus extends com.google.android.gms.common.internal.zzl<com.google.android.gms.auth.account.zzb> {
    public zzus(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 120, zzgVar, connectionCallbacks, onConnectionFailedListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzaA */
    public com.google.android.gms.auth.account.zzb zzh(IBinder iBinder) {
        return zzb.zza.zzaz(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.auth.account.IWorkAccountService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.auth.account.workaccount.START";
    }
}
