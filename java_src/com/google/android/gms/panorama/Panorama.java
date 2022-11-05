package com.google.android.gms.panorama;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzayu;
import com.google.android.gms.internal.zzayv;
/* loaded from: classes2.dex */
public final class Panorama {
    public static final Api.zzf<zzayv> zzaid = new Api.zzf<>();
    static final Api.zza<zzayv, Api.ApiOptions.NoOptions> zzaie = new Api.zza<zzayv, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.panorama.Panorama.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzt */
        public zzayv zza(Context context, Looper looper, zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzayv(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("Panorama.API", zzaie, zzaid);
    public static final PanoramaApi PanoramaApi = new zzayu();

    private Panorama() {
    }
}
