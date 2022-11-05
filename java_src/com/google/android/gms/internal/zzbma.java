package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2.dex */
public final class zzbma {
    public static final Api.zzf<zzblt> zzaid = new Api.zzf<>();
    private static final Api.zza<zzblt, zza> zzbYf = new Api.zza<zzblt, zza>() { // from class: com.google.android.gms.internal.zzbma.1
        @Override // com.google.android.gms.common.api.Api.zza
        public zzblt zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, zza zzaVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzblu(context, looper, zzgVar, zzaVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<zza> zzbYg = new Api<>("InternalFirebaseAuth.FIREBASE_AUTH_API", zzbYf, zzaid);

    /* loaded from: classes2.dex */
    public static final class zza implements Api.ApiOptions.HasOptions {
        private final String zzbWN;

        /* renamed from: com.google.android.gms.internal.zzbma$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0306zza {
            private String zzbWN;

            public C0306zza(String str) {
                this.zzbWN = com.google.android.gms.common.internal.zzac.zzdr(str);
            }

            public zza zzVT() {
                return new zza(this.zzbWN);
            }
        }

        private zza(String str) {
            this.zzbWN = com.google.android.gms.common.internal.zzac.zzh(str, "A valid API key must be provided");
        }

        public String getApiKey() {
            return this.zzbWN;
        }
    }

    public static zzbls zza(Context context, zza zzaVar) {
        return new zzbls(context, zzaVar);
    }
}
