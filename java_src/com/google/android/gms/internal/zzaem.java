package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.awareness.fence.FenceState;
import com.google.android.gms.internal.zzafb;
import com.google.android.gms.internal.zzcj;
/* loaded from: classes.dex */
public class zzaem extends zzafb.zza {
    public static final zzcj.zza<com.google.android.gms.awareness.fence.zza, zzaem> zzaJj = new zzcj.zza<com.google.android.gms.awareness.fence.zza, zzaem>() { // from class: com.google.android.gms.internal.zzaem.1
        @Override // com.google.android.gms.internal.zzcj.zza
        public zzaem zza(com.google.android.gms.awareness.fence.zza zzaVar, Looper looper) {
            return new zzaem(zzaVar, looper);
        }
    };
    private final Handler mHandler;
    private final com.google.android.gms.awareness.fence.zza zzaJk;

    /* loaded from: classes2.dex */
    private static class zza implements Runnable {
        private final com.google.android.gms.awareness.fence.zza zzaJk;
        private final zzaet zzaJl;

        public zza(com.google.android.gms.awareness.fence.zza zzaVar, zzaet zzaetVar) {
            this.zzaJk = (com.google.android.gms.awareness.fence.zza) com.google.android.gms.common.internal.zzac.zzw(zzaVar);
            this.zzaJl = (zzaet) com.google.android.gms.common.internal.zzac.zzw(zzaetVar);
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    private zzaem(com.google.android.gms.awareness.fence.zza zzaVar, Looper looper) {
        this.zzaJk = (com.google.android.gms.awareness.fence.zza) com.google.android.gms.common.internal.zzac.zzw(zzaVar);
        this.mHandler = zzafn.zza((Looper) com.google.android.gms.common.internal.zzac.zzw(looper));
    }

    @Override // com.google.android.gms.internal.zzafb
    public void zza(zzaet zzaetVar) {
        this.mHandler.post(new zza(this.zzaJk, zzaetVar));
    }

    @Override // com.google.android.gms.internal.zzafb
    @Deprecated
    public void zza(zzaex zzaexVar) {
        zzcf.zza("ContextFenceListenerWrapper", "Unexpected call to deprecated method onFenceTriggered() with %s.", zzaexVar);
        this.mHandler.post(new zza(this.zzaJk, new zzaet(FenceState.zzaf(zzaexVar.zzaJy), 0L, zzaexVar.zzaB, 0)));
    }
}
