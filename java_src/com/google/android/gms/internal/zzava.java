package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzavf;
/* loaded from: classes2.dex */
public class zzava extends com.google.android.gms.common.internal.zzl<zzavf> {
    public zzava(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, com.google.android.gms.common.internal.zzg zzgVar) {
        super(context, looper, 69, zzgVar, connectionCallbacks, onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzeu */
    public zzavf zzh(IBinder iBinder) {
        return zzavf.zza.zzey(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.nearby.bootstrap.service.NearbyBootstrapService.START";
    }
}
