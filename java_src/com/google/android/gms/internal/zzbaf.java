package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzbae;
/* loaded from: classes2.dex */
public class zzbaf extends com.google.android.gms.common.internal.zzl<zzbae> {
    public zzbaf(Context context, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, com.google.android.gms.common.internal.zzg zzgVar) {
        super(context, context.getMainLooper(), 73, zzgVar, connectionCallbacks, onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.search.internal.ISearchAuthService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.search.service.SEARCH_AUTH_START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzfd */
    public zzbae zzh(IBinder iBinder) {
        return zzbae.zza.zzfc(iBinder);
    }
}
