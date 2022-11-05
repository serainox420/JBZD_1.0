package com.google.android.gms.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
@zzme
/* loaded from: classes.dex */
public class zzpw {
    private HandlerThread zzYy = null;
    private Handler mHandler = null;
    private int zzYz = 0;
    private final Object zzrJ = new Object();

    public Looper zzlb() {
        Looper looper;
        synchronized (this.zzrJ) {
            if (this.zzYz != 0) {
                com.google.android.gms.common.internal.zzac.zzb(this.zzYy, "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.zzYy == null) {
                zzpk.v("Starting the looper thread.");
                this.zzYy = new HandlerThread("LooperProvider");
                this.zzYy.start();
                this.mHandler = new Handler(this.zzYy.getLooper());
                zzpk.v("Looper thread started.");
            } else {
                zzpk.v("Resuming the looper thread");
                this.zzrJ.notifyAll();
            }
            this.zzYz++;
            looper = this.zzYy.getLooper();
        }
        return looper;
    }

    public void zzlc() {
        synchronized (this.zzrJ) {
            com.google.android.gms.common.internal.zzac.zzb(this.zzYz > 0, "Invalid state: release() called more times than expected.");
            int i = this.zzYz - 1;
            this.zzYz = i;
            if (i == 0) {
                this.mHandler.post(new Runnable() { // from class: com.google.android.gms.internal.zzpw.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (zzpw.this.zzrJ) {
                            zzpk.v("Suspending the looper thread");
                            while (zzpw.this.zzYz == 0) {
                                try {
                                    zzpw.this.zzrJ.wait();
                                    zzpk.v("Looper thread resumed");
                                } catch (InterruptedException e) {
                                    zzpk.v("Looper thread interrupted.");
                                }
                            }
                        }
                    }
                });
            }
        }
    }
}
