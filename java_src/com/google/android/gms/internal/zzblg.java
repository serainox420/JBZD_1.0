package com.google.android.gms.internal;

import android.animation.Animator;
import com.google.android.gms.internal.zzblh;
/* loaded from: classes2.dex */
public class zzblg extends zzblf {
    protected final Animator zzbVW;
    private final Runnable zzbVY;
    private zzblh.zza zzbVZ = new zzblh.zza() { // from class: com.google.android.gms.internal.zzblg.1
        @Override // com.google.android.gms.internal.zzblh.zza
        public void doFrame(long j) {
            if (zzblg.this.zzb(zzblg.this.zzbVW) || zzblg.this.zzbVW.isStarted()) {
                return;
            }
            if (zzblg.this.zzbVY != null) {
                zzblg.this.zzbVY.run();
            }
            zzblg.this.zzbVW.start();
        }
    };
    private final zzblh zzbVX = zzblh.zzUI();

    private zzblg(Animator animator, Runnable runnable) {
        this.zzbVW = animator;
        this.zzbVY = runnable;
    }

    public static void zza(Animator animator, Runnable runnable) {
        animator.addListener(new zzblg(animator, runnable));
    }

    public static void zzc(Animator animator) {
        zza(animator, null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!zzb(animator)) {
            this.zzbVX.zza(this.zzbVZ);
        }
    }
}
