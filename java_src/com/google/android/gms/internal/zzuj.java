package com.google.android.gms.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzug;
/* loaded from: classes2.dex */
public class zzuj extends com.google.android.gms.common.internal.zzl<zzug> {
    public zzuj(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 19, zzgVar, connectionCallbacks, onConnectionFailedListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzap */
    public zzug zzh(IBinder iBinder) {
        return zzug.zza.zzan(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.icing.LIGHTWEIGHT_INDEX_SERVICE";
    }

    public zzug zzqJ() throws DeadObjectException {
        return (zzug) zzxD();
    }
}
