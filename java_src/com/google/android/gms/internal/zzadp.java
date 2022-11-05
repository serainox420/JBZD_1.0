package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzadz;
/* loaded from: classes2.dex */
public class zzadp extends com.google.android.gms.common.internal.zzl<zzadz> {
    public zzadp(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 64, zzgVar, connectionCallbacks, onConnectionFailedListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzbC */
    public zzadz zzh(IBinder iBinder) {
        return zzadz.zza.zzbE(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.config.internal.IConfigService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.config.START";
    }
}
