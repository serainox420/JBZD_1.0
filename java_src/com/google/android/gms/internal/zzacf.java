package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2.dex */
public final class zzacf {
    public static final Api.zzf<zzacj> zzaid = new Api.zzf<>();
    private static final Api.zza<zzacj, Api.ApiOptions.NoOptions> zzaie = new Api.zza<zzacj, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.internal.zzacf.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzf */
        public zzacj zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzacj(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("Common.API", zzaie, zzaid);
    public static final zzacg zzaGM = new zzach();
}
