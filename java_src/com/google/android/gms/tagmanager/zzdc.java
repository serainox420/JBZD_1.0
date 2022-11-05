package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzdc extends zzdb {
    private static final Object zzbIa = new Object();
    private static zzdc zzbIm;
    private Context zzbIb;
    private zzaw zzbIc;
    private volatile zzau zzbId;
    private zza zzbIj;
    private zzbt zzbIk;
    private int zzbIe = 1800000;
    private boolean zzbIf = true;
    private boolean zzbIg = false;
    private boolean connected = true;
    private boolean zzbIh = true;
    private zzax zzbIi = new zzax() { // from class: com.google.android.gms.tagmanager.zzdc.1
        @Override // com.google.android.gms.tagmanager.zzax
        public void zzaS(boolean z) {
            zzdc.this.zze(z, zzdc.this.connected);
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
            this.handler = new Handler(zzdc.this.zzbIb.getMainLooper(), new Handler.Callback() { // from class: com.google.android.gms.tagmanager.zzdc.zzb.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    if (1 == message.what && zzdc.zzbIa.equals(message.obj)) {
                        zzdc.this.dispatch();
                        if (!zzdc.this.isPowerSaveMode()) {
                            zzb.this.zzy(zzdc.this.zzbIe);
                        }
                    }
                    return true;
                }
            });
        }

        private Message obtainMessage() {
            return this.handler.obtainMessage(1, zzdc.zzbIa);
        }

        @Override // com.google.android.gms.tagmanager.zzdc.zza
        public void cancel() {
            this.handler.removeMessages(1, zzdc.zzbIa);
        }

        @Override // com.google.android.gms.tagmanager.zzdc.zza
        public void zzRD() {
            this.handler.removeMessages(1, zzdc.zzbIa);
            this.handler.sendMessage(obtainMessage());
        }

        @Override // com.google.android.gms.tagmanager.zzdc.zza
        public void zzy(long j) {
            this.handler.removeMessages(1, zzdc.zzbIa);
            this.handler.sendMessageDelayed(obtainMessage(), j);
        }
    }

    private zzdc() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPowerSaveMode() {
        return this.zzbIl || !this.connected || this.zzbIe <= 0;
    }

    private void zzRA() {
        this.zzbIj = new zzb();
        if (this.zzbIe > 0) {
            this.zzbIj.zzy(this.zzbIe);
        }
    }

    public static zzdc zzRy() {
        if (zzbIm == null) {
            zzbIm = new zzdc();
        }
        return zzbIm;
    }

    private void zzRz() {
        this.zzbIk = new zzbt(this);
        this.zzbIk.zzcb(this.zzbIb);
    }

    private void zzoH() {
        if (isPowerSaveMode()) {
            this.zzbIj.cancel();
            zzbo.v("PowerSaveMode initiated.");
            return;
        }
        this.zzbIj.zzy(this.zzbIe);
        zzbo.v("PowerSaveMode terminated.");
    }

    @Override // com.google.android.gms.tagmanager.zzdb
    public synchronized void dispatch() {
        if (!this.zzbIg) {
            zzbo.v("Dispatch call queued. Dispatch will run once initialization is complete.");
            this.zzbIf = true;
        } else {
            this.zzbId.zzp(new Runnable() { // from class: com.google.android.gms.tagmanager.zzdc.2
                @Override // java.lang.Runnable
                public void run() {
                    zzdc.this.zzbIc.dispatch();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized zzaw zzRB() {
        if (this.zzbIc == null) {
            if (this.zzbIb == null) {
                throw new IllegalStateException("Cant get a store unless we have a context");
            }
            this.zzbIc = new zzcg(this.zzbIi, this.zzbIb);
        }
        if (this.zzbIj == null) {
            zzRA();
        }
        this.zzbIg = true;
        if (this.zzbIf) {
            dispatch();
            this.zzbIf = false;
        }
        if (this.zzbIk == null && this.zzbIh) {
            zzRz();
        }
        return this.zzbIc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void zza(Context context, zzau zzauVar) {
        if (this.zzbIb == null) {
            this.zzbIb = context.getApplicationContext();
            if (this.zzbId == null) {
                this.zzbId = zzauVar;
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdb
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

    @Override // com.google.android.gms.tagmanager.zzdb
    public synchronized void zznO() {
        if (!isPowerSaveMode()) {
            this.zzbIj.zzRD();
        }
    }
}
