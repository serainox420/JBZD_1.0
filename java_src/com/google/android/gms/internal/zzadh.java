package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2.dex */
public final class zzadh {
    public static final Api.zzf<zzadp> zzaid = new Api.zzf<>();
    static final Api.zza<zzadp, Api.ApiOptions.NoOptions> zzaie = new Api.zza<zzadp, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.internal.zzadh.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzg */
        public zzadp zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzadp(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("Config.API", zzaie, zzaid);
    public static final zzadi zzaIB = new zzadn();
}
