package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelApi;
import com.google.android.gms.wearable.internal.zzb;
import com.google.android.gms.wearable.internal.zzq;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public class zzu extends com.google.android.gms.common.internal.safeparcel.zza implements Channel {
    public static final Parcelable.Creator<zzu> CREATOR = new zzv();
    private final String mPath;
    private final String zzaiJ;
    private final String zzbSS;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zza implements Channel.GetInputStreamResult {
        private final Status zzair;
        private final InputStream zzbUb;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zza(Status status, InputStream inputStream) {
            this.zzair = (Status) com.google.android.gms.common.internal.zzac.zzw(status);
            this.zzbUb = inputStream;
        }

        @Override // com.google.android.gms.wearable.Channel.GetInputStreamResult
        public InputStream getInputStream() {
            return this.zzbUb;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }

        @Override // com.google.android.gms.common.api.Releasable
        public void release() {
            if (this.zzbUb != null) {
                try {
                    this.zzbUb.close();
                } catch (IOException e) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zzb implements Channel.GetOutputStreamResult {
        private final Status zzair;
        private final OutputStream zzbUc;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzb(Status status, OutputStream outputStream) {
            this.zzair = (Status) com.google.android.gms.common.internal.zzac.zzw(status);
            this.zzbUc = outputStream;
        }

        @Override // com.google.android.gms.wearable.Channel.GetOutputStreamResult
        public OutputStream getOutputStream() {
            return this.zzbUc;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }

        @Override // com.google.android.gms.common.api.Releasable
        public void release() {
            if (this.zzbUc != null) {
                try {
                    this.zzbUc.close();
                } catch (IOException e) {
                }
            }
        }
    }

    public zzu(String str, String str2, String str3) {
        this.zzaiJ = (String) com.google.android.gms.common.internal.zzac.zzw(str);
        this.zzbSS = (String) com.google.android.gms.common.internal.zzac.zzw(str2);
        this.mPath = (String) com.google.android.gms.common.internal.zzac.zzw(str3);
    }

    private static zzb.zza<ChannelApi.ChannelListener> zza(final String str, final IntentFilter[] intentFilterArr) {
        return new zzb.zza<ChannelApi.ChannelListener>() { // from class: com.google.android.gms.wearable.internal.zzu.7
            /* renamed from: zza  reason: avoid collision after fix types in other method */
            public void zza2(zzcx zzcxVar, zzaad.zzb<Status> zzbVar, ChannelApi.ChannelListener channelListener, zzabh<ChannelApi.ChannelListener> zzabhVar) throws RemoteException {
                zzcxVar.zza(zzbVar, channelListener, zzabhVar, str, intentFilterArr);
            }

            @Override // com.google.android.gms.wearable.internal.zzb.zza
            public /* bridge */ /* synthetic */ void zza(zzcx zzcxVar, zzaad.zzb zzbVar, ChannelApi.ChannelListener channelListener, zzabh<ChannelApi.ChannelListener> zzabhVar) throws RemoteException {
                zza2(zzcxVar, (zzaad.zzb<Status>) zzbVar, channelListener, zzabhVar);
            }
        };
    }

    @Override // com.google.android.gms.wearable.Channel
    public PendingResult<Status> addListener(GoogleApiClient googleApiClient, ChannelApi.ChannelListener channelListener) {
        return com.google.android.gms.wearable.internal.zzb.zza(googleApiClient, zza(this.zzaiJ, new IntentFilter[]{zzcv.zzip(ChannelApi.ACTION_CHANNEL_EVENT)}), channelListener);
    }

    @Override // com.google.android.gms.wearable.Channel
    public PendingResult<Status> close(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new zzm<Status>(googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzu.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zzx(this, zzu.this.zzaiJ);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    @Override // com.google.android.gms.wearable.Channel
    public PendingResult<Status> close(GoogleApiClient googleApiClient, final int i) {
        return googleApiClient.zza((GoogleApiClient) new zzm<Status>(googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzu.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zzi(this, zzu.this.zzaiJ, i);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzu)) {
            return false;
        }
        zzu zzuVar = (zzu) obj;
        return this.zzaiJ.equals(zzuVar.zzaiJ) && com.google.android.gms.common.internal.zzaa.equal(zzuVar.zzbSS, this.zzbSS) && com.google.android.gms.common.internal.zzaa.equal(zzuVar.mPath, this.mPath);
    }

    @Override // com.google.android.gms.wearable.Channel
    public PendingResult<Channel.GetInputStreamResult> getInputStream(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new zzm<Channel.GetInputStreamResult>(googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzu.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zzy(this, zzu.this.zzaiJ);
            }

            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbU */
            public Channel.GetInputStreamResult zzc(Status status) {
                return new zza(status, null);
            }
        });
    }

    @Override // com.google.android.gms.wearable.Channel
    public String getNodeId() {
        return this.zzbSS;
    }

    @Override // com.google.android.gms.wearable.Channel
    public PendingResult<Channel.GetOutputStreamResult> getOutputStream(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new zzm<Channel.GetOutputStreamResult>(googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzu.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zzz(this, zzu.this.zzaiJ);
            }

            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbV */
            public Channel.GetOutputStreamResult zzc(Status status) {
                return new zzb(status, null);
            }
        });
    }

    @Override // com.google.android.gms.wearable.Channel
    public String getPath() {
        return this.mPath;
    }

    public String getToken() {
        return this.zzaiJ;
    }

    public int hashCode() {
        return this.zzaiJ.hashCode();
    }

    @Override // com.google.android.gms.wearable.Channel
    public PendingResult<Status> receiveFile(GoogleApiClient googleApiClient, final Uri uri, final boolean z) {
        com.google.android.gms.common.internal.zzac.zzb(googleApiClient, "client is null");
        com.google.android.gms.common.internal.zzac.zzb(uri, "uri is null");
        return googleApiClient.zza((GoogleApiClient) new zzm<Status>(googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzu.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zza(this, zzu.this.zzaiJ, uri, z);
            }

            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    @Override // com.google.android.gms.wearable.Channel
    public PendingResult<Status> removeListener(GoogleApiClient googleApiClient, ChannelApi.ChannelListener channelListener) {
        com.google.android.gms.common.internal.zzac.zzb(googleApiClient, "client is null");
        com.google.android.gms.common.internal.zzac.zzb(channelListener, "listener is null");
        return googleApiClient.zza((GoogleApiClient) new zzq.zzb(googleApiClient, channelListener, this.zzaiJ));
    }

    @Override // com.google.android.gms.wearable.Channel
    public PendingResult<Status> sendFile(GoogleApiClient googleApiClient, Uri uri) {
        return sendFile(googleApiClient, uri, 0L, -1L);
    }

    @Override // com.google.android.gms.wearable.Channel
    public PendingResult<Status> sendFile(GoogleApiClient googleApiClient, final Uri uri, final long j, final long j2) {
        com.google.android.gms.common.internal.zzac.zzb(googleApiClient, "client is null");
        com.google.android.gms.common.internal.zzac.zzb(this.zzaiJ, "token is null");
        com.google.android.gms.common.internal.zzac.zzb(uri, "uri is null");
        com.google.android.gms.common.internal.zzac.zzb(j >= 0, "startOffset is negative: %s", Long.valueOf(j));
        com.google.android.gms.common.internal.zzac.zzb(j2 >= 0 || j2 == -1, "invalid length: %s", Long.valueOf(j2));
        return googleApiClient.zza((GoogleApiClient) new zzm<Status>(googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzu.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zza(this, zzu.this.zzaiJ, uri, j, j2);
            }

            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    public String toString() {
        String str = this.zzaiJ;
        String str2 = this.zzbSS;
        String str3 = this.mPath;
        return new StringBuilder(String.valueOf(str).length() + 43 + String.valueOf(str2).length() + String.valueOf(str3).length()).append("ChannelImpl{, token='").append(str).append("'").append(", nodeId='").append(str2).append("'").append(", path='").append(str3).append("'").append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzv.zza(this, parcel, i);
    }
}
