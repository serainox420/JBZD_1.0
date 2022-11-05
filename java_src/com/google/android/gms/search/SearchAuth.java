package com.google.android.gms.search;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzbaf;
import com.google.android.gms.internal.zzbag;
/* loaded from: classes2.dex */
public class SearchAuth {
    private static final Api.zza<zzbaf, Api.ApiOptions.NoOptions> zzbDV = new Api.zza<zzbaf, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.search.SearchAuth.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzv */
        public zzbaf zza(Context context, Looper looper, zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzbaf(context, connectionCallbacks, onConnectionFailedListener, zzgVar);
        }
    };
    public static final Api.zzf<zzbaf> zzaid = new Api.zzf<>();
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("SearchAuth.API", zzbDV, zzaid);
    public static final SearchAuthApi SearchAuthApi = new zzbag();

    /* loaded from: classes2.dex */
    public static class StatusCodes {
        public static final int AUTH_DISABLED = 10000;
        public static final int AUTH_THROTTLED = 10001;
        public static final int DEVELOPER_ERROR = 10;
        public static final int INTERNAL_ERROR = 8;
        public static final int SUCCESS = 0;
    }

    private SearchAuth() {
    }
}
