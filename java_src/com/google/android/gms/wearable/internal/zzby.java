package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.wearable.MessageApi;
/* loaded from: classes2.dex */
public final class zzby implements MessageApi {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class zza extends zzm<Status> {
        private zzabh<MessageApi.MessageListener> zzaDf;
        private MessageApi.MessageListener zzbUI;
        private IntentFilter[] zzbUJ;

        private zza(GoogleApiClient googleApiClient, MessageApi.MessageListener messageListener, zzabh<MessageApi.MessageListener> zzabhVar, IntentFilter[] intentFilterArr) {
            super(googleApiClient);
            this.zzbUI = (MessageApi.MessageListener) com.google.android.gms.common.internal.zzac.zzw(messageListener);
            this.zzaDf = (zzabh) com.google.android.gms.common.internal.zzac.zzw(zzabhVar);
            this.zzbUJ = (IntentFilter[]) com.google.android.gms.common.internal.zzac.zzw(intentFilterArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(zzcx zzcxVar) throws RemoteException {
            zzcxVar.zza(this, this.zzbUI, this.zzaDf, this.zzbUJ);
            this.zzbUI = null;
            this.zzaDf = null;
            this.zzbUJ = null;
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            this.zzbUI = null;
            this.zzaDf = null;
            this.zzbUJ = null;
            return status;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb implements MessageApi.SendMessageResult {
        private final int zzaKE;
        private final Status zzair;

        public zzb(Status status, int i) {
            this.zzair = status;
            this.zzaKE = i;
        }

        @Override // com.google.android.gms.wearable.MessageApi.SendMessageResult
        public int getRequestId() {
            return this.zzaKE;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    private PendingResult<Status> zza(GoogleApiClient googleApiClient, MessageApi.MessageListener messageListener, IntentFilter[] intentFilterArr) {
        return googleApiClient.zza((GoogleApiClient) new zza(googleApiClient, messageListener, googleApiClient.zzr(messageListener), intentFilterArr));
    }

    @Override // com.google.android.gms.wearable.MessageApi
    public PendingResult<Status> addListener(GoogleApiClient googleApiClient, MessageApi.MessageListener messageListener) {
        return zza(googleApiClient, messageListener, new IntentFilter[]{zzcv.zzip(MessageApi.ACTION_MESSAGE_RECEIVED)});
    }

    @Override // com.google.android.gms.wearable.MessageApi
    public PendingResult<Status> addListener(GoogleApiClient googleApiClient, MessageApi.MessageListener messageListener, Uri uri, int i) {
        com.google.android.gms.common.internal.zzac.zzb(uri != null, "uri must not be null");
        com.google.android.gms.common.internal.zzac.zzb(i == 0 || i == 1, "invalid filter type");
        return zza(googleApiClient, messageListener, new IntentFilter[]{zzcv.zza(MessageApi.ACTION_MESSAGE_RECEIVED, uri, i)});
    }

    @Override // com.google.android.gms.wearable.MessageApi
    public PendingResult<Status> removeListener(GoogleApiClient googleApiClient, final MessageApi.MessageListener messageListener) {
        return googleApiClient.zza((GoogleApiClient) new zzm<Status>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzby.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zza(this, messageListener);
            }

            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    @Override // com.google.android.gms.wearable.MessageApi
    public PendingResult<MessageApi.SendMessageResult> sendMessage(GoogleApiClient googleApiClient, final String str, final String str2, final byte[] bArr) {
        return googleApiClient.zza((GoogleApiClient) new zzm<MessageApi.SendMessageResult>(this, googleApiClient) { // from class: com.google.android.gms.wearable.internal.zzby.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzcx zzcxVar) throws RemoteException {
                zzcxVar.zza(this, str, str2, bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzca */
            public MessageApi.SendMessageResult zzc(Status status) {
                return new zzb(status, -1);
            }
        });
    }
}
