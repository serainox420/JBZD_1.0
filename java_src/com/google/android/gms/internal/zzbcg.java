package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzbcg extends zzbcf {
    private static final Object zzbIa = new Object();
    private static zzbcg zzbKx;
    private Context zzbIb;
    private zzbbp zzbKr;
    private volatile zzbbn zzbKs;
    private zza zzbKv;
    private zzbbw zzbKw;
    private int zzbIe = 1800000;
    private boolean zzbIf = true;
    private boolean zzbIg = false;
    private boolean zzbKt = false;
    private boolean connected = true;
    private boolean zzbIh = true;
    private zzbbq zzbKu = new zzbbq() { // from class: com.google.android.gms.internal.zzbcg.1
        @Override // com.google.android.gms.internal.zzbbq
        public void zzaS(boolean z) {
            zzbcg.this.zze(z, zzbcg.this.connected);
        }
    };
    private boolean zzbIl = false;

    /* loaded from: classes2.dex */
    public interface zza {
        void cancel();

        void zzRD();

        void zzy(long j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzb implements zza {
        private Handler handler;

        private zzb() {
            this.handler = new Handler(zzbcg.this.zzbIb.getMainLooper(), new Handler.Callback() { // from class: com.google.android.gms.internal.zzbcg.zzb.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    if (1 == message.what && zzbcg.zzbIa.equals(message.obj)) {
                        zzbcg.this.dispatch();
                        if (!zzbcg.this.isPowerSaveMode()) {
                            zzb.this.zzy(zzbcg.this.zzbIe);
                        }
                    }
                    return true;
                }
            });
        }

        private Message obtainMessage() {
            return this.handler.obtainMessage(1, zzbcg.zzbIa);
        }

        @Override // com.google.android.gms.internal.zzbcg.zza
        public void cancel() {
            this.handler.removeMessages(1, zzbcg.zzbIa);
        }

        @Override // com.google.android.gms.internal.zzbcg.zza
        public void zzRD() {
            this.handler.removeMessages(1, zzbcg.zzbIa);
            this.handler.sendMessage(obtainMessage());
        }

        @Override // com.google.android.gms.internal.zzbcg.zza
        public void zzy(long j) {
            this.handler.removeMessages(1, zzbcg.zzbIa);
            this.handler.sendMessageDelayed(obtainMessage(), j);
        }
    }

    private zzbcg() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPowerSaveMode() {
        return this.zzbIl || !this.connected || this.zzbIe <= 0;
    }

    private void zzRA() {
        this.zzbKv = new zzb();
        if (this.zzbIe > 0) {
            this.zzbKv.zzy(this.zzbIe);
        }
    }

    private void zzRz() {
        this.zzbKw = new zzbbw(this);
        this.zzbKw.zzcb(this.zzbIb);
    }

    public static zzbcg zzSr() {
        if (zzbKx == null) {
            zzbKx = new zzbcg();
        }
        return zzbKx;
    }

    private void zzoH() {
        if (isPowerSaveMode()) {
            this.zzbKv.cancel();
            zzbbu.v("PowerSaveMode initiated.");
            return;
        }
        this.zzbKv.zzy(this.zzbIe);
        zzbbu.v("PowerSaveMode terminated.");
    }

    public synchronized void dispatch() {
        if (!this.zzbIg) {
            zzbbu.v("Dispatch call queued. Dispatch will run once initialization is complete.");
            this.zzbIf = true;
        } else if (!this.zzbKt) {
            this.zzbKt = true;
            this.zzbKs.zzp(new Runnable() { // from class: com.google.android.gms.internal.zzbcg.2
                @Override // java.lang.Runnable
                public void run() {
                    zzbcg.this.zzbKt = false;
                    zzbcg.this.zzbKr.dispatch();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized zzbbp zzSs() {
        if (this.zzbKr == null) {
            if (this.zzbIb == null) {
                throw new IllegalStateException("Cant get a store unless we have a context");
            }
            this.zzbKr = new zzbbx(this.zzbKu, this.zzbIb);
        }
        if (this.zzbKv == null) {
            zzRA();
        }
        this.zzbIg = true;
        if (this.zzbIf) {
            dispatch();
            this.zzbIf = false;
        }
        if (this.zzbKw == null && this.zzbIh) {
            zzRz();
        }
        return this.zzbKr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void zza(Context context, zzbbn zzbbnVar) {
        if (this.zzbIb == null) {
            this.zzbIb = context.getApplicationContext();
            if (this.zzbKs == null) {
                this.zzbKs = zzbbnVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzbcf
    public synchronized void zzaT(boolean z) {
        zze(this.zzbIl, z);
    }

    synchronized void zze(boolean z, boolean z2) {
        boolean isPowerSaveMode = isPowerSaveMode();
        this.zzbIl = z;
        this.connected = z2;
        if (isPowerSaveMode() != isPowerSaveMode) {
            zzoH();
        }
    }

    @Override // com.google.android.gms.internal.zzbcf
    public synchronized void zznO() {
        if (!isPowerSaveMode()) {
            this.zzbKv.zzRD();
        }
    }
}
