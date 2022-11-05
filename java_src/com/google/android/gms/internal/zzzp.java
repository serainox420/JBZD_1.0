package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzzs;
/* loaded from: classes2.dex */
public class zzzp extends com.google.android.gms.common.internal.zzl<zzzs> {
    public zzzp(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 40, zzgVar, connectionCallbacks, onConnectionFailedListener);
    }

    public void zza(zzzr zzzrVar, zzzm zzzmVar) throws RemoteException {
        ((zzzs) zzxD()).zza(zzzrVar, zzzmVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzbm */
    public zzzs zzh(IBinder iBinder) {
        return zzzs.zza.zzbo(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.clearcut.internal.IClearcutLoggerService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.clearcut.service.START";
    }
}
