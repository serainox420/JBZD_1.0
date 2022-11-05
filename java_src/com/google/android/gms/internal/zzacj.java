package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzacl;
/* loaded from: classes2.dex */
public class zzacj extends com.google.android.gms.common.internal.zzl<zzacl> {
    public zzacj(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 39, zzgVar, connectionCallbacks, onConnectionFailedListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzbz */
    public zzacl zzh(IBinder iBinder) {
        return zzacl.zza.zzbB(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.common.internal.service.ICommonService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    public String zzez() {
        return "com.google.android.gms.common.service.START";
    }
}
