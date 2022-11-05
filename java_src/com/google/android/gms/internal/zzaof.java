package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaou;
/* loaded from: classes2.dex */
public class zzaof extends zzaob<zzaou> {
    public static final Api.zzf<zzaof> zzaid = new Api.zzf<>();
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("Fitness.GOALS_API", new zzb(), zzaid);

    /* loaded from: classes2.dex */
    static abstract class zza<R extends Result> extends zzaad.zza<R, zzaof> {
        public zza(GoogleApiClient googleApiClient) {
            super(zzaof.API, googleApiClient);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zza<R>) ((Result) obj));
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb extends Api.zza<zzaof, Api.ApiOptions.NoOptions> {
        @Override // com.google.android.gms.common.api.Api.zza
        /* renamed from: zzj */
        public zzaof zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzaof(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    }

    public zzaof(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 125, connectionCallbacks, onConnectionFailedListener, zzgVar);
    }

    @Override // com.google.android.gms.internal.zzaob, com.google.android.gms.common.internal.zzf
    /* renamed from: zzcj */
    public zzaou zzh(IBinder iBinder) {
        return zzaou.zza.zzcy(iBinder);
    }

    @Override // com.google.android.gms.internal.zzaob, com.google.android.gms.common.internal.zzf
    public String zzeA() {
        return "com.google.android.gms.fitness.internal.IGoogleFitGoalsApi";
    }

    @Override // com.google.android.gms.internal.zzaob, com.google.android.gms.common.internal.zzf
    public String zzez() {
        return "com.google.android.gms.fitness.GoalsApi";
    }
}
