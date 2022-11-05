package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzaow;
/* loaded from: classes2.dex */
public class zzaoh extends zzaob<zzaow> {
    public static final Api.zzf<zzaoh> zzaid = new Api.zzf<>();
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("Fitness.INTERNAL_API", new zza(), zzaid);

    /* loaded from: classes2.dex */
    public static class zza extends Api.zza<zzaoh, Api.ApiOptions.NoOptions> {
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzl */
        public zzaoh zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzaoh(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    }

    public zzaoh(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 61, connectionCallbacks, onConnectionFailedListener, zzgVar);
    }

    @Override // com.google.android.gms.internal.zzaob, com.google.android.gms.common.internal.zzf
    /* renamed from: zzcl */
    public zzaow zzh(IBinder iBinder) {
        return zzaow.zza.zzcA(iBinder);
    }

    @Override // com.google.android.gms.internal.zzaob, com.google.android.gms.common.internal.zzf
    public String zzeA() {
        return "com.google.android.gms.fitness.internal.IGoogleFitInternalApi";
    }

    @Override // com.google.android.gms.internal.zzaob, com.google.android.gms.common.internal.zzf
    public String zzez() {
        return "com.google.android.gms.fitness.InternalApi";
    }
}
