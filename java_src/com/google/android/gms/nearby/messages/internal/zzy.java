package com.google.android.gms.nearby.messages.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzayd;
import com.google.android.gms.nearby.Nearby;
import com.google.android.gms.nearby.messages.Message;
import com.google.android.gms.nearby.messages.MessageListener;
import com.google.android.gms.nearby.messages.Messages;
import com.google.android.gms.nearby.messages.MessagesOptions;
import com.google.android.gms.nearby.messages.PublishOptions;
import com.google.android.gms.nearby.messages.StatusCallback;
import com.google.android.gms.nearby.messages.SubscribeOptions;
import java.util.List;
/* loaded from: classes2.dex */
public class zzy implements Messages {
    public static final zzy zzbAT = new zzy();
    public static final Api.zzf<zzx> zzaid = new Api.zzf<>();
    public static final Api.zza<zzx, MessagesOptions> zzaie = new Api.zza<zzx, MessagesOptions>() { // from class: com.google.android.gms.nearby.messages.internal.zzy.1
        @Override // com.google.android.gms.common.api.Api.zzd
        public int getPriority() {
            return Integer.MAX_VALUE;
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public zzx zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, MessagesOptions messagesOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzx(context, looper, connectionCallbacks, onConnectionFailedListener, zzgVar, messagesOptions);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class zza extends zzaad.zza<Status, zzx> {
        private final zzabh<zzaad.zzb<Status>> zzbAZ;

        public zza(GoogleApiClient googleApiClient) {
            super(Nearby.MESSAGES_API, googleApiClient);
            this.zzbAZ = googleApiClient.zzr(this);
        }

        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zza) ((Status) obj));
        }

        zzabh<zzaad.zzb<Status>> zzOP() {
            return this.zzbAZ;
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    private zzy() {
    }

    private static List<Update> zzB(Intent intent) {
        return zzs.zzc(intent, "com.google.android.gms.nearby.messages.UPDATES");
    }

    public static void zza(Iterable<Update> iterable, MessageListener messageListener) {
        for (Update update : iterable) {
            if (update.zzmV(1)) {
                messageListener.onFound(update.zzbAO);
            }
            if (update.zzmV(2)) {
                messageListener.onLost(update.zzbAO);
            }
            if (update.zzmV(4)) {
                messageListener.onDistanceChanged(update.zzbAO, update.zzbBm);
            }
            if (update.zzmV(8)) {
                messageListener.onBleSignalChanged(update.zzbAO, update.zzbBn);
            }
            if (update.zzmV(16)) {
                Message message = update.zzbAO;
                zzayd zzaydVar = update.zzbBo;
            }
        }
    }

    private static zzx zzm(GoogleApiClient googleApiClient) {
        return (zzx) googleApiClient.zza(zzaid);
    }

    @Override // com.google.android.gms.nearby.messages.Messages
    public PendingResult<Status> getPermissionStatus(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.nearby.messages.internal.zzy.9
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzx zzxVar) throws RemoteException {
                zzxVar.zzh(zzOP());
            }
        });
    }

    @Override // com.google.android.gms.nearby.messages.Messages
    public void handleIntent(Intent intent, MessageListener messageListener) {
        zza(zzB(intent), messageListener);
    }

    @Override // com.google.android.gms.nearby.messages.Messages
    public PendingResult<Status> publish(GoogleApiClient googleApiClient, Message message) {
        return publish(googleApiClient, message, PublishOptions.DEFAULT);
    }

    @Override // com.google.android.gms.nearby.messages.Messages
    public PendingResult<Status> publish(GoogleApiClient googleApiClient, final Message message, final PublishOptions publishOptions) {
        com.google.android.gms.common.internal.zzac.zzw(message);
        com.google.android.gms.common.internal.zzac.zzw(publishOptions);
        final zzabh zzr = publishOptions.getCallback() == null ? null : googleApiClient.zzr(publishOptions.getCallback());
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.nearby.messages.internal.zzy.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzx zzxVar) throws RemoteException {
                zzxVar.zza(zzOP(), zzv.zza(message), zzr, publishOptions);
            }
        });
    }

    @Override // com.google.android.gms.nearby.messages.Messages
    public PendingResult<Status> registerStatusCallback(GoogleApiClient googleApiClient, StatusCallback statusCallback) {
        com.google.android.gms.common.internal.zzac.zzw(statusCallback);
        final zzabh<StatusCallback> zza2 = zzm(googleApiClient).zza(googleApiClient, statusCallback);
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.nearby.messages.internal.zzy.10
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzx zzxVar) throws RemoteException {
                zzxVar.zzb(zzOP(), zza2);
            }
        });
    }

    @Override // com.google.android.gms.nearby.messages.Messages
    public PendingResult<Status> subscribe(GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        return subscribe(googleApiClient, pendingIntent, SubscribeOptions.DEFAULT);
    }

    @Override // com.google.android.gms.nearby.messages.Messages
    public PendingResult<Status> subscribe(GoogleApiClient googleApiClient, final PendingIntent pendingIntent, final SubscribeOptions subscribeOptions) {
        com.google.android.gms.common.internal.zzac.zzw(pendingIntent);
        com.google.android.gms.common.internal.zzac.zzw(subscribeOptions);
        final zzabh zzr = subscribeOptions.getCallback() == null ? null : googleApiClient.zzr(subscribeOptions.getCallback());
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.nearby.messages.internal.zzy.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzx zzxVar) throws RemoteException {
                zzxVar.zza(zzOP(), pendingIntent, zzr, subscribeOptions);
            }
        });
    }

    @Override // com.google.android.gms.nearby.messages.Messages
    public PendingResult<Status> subscribe(GoogleApiClient googleApiClient, MessageListener messageListener) {
        return subscribe(googleApiClient, messageListener, SubscribeOptions.DEFAULT);
    }

    @Override // com.google.android.gms.nearby.messages.Messages
    public PendingResult<Status> subscribe(GoogleApiClient googleApiClient, MessageListener messageListener, final SubscribeOptions subscribeOptions) {
        com.google.android.gms.common.internal.zzac.zzw(messageListener);
        com.google.android.gms.common.internal.zzac.zzw(subscribeOptions);
        com.google.android.gms.common.internal.zzac.zzb(subscribeOptions.getStrategy().zzOK() == 0, "Strategy.setBackgroundScanMode() is only supported by background subscribe (the version which takes a PendingIntent).");
        final zzabh<MessageListener> zza2 = zzm(googleApiClient).zza(googleApiClient, messageListener);
        final zzabh zzr = subscribeOptions.getCallback() == null ? null : googleApiClient.zzr(subscribeOptions.getCallback());
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.nearby.messages.internal.zzy.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzx zzxVar) throws RemoteException {
                zzxVar.zza(zzOP(), zza2, zzr, subscribeOptions, null);
            }
        });
    }

    @Override // com.google.android.gms.nearby.messages.Messages
    public PendingResult<Status> unpublish(GoogleApiClient googleApiClient, final Message message) {
        com.google.android.gms.common.internal.zzac.zzw(message);
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.nearby.messages.internal.zzy.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzx zzxVar) throws RemoteException {
                zzxVar.zza(zzOP(), zzv.zza(message));
            }
        });
    }

    @Override // com.google.android.gms.nearby.messages.Messages
    public PendingResult<Status> unregisterStatusCallback(GoogleApiClient googleApiClient, StatusCallback statusCallback) {
        com.google.android.gms.common.internal.zzac.zzw(statusCallback);
        final zzabh<StatusCallback> zza2 = zzm(googleApiClient).zza(statusCallback);
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.nearby.messages.internal.zzy.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzx zzxVar) throws RemoteException {
                zzxVar.zzc(zzOP(), zza2);
            }
        });
    }

    @Override // com.google.android.gms.nearby.messages.Messages
    public PendingResult<Status> unsubscribe(GoogleApiClient googleApiClient, final PendingIntent pendingIntent) {
        com.google.android.gms.common.internal.zzac.zzw(pendingIntent);
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.nearby.messages.internal.zzy.8
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzx zzxVar) throws RemoteException {
                zzxVar.zza(zzOP(), pendingIntent);
            }
        });
    }

    @Override // com.google.android.gms.nearby.messages.Messages
    public PendingResult<Status> unsubscribe(GoogleApiClient googleApiClient, MessageListener messageListener) {
        com.google.android.gms.common.internal.zzac.zzw(messageListener);
        final zzabh<MessageListener> zza2 = zzm(googleApiClient).zza(messageListener);
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.nearby.messages.internal.zzy.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzx zzxVar) throws RemoteException {
                zzxVar.zza(zzOP(), zza2);
            }
        });
    }
}
