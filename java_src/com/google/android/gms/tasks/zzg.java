package com.google.android.gms.tasks;

import java.util.ArrayDeque;
import java.util.Queue;
/* loaded from: classes2.dex */
class zzg<TResult> {
    private Queue<zzf<TResult>> zzbNA;
    private boolean zzbNB;
    private final Object zzrJ = new Object();

    public void zza(Task<TResult> task) {
        zzf<TResult> poll;
        synchronized (this.zzrJ) {
            if (this.zzbNA == null || this.zzbNB) {
                return;
            }
            this.zzbNB = true;
            while (true) {
                synchronized (this.zzrJ) {
                    poll = this.zzbNA.poll();
                    if (poll == null) {
                        this.zzbNB = false;
                        return;
                    }
                }
                poll.onComplete(task);
            }
        }
    }

    public void zza(zzf<TResult> zzfVar) {
        synchronized (this.zzrJ) {
            if (this.zzbNA == null) {
                this.zzbNA = new ArrayDeque();
            }
            this.zzbNA.add(zzfVar);
        }
    }
}
