package com.google.android.gms.nearby.messages.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzayj;
import com.google.android.gms.internal.zzayl;
import com.google.android.gms.internal.zzayn;
import com.google.android.gms.internal.zzayp;
import com.google.android.gms.internal.zzayq;
import com.google.android.gms.nearby.messages.MessageListener;
import com.google.android.gms.nearby.messages.MessagesOptions;
import com.google.android.gms.nearby.messages.PublishCallback;
import com.google.android.gms.nearby.messages.PublishOptions;
import com.google.android.gms.nearby.messages.StatusCallback;
import com.google.android.gms.nearby.messages.SubscribeCallback;
import com.google.android.gms.nearby.messages.SubscribeOptions;
import com.google.android.gms.nearby.messages.internal.zzo;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzx extends com.google.android.gms.common.internal.zzl<zzo> {
    private final zzayq zzbAP;
    private final ClientAppContext zzbAQ;
    private final int zzbzM;

    @TargetApi(14)
    /* loaded from: classes2.dex */
    private static class zza implements Application.ActivityLifecycleCallbacks {
        private final Activity zzbAR;
        private final zzx zzbAS;

        private zza(Activity activity, zzx zzxVar) {
            this.zzbAR = activity;
            this.zzbAS = zzxVar;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (activity == this.zzbAR) {
                Log.v("NearbyMessagesClient", String.format("Unregistering ClientLifecycleSafetyNet's ActivityLifecycleCallbacks for %s", activity.getPackageName()));
                activity.getApplication().unregisterActivityLifecycleCallbacks(this);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            if (activity == this.zzbAR) {
                try {
                    this.zzbAS.zzmP(1);
                } catch (RemoteException e) {
                    Log.v("NearbyMessagesClient", String.format("Failed to emit ACTIVITY_STOPPED from ClientLifecycleSafetyNet for Activity %s: %s", activity.getPackageName(), e));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(14)
    public zzx(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, com.google.android.gms.common.internal.zzg zzgVar, MessagesOptions messagesOptions) {
        super(context, looper, 62, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzbAP = new zzayq();
        String zzxO = zzgVar.zzxO();
        int zzbN = zzbN(context);
        if (messagesOptions != null) {
            this.zzbAQ = new ClientAppContext(zzxO, messagesOptions.zzbzI, messagesOptions.zzbzJ, messagesOptions.zzbzL, zzbN);
            this.zzbzM = messagesOptions.zzbzK;
        } else {
            this.zzbAQ = new ClientAppContext(zzxO, null, false, null, zzbN);
            this.zzbzM = -1;
        }
        if (zzbN == 1) {
            com.google.android.gms.common.util.zzt.zzzg();
            Activity activity = (Activity) context;
            Log.v("NearbyMessagesClient", String.format("Registering ClientLifecycleSafetyNet's ActivityLifecycleCallbacks for %s", activity.getPackageName()));
            activity.getApplication().registerActivityLifecycleCallbacks(new zza(activity, this));
        }
    }

    private static int zzbN(Context context) {
        if (context instanceof Activity) {
            return 1;
        }
        if (context instanceof Application) {
            return 2;
        }
        return context instanceof Service ? 3 : 0;
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public void disconnect() {
        try {
            zzmP(2);
        } catch (RemoteException e) {
            Log.v("NearbyMessagesClient", String.format("Failed to emit CLIENT_DISCONNECTED from override of GmsClient#disconnect(): %s", e));
        }
        this.zzbAP.clear();
        super.disconnect();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabh<MessageListener> zza(GoogleApiClient googleApiClient, MessageListener messageListener) {
        return this.zzbAP.zzb(googleApiClient, messageListener).zzOP();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabh<StatusCallback> zza(GoogleApiClient googleApiClient, StatusCallback statusCallback) {
        return this.zzbAP.zzb(googleApiClient, statusCallback).zzOP();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabh<MessageListener> zza(MessageListener messageListener) {
        zzayj zzI = this.zzbAP.zzI(messageListener);
        if (zzI == null) {
            return null;
        }
        return zzI.zzOP();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabh<StatusCallback> zza(StatusCallback statusCallback) {
        zzayj zzI = this.zzbAP.zzI(statusCallback);
        if (zzI == null) {
            return null;
        }
        return zzI.zzOP();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zzabh<zzaad.zzb<Status>> zzabhVar, PendingIntent pendingIntent) throws RemoteException {
        ((zzo) zzxD()).zza(new zzah(null, new zzayl(zzabhVar), pendingIntent, 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zzabh<zzaad.zzb<Status>> zzabhVar, PendingIntent pendingIntent, zzabh<SubscribeCallback> zzabhVar2, SubscribeOptions subscribeOptions) throws RemoteException {
        ((zzo) zzxD()).zza(new SubscribeRequest(null, subscribeOptions.getStrategy(), new zzayl(zzabhVar), subscribeOptions.getFilter(), pendingIntent, 0, null, zzabhVar2 == null ? null : new zzayp(zzabhVar2), subscribeOptions.zzbAd, subscribeOptions.zzbAe));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zzabh<zzaad.zzb<Status>> zzabhVar, zzabh<MessageListener> zzabhVar2) throws RemoteException {
        if (zzabhVar2 == null) {
            return;
        }
        ((zzo) zzxD()).zza(new zzah(this.zzbAP.zzi(zzabhVar2), new zzayl(zzabhVar), null, 0));
        this.zzbAP.zzj(zzabhVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zzabh<zzaad.zzb<Status>> zzabhVar, zzabh<MessageListener> zzabhVar2, zzabh<SubscribeCallback> zzabhVar3, SubscribeOptions subscribeOptions, byte[] bArr) throws RemoteException {
        ((zzo) zzxD()).zza(new SubscribeRequest(this.zzbAP.zzi(zzabhVar2), subscribeOptions.getStrategy(), new zzayl(zzabhVar), subscribeOptions.getFilter(), null, 0, bArr, zzabhVar3 == null ? null : new zzayp(zzabhVar3), subscribeOptions.zzbAd));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zzabh<zzaad.zzb<Status>> zzabhVar, zzv zzvVar) throws RemoteException {
        ((zzo) zzxD()).zza(new zzaf(zzvVar, new zzayl(zzabhVar), this.zzbAQ));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zzabh<zzaad.zzb<Status>> zzabhVar, zzv zzvVar, zzabh<PublishCallback> zzabhVar2, PublishOptions publishOptions) throws RemoteException {
        ((zzo) zzxD()).zza(new zzaa(zzvVar, publishOptions.getStrategy(), new zzayl(zzabhVar), zzabhVar2 == null ? null : new zzayn(zzabhVar2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(zzabh<zzaad.zzb<Status>> zzabhVar, zzabh<StatusCallback> zzabhVar2) throws RemoteException {
        zzac zzacVar = new zzac(new zzayl(zzabhVar), this.zzbAP.zzi(zzabhVar2));
        zzacVar.zzbBf = true;
        ((zzo) zzxD()).zza(zzacVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzc(zzabh<zzaad.zzb<Status>> zzabhVar, zzabh<StatusCallback> zzabhVar2) throws RemoteException {
        if (zzabhVar2 == null) {
            return;
        }
        zzac zzacVar = new zzac(new zzayl(zzabhVar), this.zzbAP.zzi(zzabhVar2));
        zzacVar.zzbBf = false;
        ((zzo) zzxD()).zza(zzacVar);
        this.zzbAP.zzj(zzabhVar2);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.nearby.messages.internal.INearbyMessagesService";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzeP */
    public zzo zzh(IBinder iBinder) {
        return zzo.zza.zzeL(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.nearby.messages.service.NearbyMessagesService.START";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzh(zzabh<zzaad.zzb<Status>> zzabhVar) throws RemoteException {
        ((zzo) zzxD()).zza(new zzh(new zzayl(zzabhVar)));
    }

    void zzmP(int i) throws RemoteException {
        String str;
        switch (i) {
            case 1:
                str = "ACTIVITY_STOPPED";
                break;
            case 2:
                str = "CLIENT_DISCONNECTED";
                break;
            default:
                Log.w("NearbyMessagesClient", String.format("Received unknown/unforeseen client lifecycle event %d, can't do anything with it.", Integer.valueOf(i)));
                return;
        }
        if (!isConnected()) {
            Log.d("NearbyMessagesClient", String.format("Failed to emit client lifecycle event %s due to GmsClient being disconnected", str));
            return;
        }
        zzj zzjVar = new zzj(i);
        Log.d("NearbyMessagesClient", String.format("Emitting client lifecycle event %s", str));
        ((zzo) zzxD()).zza(zzjVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public Bundle zzqL() {
        Bundle zzqL = super.zzqL();
        zzqL.putInt("NearbyPermissions", this.zzbzM);
        zzqL.putParcelable("ClientAppContext", this.zzbAQ);
        return zzqL;
    }
}
