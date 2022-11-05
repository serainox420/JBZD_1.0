package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzvs extends zzaad.zza<ProxyApi.ProxyResult, zzvp> {
    public zzvs(GoogleApiClient googleApiClient) {
        super(com.google.android.gms.auth.api.zza.API, googleApiClient);
    }

    @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
    public /* synthetic */ void setResult(Object obj) {
        super.zzb((zzvs) ((ProxyApi.ProxyResult) obj));
    }

    protected abstract void zza(Context context, zzvr zzvrVar) throws RemoteException;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzaad.zza
    public final void zza(zzvp zzvpVar) throws RemoteException {
        zza(zzvpVar.getContext(), (zzvr) zzvpVar.zzxD());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzaaf
    /* renamed from: zzk */
    public ProxyApi.ProxyResult zzc(Status status) {
        return new zzvu(status);
    }
}
