package com.google.android.gms.safetynet;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzazv;
import com.google.android.gms.internal.zzazw;
import com.google.android.gms.internal.zzazx;
/* loaded from: classes2.dex */
public final class SafetyNet {
    public static final Api.zzf<zzazw> zzaid = new Api.zzf<>();
    public static final Api.zza<zzazw, Api.ApiOptions.NoOptions> zzaie = new Api.zza<zzazw, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.safetynet.SafetyNet.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzu */
        public zzazw zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzazw(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("SafetyNet.API", zzaie, zzaid);
    public static final SafetyNetApi SafetyNetApi = new zzazv();
    public static final zzj zzbDg = new zzazx();

    private SafetyNet() {
    }
}
