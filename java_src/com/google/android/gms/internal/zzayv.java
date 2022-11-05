package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzayt;
/* loaded from: classes2.dex */
public class zzayv extends com.google.android.gms.common.internal.zzl<zzayt> {
    public zzayv(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 3, zzgVar, connectionCallbacks, onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.panorama.internal.IPanoramaService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzeS */
    public zzayt zzh(IBinder iBinder) {
        return zzayt.zza.zzeR(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.panorama.service.START";
    }
}
