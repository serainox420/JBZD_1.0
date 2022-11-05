package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.awareness.AwarenessOptions;
import com.google.android.gms.awareness.FenceApi;
import com.google.android.gms.awareness.SnapshotApi;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2.dex */
public final class zzaef {
    public static final Api.zzf<zzafn> zzaid = new Api.zzf<>();
    public static final FenceApi FenceApi = new zzaek();
    public static final SnapshotApi SnapshotApi = new zzwl();
    private static final Api.zza<zzafn, AwarenessOptions> zzaie = new Api.zza<zzafn, AwarenessOptions>() { // from class: com.google.android.gms.internal.zzaef.1
        @Override // com.google.android.gms.common.api.Api.zza
        public zzafn zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, AwarenessOptions awarenessOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzafn(context, looper, zzgVar, awarenessOptions, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<AwarenessOptions> API = new Api<>("ContextManager.API", zzaie, zzaid);
}
