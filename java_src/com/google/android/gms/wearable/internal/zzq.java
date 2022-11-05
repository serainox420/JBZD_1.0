package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelApi;
import com.google.android.gms.wearable.internal.zzb;
/* loaded from: classes2.dex */
public final class zzq implements ChannelApi {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zza implements ChannelApi.OpenChannelResult {
        private final Status zzair;
        private final Channel zzbTS;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zza(Status status, Channel channel) {
            this.zzair = (Status) com.google.android.gms.common.internal.zzac.zzw(status);
            this.zzbTS = channel;
        }

        @Override // com.google.android.gms.wearable.ChannelApi.OpenChannelResult
        public Channel getChannel() {
            return this.zzbTS;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    static final class zzb extends zzm<Status> {
        private final String zzaiJ;
        private ChannelApi.ChannelListener zzbTT;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzb(GoogleApiClient googleApiClient, ChannelApi.ChannelListener channelListener, String str) {
            super(googleApiClient);
            this.zzbTT = (ChannelApi.ChannelListener) com.google.android.gms.common.internal.zzac.zzw(channelListener);
            this.zzaiJ = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(zzcx zzcxVar) throws RemoteException {
            zzcxVar.zza(this, this.zzbTT, this.zzaiJ);
            this.zzbTT = null;
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            this.zzbTT = null;
            return status;
        }
    }

    private static zzb.zza<ChannelApi.ChannelListener> zza(final IntentFilter[] intentFilterArr) {
        return new zzb.zza<ChannelApi.ChannelListener>() { // from class: com.google.android.gms.wearable.internal.zzq.2
            /* renamed from: zza  reason: avoid collision after fix types in other method */
            public void zza2(zzcx zzcxVar, zzaad.zzb<Status> zzbVar, ChannelApi.ChannelListener channelListener, zzabh<ChannelApi.ChannelListener> zzabhVar) throws RemoteException {
                zzcxVar.zza(zzbVar, channelListener, zzabhVar, (String) null, intentFilterArr);
            }

            @Override // com.google.android.gms.wearable.internal.zzb.zza
            public /* bridge */ /* synthetic */ void zza(zzcx zzcxVar, zzaad.zzb zzbVar, ChannelApi.ChannelListener channelListener, zzabh<ChannelApi.ChannelListener> zzabhVar) throws RemoteException {
                zza2(zzcxVar, (zzaad.zzb<Status>) zzbVar, channelListener, zzabhVar);
            }
        };
    }

    @Override // com.google.android.gms.wearable.ChannelApi
    public PendingResult<Status> addListener(GoogleApiClient googleApiClient, ChannelApi.ChannelListener channelListener) {
        com.google.android.gms.common.internal.zzac.zzb(googleApiClient, "client is null");
        com.google.android.gms.common.internal.zzac.zzb(channelListener, "listener is null");
        return com.google.android.gms.wearable.internal.zzb.zza(googleApiClient, zza(new IntentFilter[]{zzcv.zzip(ChannelApi.ACTION_CHANNEL_EVENT)}), channelListener);
    }

    @Override // com.google.android.gms.wearable.ChannelApi
    public PendingResult<ChannelApi.OpenChannelResult> openChannel(GoogleApiClient googleApiClient, final String str, final String str2) {
        com.google.android.gms.common.internal.zzac.zzb(googleApiClient, "client is null");
        com.google.android.gms.common.internal.zzac.zzb(str, "nodeId is null");
        com.google.android.gms.common.internal.zzac.zzb(str2, "path is null");
        return googleApiClient.zza((GoogleApiClient) new zzm<ChannelApi.OpenChannelResult>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzq.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zze(this, str, str2);
            }

            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbT */
            public ChannelApi.OpenChannelResult zzc(Status status) {
                return new zza(status, null);
            }
        });
    }

    @Override // com.google.android.gms.wearable.ChannelApi
    public PendingResult<Status> removeListener(GoogleApiClient googleApiClient, ChannelApi.ChannelListener channelListener) {
        com.google.android.gms.common.internal.zzac.zzb(googleApiClient, "client is null");
        com.google.android.gms.common.internal.zzac.zzb(channelListener, "listener is null");
        return googleApiClient.zza((GoogleApiClient) new zzb(googleApiClient, channelListener, null));
    }
}
