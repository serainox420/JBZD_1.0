package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzuq;
/* loaded from: classes2.dex */
public class zzun extends com.google.android.gms.common.internal.zzl<zzuq> {
    private final String zzaiq;

    public zzun(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, com.google.android.gms.common.internal.zzg zzgVar) {
        super(context, looper, 77, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzaiq = zzgVar.zzxO();
    }

    private Bundle zzqM() {
        Bundle bundle = new Bundle();
        bundle.putString("authPackage", this.zzaiq);
        return bundle;
    }

    public void zza(zzup zzupVar) {
        try {
            ((zzuq) zzxD()).zza(zzupVar);
        } catch (RemoteException e) {
        }
    }

    public void zza(zzup zzupVar, String str) {
        try {
            ((zzuq) zzxD()).zza(zzupVar, str);
        } catch (RemoteException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzaq */
    public zzuq zzh(IBinder iBinder) {
        return zzuq.zza.zzas(iBinder);
    }

    public void zzb(zzup zzupVar, String str) {
        try {
            ((zzuq) zzxD()).zzb(zzupVar, str);
        } catch (RemoteException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.appinvite.internal.IAppInviteService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.appinvite.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public Bundle zzqL() {
        return zzqM();
    }
}
