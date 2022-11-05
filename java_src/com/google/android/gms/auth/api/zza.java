package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzvp;
/* loaded from: classes2.dex */
public final class zza {
    public static final Api.zzf<zzvp> zzajc = new Api.zzf<>();
    private static final Api.zza<zzvp, zzb> zzajd = new Api.zza<zzvp, zzb>() { // from class: com.google.android.gms.auth.api.zza.1
        @Override // com.google.android.gms.common.api.Api.zza
        public zzvp zza(Context context, Looper looper, zzg zzgVar, zzb zzbVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzvp(context, looper, zzgVar, zzbVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<zzb> API = new Api<>("Auth.PROXY_API", zzajd, zzajc);
}
