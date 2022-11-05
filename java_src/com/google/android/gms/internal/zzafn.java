package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.awareness.AwarenessOptions;
import com.google.android.gms.awareness.fence.FenceQueryResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzafq;
import com.google.android.gms.internal.zzaft;
import com.google.android.gms.internal.zzcd;
/* loaded from: classes2.dex */
public class zzafn extends com.google.android.gms.common.internal.zzl<zzaft> {
    private static zzcd.zza zzaJQ = zzcd.zza.zzrn;
    private final zzafo zzaJR;
    private zzcj<com.google.android.gms.awareness.fence.zza, zzaem> zzaJS;
    private final Looper zzrs;

    public zzafn(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, AwarenessOptions awarenessOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 47, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzrs = looper;
        String str = zzgVar.getAccount() == null ? "@@ContextManagerNullAccount@@" : zzgVar.getAccount().name;
        this.zzaJR = awarenessOptions == null ? zzafo.zzG(context, str) : zzafo.zza(context, str, awarenessOptions);
    }

    private zzcj<com.google.android.gms.awareness.fence.zza, zzaem> zzAi() {
        if (this.zzaJS == null) {
            this.zzaJS = new zzcj<>(this.zzrs, zzaem.zzaJj);
        }
        return this.zzaJS;
    }

    public static Handler zza(Looper looper) {
        return zzaJQ == null ? zzcd.zza.zzrn.zza(looper) : zzaJQ.zza(looper);
    }

    public void zza(zzaad.zzb<FenceQueryResult> zzbVar, zzaer zzaerVar) throws RemoteException {
        zzxC();
        ((zzaft) zzxD()).zza(zzafq.zze(zzbVar), this.zzaJR.packageName, this.zzaJR.zzaJT, this.zzaJR.moduleId, zzaerVar);
    }

    public void zza(zzaad.zzb<Status> zzbVar, zzaez zzaezVar) throws RemoteException {
        zzxC();
        zzaezVar.zza(zzAi());
        ((zzaft) zzxD()).zza(zzafq.zza(zzbVar, (zzafq.zza) null), this.zzaJR.packageName, this.zzaJR.zzaJT, this.zzaJR.moduleId, zzaezVar);
    }

    public void zza(zzaad.zzb<zzwp> zzbVar, zzwn zzwnVar) throws RemoteException {
        zzxC();
        ((zzaft) zzxD()).zza(zzafq.zzd(zzbVar), this.zzaJR.packageName, this.zzaJR.zzaJT, this.zzaJR.moduleId, zzwnVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzbG */
    public zzaft zzh(IBinder iBinder) {
        return zzaft.zza.zzbJ(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.contextmanager.internal.IContextManagerService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.contextmanager.service.ContextManagerService.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public Bundle zzqL() {
        Bundle bundle = new Bundle();
        bundle.putByteArray("com.google.android.contextmanager.service.args", this.zzaJR.toByteArray());
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.zzf
    public boolean zzxE() {
        return false;
    }
}
