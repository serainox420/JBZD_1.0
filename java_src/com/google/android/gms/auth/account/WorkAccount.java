package com.google.android.gms.auth.account;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzur;
import com.google.android.gms.internal.zzus;
/* loaded from: classes2.dex */
public class WorkAccount {
    private static final Api.zzf<zzus> zzaid = new Api.zzf<>();
    private static final Api.zza<zzus, Api.ApiOptions.NoOptions> zzaie = new Api.zza<zzus, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.auth.account.WorkAccount.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzc */
        public zzus zza(Context context, Looper looper, zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzus(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("WorkAccount.API", zzaie, zzaid);
    public static final WorkAccountApi WorkAccountApi = new zzur();

    private WorkAccount() {
    }
}
