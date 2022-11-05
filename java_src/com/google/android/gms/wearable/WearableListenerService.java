package com.google.android.gms.wearable;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.util.zzy;
import com.google.android.gms.wearable.CapabilityApi;
import com.google.android.gms.wearable.ChannelApi;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.internal.zzbv;
import com.google.android.gms.wearable.internal.zzbz;
import com.google.android.gms.wearable.internal.zzcc;
import com.google.android.gms.wearable.internal.zzcz;
import com.google.android.gms.wearable.internal.zzk;
import com.google.android.gms.wearable.internal.zzo;
import com.google.android.gms.wearable.internal.zzs;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class WearableListenerService extends Service implements CapabilityApi.CapabilityListener, ChannelApi.ChannelListener, DataApi.DataListener, MessageApi.MessageListener, NodeApi.NodeListener {
    public static final String BIND_LISTENER_INTENT_ACTION = "com.google.android.gms.wearable.BIND_LISTENER";
    private IBinder zzaFz;
    private ComponentName zzbTe;
    private zzb zzbTf;
    private Intent zzbTg;
    private Looper zzbTh;
    private final Object zzbTi = new Object();
    private boolean zzbTj;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza implements ServiceConnection {
        private zza(WearableListenerService wearableListenerService) {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class zzb extends Handler {
        private boolean started;
        private final zza zzbTk;

        zzb(Looper looper) {
            super(looper);
            this.zzbTk = new zza();
        }

        @SuppressLint({"UntrackedBindService"})
        private synchronized void zzUi() {
            if (!this.started) {
                if (Log.isLoggable("WearableLS", 2)) {
                    String valueOf = String.valueOf(WearableListenerService.this.zzbTe);
                    Log.v("WearableLS", new StringBuilder(String.valueOf(valueOf).length() + 13).append("bindService: ").append(valueOf).toString());
                }
                WearableListenerService.this.bindService(WearableListenerService.this.zzbTg, this.zzbTk, 1);
                this.started = true;
            }
        }

        @SuppressLint({"UntrackedBindService"})
        private synchronized void zzio(String str) {
            if (this.started) {
                if (Log.isLoggable("WearableLS", 2)) {
                    String valueOf = String.valueOf(WearableListenerService.this.zzbTe);
                    Log.v("WearableLS", new StringBuilder(String.valueOf(str).length() + 17 + String.valueOf(valueOf).length()).append("unbindService: ").append(str).append(", ").append(valueOf).toString());
                }
                try {
                    WearableListenerService.this.unbindService(this.zzbTk);
                } catch (RuntimeException e) {
                    Log.e("WearableLS", "Exception when unbinding from local service", e);
                }
                this.started = false;
            }
        }

        @Override // android.os.Handler
        public void dispatchMessage(Message message) {
            zzUi();
            try {
                super.dispatchMessage(message);
            } finally {
                if (!hasMessages(0)) {
                    zzio("dispatch");
                }
            }
        }

        void quit() {
            getLooper().quit();
            zzio("quit");
        }
    }

    /* loaded from: classes2.dex */
    private final class zzc extends zzbv.zza {
        private volatile int zzbTm;

        private zzc() {
            this.zzbTm = -1;
        }

        private boolean zzUj() {
            int callingUid = Binder.getCallingUid();
            if (callingUid == this.zzbTm) {
                return true;
            }
            if (zzcz.zzck(WearableListenerService.this).zziq("com.google.android.wearable.app.cn") && zzy.zzc(WearableListenerService.this, callingUid, "com.google.android.wearable.app.cn")) {
                this.zzbTm = callingUid;
                return true;
            } else if (zzy.zzf(WearableListenerService.this, callingUid)) {
                this.zzbTm = callingUid;
                return true;
            } else {
                Log.e("WearableLS", new StringBuilder(57).append("Caller is not GooglePlayServices; caller UID: ").append(callingUid).toString());
                return false;
            }
        }

        private boolean zza(Runnable runnable, String str, Object obj) {
            boolean z = false;
            if (Log.isLoggable("WearableLS", 3)) {
                Log.d("WearableLS", String.format("%s: %s %s", str, WearableListenerService.this.zzbTe.toString(), obj));
            }
            if (zzUj()) {
                synchronized (WearableListenerService.this.zzbTi) {
                    if (!WearableListenerService.this.zzbTj) {
                        WearableListenerService.this.zzbTf.post(runnable);
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // com.google.android.gms.wearable.internal.zzbv
        public void onConnectedNodes(final List<zzcc> list) {
            zza(new Runnable() { // from class: com.google.android.gms.wearable.WearableListenerService.zzc.5
                @Override // java.lang.Runnable
                public void run() {
                    WearableListenerService.this.onConnectedNodes(list);
                }
            }, "onConnectedNodes", list);
        }

        @Override // com.google.android.gms.wearable.internal.zzbv
        public void zza(final zzbz zzbzVar) {
            zza(new Runnable() { // from class: com.google.android.gms.wearable.WearableListenerService.zzc.2
                @Override // java.lang.Runnable
                public void run() {
                    WearableListenerService.this.onMessageReceived(zzbzVar);
                }
            }, "onMessageReceived", zzbzVar);
        }

        @Override // com.google.android.gms.wearable.internal.zzbv
        public void zza(final zzcc zzccVar) {
            zza(new Runnable() { // from class: com.google.android.gms.wearable.WearableListenerService.zzc.3
                @Override // java.lang.Runnable
                public void run() {
                    WearableListenerService.this.onPeerConnected(zzccVar);
                }
            }, "onPeerConnected", zzccVar);
        }

        @Override // com.google.android.gms.wearable.internal.zzbv
        public void zza(final com.google.android.gms.wearable.internal.zzh zzhVar) {
            zza(new Runnable() { // from class: com.google.android.gms.wearable.WearableListenerService.zzc.8
                @Override // java.lang.Runnable
                public void run() {
                    WearableListenerService.this.onEntityUpdate(zzhVar);
                }
            }, "onEntityUpdate", zzhVar);
        }

        @Override // com.google.android.gms.wearable.internal.zzbv
        public void zza(final zzk zzkVar) {
            zza(new Runnable() { // from class: com.google.android.gms.wearable.WearableListenerService.zzc.7
                @Override // java.lang.Runnable
                public void run() {
                    WearableListenerService.this.onNotificationReceived(zzkVar);
                }
            }, "onNotificationReceived", zzkVar);
        }

        @Override // com.google.android.gms.wearable.internal.zzbv
        public void zza(final zzo zzoVar) {
            zza(new Runnable() { // from class: com.google.android.gms.wearable.WearableListenerService.zzc.6
                @Override // java.lang.Runnable
                public void run() {
                    WearableListenerService.this.onCapabilityChanged(zzoVar);
                }
            }, "onConnectedCapabilityChanged", zzoVar);
        }

        @Override // com.google.android.gms.wearable.internal.zzbv
        public void zza(final zzs zzsVar) {
            zza(new Runnable() { // from class: com.google.android.gms.wearable.WearableListenerService.zzc.9
                @Override // java.lang.Runnable
                public void run() {
                    zzsVar.zza(WearableListenerService.this);
                }
            }, "onChannelEvent", zzsVar);
        }

        @Override // com.google.android.gms.wearable.internal.zzbv
        public void zzaq(final DataHolder dataHolder) {
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.wearable.WearableListenerService.zzc.1
                @Override // java.lang.Runnable
                public void run() {
                    DataEventBuffer dataEventBuffer = new DataEventBuffer(dataHolder);
                    try {
                        WearableListenerService.this.onDataChanged(dataEventBuffer);
                    } finally {
                        dataEventBuffer.release();
                    }
                }
            };
            try {
                String valueOf = String.valueOf(dataHolder);
                if (zza(runnable, "onDataItemChanged", new StringBuilder(String.valueOf(valueOf).length() + 18).append(valueOf).append(", rows=").append(dataHolder.getCount()).toString())) {
                }
            } finally {
                dataHolder.close();
            }
        }

        @Override // com.google.android.gms.wearable.internal.zzbv
        public void zzb(final zzcc zzccVar) {
            zza(new Runnable() { // from class: com.google.android.gms.wearable.WearableListenerService.zzc.4
                @Override // java.lang.Runnable
                public void run() {
                    WearableListenerService.this.onPeerDisconnected(zzccVar);
                }
            }, "onPeerDisconnected", zzccVar);
        }
    }

    public Looper getLooper() {
        if (this.zzbTh == null) {
            HandlerThread handlerThread = new HandlerThread("WearableListenerService");
            handlerThread.start();
            this.zzbTh = handlerThread.getLooper();
        }
        return this.zzbTh;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        if (BIND_LISTENER_INTENT_ACTION.equals(intent.getAction())) {
            return this.zzaFz;
        }
        return null;
    }

    @Override // com.google.android.gms.wearable.CapabilityApi.CapabilityListener
    public void onCapabilityChanged(CapabilityInfo capabilityInfo) {
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public void onChannelClosed(Channel channel, int i, int i2) {
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public void onChannelOpened(Channel channel) {
    }

    public void onConnectedNodes(List<Node> list) {
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.zzbTe = new ComponentName(this, getClass().getName());
        if (Log.isLoggable("WearableLS", 3)) {
            String valueOf = String.valueOf(this.zzbTe);
            Log.d("WearableLS", new StringBuilder(String.valueOf(valueOf).length() + 10).append("onCreate: ").append(valueOf).toString());
        }
        this.zzbTf = new zzb(getLooper());
        this.zzbTg = new Intent(BIND_LISTENER_INTENT_ACTION);
        this.zzbTg.setComponent(this.zzbTe);
        this.zzaFz = new zzc();
    }

    @Override // com.google.android.gms.wearable.DataApi.DataListener
    public void onDataChanged(DataEventBuffer dataEventBuffer) {
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (Log.isLoggable("WearableLS", 3)) {
            String valueOf = String.valueOf(this.zzbTe);
            Log.d("WearableLS", new StringBuilder(String.valueOf(valueOf).length() + 11).append("onDestroy: ").append(valueOf).toString());
        }
        synchronized (this.zzbTi) {
            this.zzbTj = true;
            if (this.zzbTf == null) {
                String valueOf2 = String.valueOf(this.zzbTe);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf2).length() + 111).append("onDestroy: mServiceHandler not set, did you override onCreate() but forget to call super.onCreate()? component=").append(valueOf2).toString());
            }
            this.zzbTf.quit();
        }
        super.onDestroy();
    }

    public void onEntityUpdate(com.google.android.gms.wearable.zzb zzbVar) {
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public void onInputClosed(Channel channel, int i, int i2) {
    }

    @Override // com.google.android.gms.wearable.MessageApi.MessageListener
    public void onMessageReceived(MessageEvent messageEvent) {
    }

    public void onNotificationReceived(zzd zzdVar) {
    }

    @Override // com.google.android.gms.wearable.ChannelApi.ChannelListener
    public void onOutputClosed(Channel channel, int i, int i2) {
    }

    @Override // com.google.android.gms.wearable.NodeApi.NodeListener
    public void onPeerConnected(Node node) {
    }

    @Override // com.google.android.gms.wearable.NodeApi.NodeListener
    public void onPeerDisconnected(Node node) {
    }
}
