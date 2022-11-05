package com.google.android.gms.drive.events;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.google.android.gms.common.util.zzy;
import com.google.android.gms.internal.zzaic;
import com.google.android.gms.internal.zzaiz;
import com.google.android.gms.internal.zzajp;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class DriveEventService extends Service implements ChangeListener, CompletionListener, zzd, zzt {
    public static final String ACTION_HANDLE_EVENT = "com.google.android.gms.drive.events.HANDLE_EVENT";
    private final String mName;
    int zzaEV;
    private CountDownLatch zzaLR;
    zza zzaLS;
    boolean zzaLT;

    /* loaded from: classes2.dex */
    final class zza extends Handler {
        zza() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Message zzAP() {
            return obtainMessage(2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Message zzb(zzajp zzajpVar) {
            return obtainMessage(1, zzajpVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            zzaic.zzE("DriveEventService", new StringBuilder(38).append("handleMessage message type:").append(message.what).toString());
            switch (message.what) {
                case 1:
                    DriveEventService.this.zza((zzajp) message.obj);
                    return;
                case 2:
                    getLooper().quit();
                    return;
                default:
                    zzaic.zzF("DriveEventService", new StringBuilder(35).append("Unexpected message type:").append(message.what).toString());
                    return;
            }
        }
    }

    /* loaded from: classes2.dex */
    final class zzb extends zzaiz.zza {
        zzb() {
        }

        @Override // com.google.android.gms.internal.zzaiz
        public void zzc(zzajp zzajpVar) throws RemoteException {
            synchronized (DriveEventService.this) {
                String valueOf = String.valueOf(zzajpVar);
                zzaic.zzE("DriveEventService", new StringBuilder(String.valueOf(valueOf).length() + 9).append("onEvent: ").append(valueOf).toString());
                DriveEventService.this.zzAO();
                if (DriveEventService.this.zzaLS != null) {
                    DriveEventService.this.zzaLS.sendMessage(DriveEventService.this.zzaLS.zzb(zzajpVar));
                } else {
                    zzaic.zzG("DriveEventService", "Receiving event before initialize is completed.");
                }
            }
        }
    }

    protected DriveEventService() {
        this("DriveEventService");
    }

    protected DriveEventService(String str) {
        this.zzaLT = false;
        this.zzaEV = -1;
        this.mName = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzAO() throws SecurityException {
        int callingUid = getCallingUid();
        if (callingUid == this.zzaEV) {
            return;
        }
        if (!zzy.zzf(this, callingUid)) {
            throw new SecurityException("Caller is not GooglePlayServices");
        }
        this.zzaEV = callingUid;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zzajp zzajpVar) {
        DriveEvent zzBi = zzajpVar.zzBi();
        String valueOf = String.valueOf(zzBi);
        zzaic.zzE("DriveEventService", new StringBuilder(String.valueOf(valueOf).length() + 20).append("handleEventMessage: ").append(valueOf).toString());
        try {
            switch (zzBi.getType()) {
                case 1:
                    onChange((ChangeEvent) zzBi);
                    break;
                case 2:
                    onCompletion((CompletionEvent) zzBi);
                    break;
                case 3:
                case 5:
                case 6:
                default:
                    String str = this.mName;
                    String valueOf2 = String.valueOf(zzBi);
                    zzaic.zzF(str, new StringBuilder(String.valueOf(valueOf2).length() + 17).append("Unhandled event: ").append(valueOf2).toString());
                    break;
                case 4:
                    zza((com.google.android.gms.drive.events.zzb) zzBi);
                    break;
                case 7:
                    zza((zzr) zzBi);
                    break;
            }
        } catch (Exception e) {
            String str2 = this.mName;
            String valueOf3 = String.valueOf(zzBi);
            zzaic.zza(str2, e, new StringBuilder(String.valueOf(valueOf3).length() + 22).append("Error handling event: ").append(valueOf3).toString());
        }
    }

    protected int getCallingUid() {
        return Binder.getCallingUid();
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.drive.events.DriveEventService$1] */
    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        IBinder iBinder;
        if (ACTION_HANDLE_EVENT.equals(intent.getAction())) {
            if (this.zzaLS == null && !this.zzaLT) {
                this.zzaLT = true;
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                this.zzaLR = new CountDownLatch(1);
                new Thread() { // from class: com.google.android.gms.drive.events.DriveEventService.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            Looper.prepare();
                            DriveEventService.this.zzaLS = new zza();
                            DriveEventService.this.zzaLT = false;
                            countDownLatch.countDown();
                            zzaic.zzE("DriveEventService", "Bound and starting loop");
                            Looper.loop();
                            zzaic.zzE("DriveEventService", "Finished loop");
                        } finally {
                            if (DriveEventService.this.zzaLR != null) {
                                DriveEventService.this.zzaLR.countDown();
                            }
                        }
                    }
                }.start();
                try {
                    if (!countDownLatch.await(5000L, TimeUnit.MILLISECONDS)) {
                        zzaic.zzG("DriveEventService", "Failed to synchronously initialize event handler.");
                    }
                } catch (InterruptedException e) {
                    throw new RuntimeException("Unable to start event handler", e);
                }
            }
            iBinder = new zzb().asBinder();
        } else {
            iBinder = null;
        }
        return iBinder;
    }

    @Override // com.google.android.gms.drive.events.ChangeListener
    public void onChange(ChangeEvent changeEvent) {
        String str = this.mName;
        String valueOf = String.valueOf(changeEvent);
        zzaic.zzF(str, new StringBuilder(String.valueOf(valueOf).length() + 24).append("Unhandled change event: ").append(valueOf).toString());
    }

    @Override // com.google.android.gms.drive.events.CompletionListener
    public void onCompletion(CompletionEvent completionEvent) {
        String str = this.mName;
        String valueOf = String.valueOf(completionEvent);
        zzaic.zzF(str, new StringBuilder(String.valueOf(valueOf).length() + 28).append("Unhandled completion event: ").append(valueOf).toString());
    }

    @Override // android.app.Service
    public synchronized void onDestroy() {
        zzaic.zzE("DriveEventService", "onDestroy");
        if (this.zzaLS != null) {
            this.zzaLS.sendMessage(this.zzaLS.zzAP());
            this.zzaLS = null;
            try {
                if (!this.zzaLR.await(5000L, TimeUnit.MILLISECONDS)) {
                    zzaic.zzF("DriveEventService", "Failed to synchronously quit event handler. Will quit itself");
                }
            } catch (InterruptedException e) {
            }
            this.zzaLR = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return true;
    }

    @Override // com.google.android.gms.drive.events.zzd
    public void zza(com.google.android.gms.drive.events.zzb zzbVar) {
        String str = this.mName;
        String valueOf = String.valueOf(zzbVar);
        zzaic.zzF(str, new StringBuilder(String.valueOf(valueOf).length() + 35).append("Unhandled changes available event: ").append(valueOf).toString());
    }

    public void zza(zzr zzrVar) {
        String str = this.mName;
        String valueOf = String.valueOf(zzrVar);
        zzaic.zzF(str, new StringBuilder(String.valueOf(valueOf).length() + 32).append("Unhandled transfer state event: ").append(valueOf).toString());
    }
}
