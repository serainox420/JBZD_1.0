package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;
@zzme
/* loaded from: classes.dex */
class zzqn {
    private final Object zzZk = new Object();
    private final List<Runnable> zzZl = new ArrayList();
    private final List<Runnable> zzZm = new ArrayList();
    private boolean zzZn = false;

    private void zze(Runnable runnable) {
        zzpn.zza(runnable);
    }

    private void zzf(Runnable runnable) {
        zzqe.zzYP.post(runnable);
    }

    public void zzc(Runnable runnable) {
        synchronized (this.zzZk) {
            if (this.zzZn) {
                zze(runnable);
            } else {
                this.zzZl.add(runnable);
            }
        }
    }

    public void zzd(Runnable runnable) {
        synchronized (this.zzZk) {
            if (this.zzZn) {
                zzf(runnable);
            } else {
                this.zzZm.add(runnable);
            }
        }
    }

    public void zzlm() {
        synchronized (this.zzZk) {
            if (this.zzZn) {
                return;
            }
            for (Runnable runnable : this.zzZl) {
                zze(runnable);
            }
            for (Runnable runnable2 : this.zzZm) {
                zzf(runnable2);
            }
            this.zzZl.clear();
            this.zzZm.clear();
            this.zzZn = true;
        }
    }
}
