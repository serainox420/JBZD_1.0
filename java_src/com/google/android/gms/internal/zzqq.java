package com.google.android.gms.internal;

import com.google.android.gms.internal.zzqp;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
@zzme
/* loaded from: classes.dex */
public class zzqq<T> implements zzqp<T> {
    protected T zzZp;
    private final Object zzrJ = new Object();
    protected int zzJO = 0;
    protected final BlockingQueue<zza> zzZo = new LinkedBlockingQueue();

    /* loaded from: classes2.dex */
    class zza {
        public final zzqp.zzc<T> zzZq;
        public final zzqp.zza zzZr;

        public zza(zzqq zzqqVar, zzqp.zzc<T> zzcVar, zzqp.zza zzaVar) {
            this.zzZq = zzcVar;
            this.zzZr = zzaVar;
        }
    }

    public int getStatus() {
        return this.zzJO;
    }

    public void reject() {
        synchronized (this.zzrJ) {
            if (this.zzJO != 0) {
                throw new UnsupportedOperationException();
            }
            this.zzJO = -1;
            for (zza zzaVar : this.zzZo) {
                zzaVar.zzZr.run();
            }
            this.zzZo.clear();
        }
    }

    @Override // com.google.android.gms.internal.zzqp
    public void zza(zzqp.zzc<T> zzcVar, zzqp.zza zzaVar) {
        synchronized (this.zzrJ) {
            if (this.zzJO == 1) {
                zzcVar.zzd(this.zzZp);
            } else if (this.zzJO == -1) {
                zzaVar.run();
            } else if (this.zzJO == 0) {
                this.zzZo.add(new zza(this, zzcVar, zzaVar));
            }
        }
    }

    @Override // com.google.android.gms.internal.zzqp
    public void zzg(T t) {
        synchronized (this.zzrJ) {
            if (this.zzJO != 0) {
                throw new UnsupportedOperationException();
            }
            this.zzZp = t;
            this.zzJO = 1;
            for (zza zzaVar : this.zzZo) {
                zzaVar.zzZq.zzd(t);
            }
            this.zzZo.clear();
        }
    }
}
