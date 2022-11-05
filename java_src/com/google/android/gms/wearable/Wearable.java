package com.google.android.gms.wearable;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.wearable.internal.zzag;
import com.google.android.gms.wearable.internal.zzah;
import com.google.android.gms.wearable.internal.zzby;
import com.google.android.gms.wearable.internal.zzcb;
import com.google.android.gms.wearable.internal.zzcu;
import com.google.android.gms.wearable.internal.zzcx;
import com.google.android.gms.wearable.internal.zzda;
import com.google.android.gms.wearable.internal.zzn;
import com.google.android.gms.wearable.internal.zzq;
/* loaded from: classes2.dex */
public class Wearable {
    public static final DataApi DataApi = new zzah();
    public static final CapabilityApi CapabilityApi = new zzn();
    public static final MessageApi MessageApi = new zzby();
    public static final NodeApi NodeApi = new zzcb();
    public static final ChannelApi ChannelApi = new zzq();
    public static final zzc zzbSZ = new com.google.android.gms.wearable.internal.zzj();
    public static final zza zzbTa = new com.google.android.gms.wearable.internal.zzg();
    public static final zzf zzbTb = new zzag();
    public static final zzi zzbTc = new zzcu();
    public static final zzj zzbTd = new zzda();
    public static final Api.zzf<zzcx> zzaid = new Api.zzf<>();
    private static final Api.zza<zzcx, WearableOptions> zzaie = new Api.zza<zzcx, WearableOptions>() { // from class: com.google.android.gms.wearable.Wearable.1
        @Override // com.google.android.gms.common.api.Api.zza
        public zzcx zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, WearableOptions wearableOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            if (wearableOptions == null) {
                new WearableOptions(new WearableOptions.Builder());
            }
            return new zzcx(context, looper, connectionCallbacks, onConnectionFailedListener, zzgVar);
        }
    };
    public static final Api<WearableOptions> API = new Api<>("Wearable.API", zzaie, zzaid);

    /* loaded from: classes2.dex */
    public static final class WearableOptions implements Api.ApiOptions.Optional {

        /* loaded from: classes2.dex */
        public static class Builder {
            public WearableOptions build() {
                return new WearableOptions(this);
            }
        }

        private WearableOptions(Builder builder) {
        }
    }

    private Wearable() {
    }
}
