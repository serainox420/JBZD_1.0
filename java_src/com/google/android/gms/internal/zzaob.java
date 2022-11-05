package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class zzaob<T extends IInterface> extends com.google.android.gms.common.internal.zzl<T> {
    /* JADX INFO: Access modifiers changed from: protected */
    public zzaob(Context context, Looper looper, int i, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, com.google.android.gms.common.internal.zzg zzgVar) {
        super(context, looper, i, zzgVar, connectionCallbacks, onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.internal.zzl
    protected Set<Scope> zzc(Set<Scope> set) {
        return com.google.android.gms.fitness.zzb.zzj(set);
    }

    @Override // com.google.android.gms.common.internal.zzf
    public abstract String zzeA();

    @Override // com.google.android.gms.common.internal.zzf
    public abstract String zzez();

    @Override // com.google.android.gms.common.internal.zzf
    public abstract T zzh(IBinder iBinder);

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public boolean zzrd() {
        return !zzany.zzbo(getContext());
    }

    @Override // com.google.android.gms.common.internal.zzf
    public boolean zzxE() {
        return true;
    }
}
