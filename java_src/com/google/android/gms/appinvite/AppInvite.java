package com.google.android.gms.appinvite;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzum;
import com.google.android.gms.internal.zzun;
/* loaded from: classes2.dex */
public final class AppInvite {
    public static final Api.zzf<zzun> zzaid = new Api.zzf<>();
    private static final Api.zza<zzun, Api.ApiOptions.NoOptions> zzaie = new Api.zza<zzun, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.appinvite.AppInvite.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzb */
        public zzun zza(Context context, Looper looper, zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzun(context, looper, connectionCallbacks, onConnectionFailedListener, zzgVar);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("AppInvite.API", zzaie, zzaid);
    public static final AppInviteApi AppInviteApi = new zzum();

    private AppInvite() {
    }
}
