package com.google.android.gms.instantapps;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzarc;
import com.google.android.gms.internal.zzard;
import com.google.android.gms.internal.zzarj;
/* loaded from: classes2.dex */
public final class InstantApps {
    private static final Api.zzf<zzard> zzaid = new Api.zzf<>();
    private static final Api.zza<zzard, Api.ApiOptions.NoOptions> zzaie = new Api.zza<zzard, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.instantapps.InstantApps.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzp */
        public zzard zza(Context context, Looper looper, zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzard(context, looper, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("InstantApps.API", zzaie, zzaid);
    public static final InstantAppsApi InstantAppsApi = new zzarc();

    private InstantApps() {
    }

    public static PackageManagerWrapper getPackageManager(Context context, boolean z) {
        return zzarj.zzh(context, z);
    }
}
