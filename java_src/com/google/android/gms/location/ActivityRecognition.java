package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaru;
import com.google.android.gms.internal.zzash;
/* loaded from: classes2.dex */
public class ActivityRecognition {
    public static final String CLIENT_NAME = "activity_recognition";
    private static final Api.zzf<zzash> zzaid = new Api.zzf<>();
    private static final Api.zza<zzash, Api.ApiOptions.NoOptions> zzaie = new Api.zza<zzash, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.location.ActivityRecognition.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzq */
        public zzash zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzash(context, looper, connectionCallbacks, onConnectionFailedListener, ActivityRecognition.CLIENT_NAME);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("ActivityRecognition.API", zzaie, zzaid);
    public static final ActivityRecognitionApi ActivityRecognitionApi = new zzaru();

    /* loaded from: classes2.dex */
    public static abstract class zza<R extends Result> extends zzaad.zza<R, zzash> {
        public zza(GoogleApiClient googleApiClient) {
            super(ActivityRecognition.API, googleApiClient);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zza<R>) ((Result) obj));
        }
    }

    private ActivityRecognition() {
    }
}
