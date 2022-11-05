package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes2.dex */
abstract class zzsr {
    private static volatile Handler zzafd;
    private final zzsc zzadO;
    private volatile long zzafe;
    private final Runnable zzw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsr(zzsc zzscVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzscVar);
        this.zzadO = zzscVar;
        this.zzw = new Runnable() { // from class: com.google.android.gms.internal.zzsr.1
            @Override // java.lang.Runnable
            public void run() {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    zzsr.this.zzadO.zznU().zzg(this);
                    return;
                }
                boolean zzcy = zzsr.this.zzcy();
                zzsr.this.zzafe = 0L;
                if (!zzcy) {
                    return;
                }
                zzsr.this.run();
            }
        };
    }

    private Handler getHandler() {
        Handler handler;
        if (zzafd != null) {
            return zzafd;
        }
        synchronized (zzsr.class) {
            if (zzafd == null) {
                zzafd = new Handler(this.zzadO.getContext().getMainLooper());
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

    public long zzpA() {
        if (this.zzafe == 0) {
            return 0L;
        }
        return Math.abs(this.zzadO.zznR().currentTimeMillis() - this.zzafe);
    }

    public void zzy(long j) {
        cancel();
        if (j >= 0) {
            this.zzafe = this.zzadO.zznR().currentTimeMillis();
            if (getHandler().postDelayed(this.zzw, j)) {
                return;
            }
            this.zzadO.zznS().zze("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    public void zzz(long j) {
        long j2 = 0;
        if (!zzcy()) {
            return;
        }
        if (j < 0) {
            cancel();
            return;
        }
        long abs = j - Math.abs(this.zzadO.zznR().currentTimeMillis() - this.zzafe);
        if (abs >= 0) {
            j2 = abs;
        }
        getHandler().removeCallbacks(this.zzw);
        if (getHandler().postDelayed(this.zzw, j2)) {
            return;
        }
        this.zzadO.zznS().zze("Failed to adjust delayed post. time", Long.valueOf(j2));
    }
}
