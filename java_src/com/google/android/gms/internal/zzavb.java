package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2.dex */
public class zzavb implements zzaux {
    public static final Api.zzf<zzava> zzaid = new Api.zzf<>();
    public static final Api.zza<zzava, Api.ApiOptions.NoOptions> zzaie = new Api.zza<zzava, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.internal.zzavb.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzr */
        public zzava zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzava(context, looper, connectionCallbacks, onConnectionFailedListener, zzgVar);
        }
    };
}
