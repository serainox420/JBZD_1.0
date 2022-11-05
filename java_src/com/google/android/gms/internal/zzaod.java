package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaos;
/* loaded from: classes2.dex */
public class zzaod extends zzaob<zzaos> {
    public static final Api.zzf<zzaod> zzaid = new Api.zzf<>();
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("Fitness.BLE_API", new zzb(), zzaid);

    /* loaded from: classes2.dex */
    static abstract class zza<R extends Result> extends zzaad.zza<R, zzaod> {
        public zza(GoogleApiClient googleApiClient) {
            super(zzaod.API, googleApiClient);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zza<R>) ((Result) obj));
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb extends Api.zza<zzaod, Api.ApiOptions.NoOptions> {
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzh */
        public zzaod zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzaod(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    }

    /* loaded from: classes2.dex */
    static abstract class zzc extends zza<Status> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            com.google.android.gms.common.internal.zzac.zzax(!status.isSuccess());
            return status;
        }
    }

    public zzaod(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 59, connectionCallbacks, onConnectionFailedListener, zzgVar);
    }

    @Override // com.google.android.gms.internal.zzaob, com.google.android.gms.common.internal.zzf
    /* renamed from: zzch */
    public zzaos zzh(IBinder iBinder) {
        return zzaos.zza.zzcw(iBinder);
    }

    @Override // com.google.android.gms.internal.zzaob, com.google.android.gms.common.internal.zzf
    public String zzeA() {
        return "com.google.android.gms.fitness.internal.IGoogleFitBleApi";
    }

    @Override // com.google.android.gms.internal.zzaob, com.google.android.gms.common.internal.zzf
    public String zzez() {
        return "com.google.android.gms.fitness.BleApi";
    }
}
