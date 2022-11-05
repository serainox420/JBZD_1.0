package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2.dex */
public final class zzto {
    public static final Api.zzf<zzuj> zzagX = new Api.zzf<>();
    private static final Api.zza<zzuj, Api.ApiOptions.NoOptions> zzagY = new Api.zza<zzuj, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.internal.zzto.1
        @Override // com.google.android.gms.common.api.Api.zza
        public zzuj zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzuj(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> zzagZ = new Api<>("AppDataSearch.LIGHTWEIGHT_API", zzagY, zzagX);
    public static final zzuf zzaha = new zzul();
}
