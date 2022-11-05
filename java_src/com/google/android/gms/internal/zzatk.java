package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzatk {
    private static volatile Handler zzafd;
    private volatile long zzafe;
    private final zzaue zzbqc;
    private boolean zzbrt;
    private final Runnable zzw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatk(zzaue zzaueVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzaueVar);
        this.zzbqc = zzaueVar;
        this.zzbrt = true;
        this.zzw = new Runnable() { // from class: com.google.android.gms.internal.zzatk.1
            @Override // java.lang.Runnable
            public void run() {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    zzatk.this.zzbqc.zzKk().zzm(this);
                    return;
                }
                boolean zzcy = zzatk.this.zzcy();
                zzatk.this.zzafe = 0L;
                if (!zzcy || !zzatk.this.zzbrt) {
                    return;
                }
                zzatk.this.run();
            }
        };
    }

    private Handler getHandler() {
        Handler handler;
        if (zzafd != null) {
            return zzafd;
        }
        synchronized (zzatk.class) {
            if (zzafd == null) {
                zzafd = new Handler(this.zzbqc.getContext().getMainLooper());
            }
            handler = zzafd;
        }
        return handler;
    }

    public void cancel() {
        this.zzafe = 0L;
        getHandler().removeCallbacks(this.zzw);
    }

    public abstract void run();

    public boolean zzcy() {
        return this.zzafe != 0;
    }

    public void zzy(long j) {
        cancel();
        if (j >= 0) {
            this.zzafe = this.zzbqc.zznR().currentTimeMillis();
            if (getHandler().postDelayed(this.zzw, j)) {
                return;
            }
            this.zzbqc.zzKl().zzLY().zzj("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }
}
