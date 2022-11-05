package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
/* loaded from: classes2.dex */
public final class zzbah {
    public static final Api.zzf<zzbat> zzaid = new Api.zzf<>();
    public static final Api.zzf<zzbat> zzbEf = new Api.zzf<>();
    public static final Api.zza<zzbat, zzbaj> zzaie = new Api.zza<zzbat, zzbaj>() { // from class: com.google.android.gms.internal.zzbah.1
        @Override // com.google.android.gms.common.api.Api.zza
        public zzbat zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, zzbaj zzbajVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzbat(context, looper, true, zzgVar, zzbajVar == null ? zzbaj.zzbEi : zzbajVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    static final Api.zza<zzbat, zza> zzbEg = new Api.zza<zzbat, zza>() { // from class: com.google.android.gms.internal.zzbah.2
        @Override // com.google.android.gms.common.api.Api.zza
        public zzbat zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, zza zzaVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzbat(context, looper, false, zzgVar, zzaVar.zzPI(), connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Scope zzakh = new Scope(Scopes.PROFILE);
    public static final Scope zzaki = new Scope(Scopes.EMAIL);
    public static final Api<zzbaj> API = new Api<>("SignIn.API", zzaie, zzaid);
    public static final Api<zza> zzaKN = new Api<>("SignIn.INTERNAL_API", zzbEg, zzbEf);

    /* loaded from: classes2.dex */
    public static class zza implements Api.ApiOptions.HasOptions {
        private final Bundle zzbEh;

        public Bundle zzPI() {
            return this.zzbEh;
        }
    }
}
