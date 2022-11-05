package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzaqz;
/* loaded from: classes2.dex */
public class zzard extends com.google.android.gms.common.internal.zzl<zzaqz> {
    public zzard(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 121, com.google.android.gms.common.internal.zzg.zzaS(context), connectionCallbacks, onConnectionFailedListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzdc */
    public zzaqz zzh(IBinder iBinder) {
        return zzaqz.zza.zzdb(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.instantapps.internal.IInstantAppsService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.instantapps.START";
    }
}
