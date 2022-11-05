package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
/* loaded from: classes2.dex */
public abstract class zzblh {
    private static final ThreadLocal<zzblh> zzbWb = new ThreadLocal<zzblh>() { // from class: com.google.android.gms.internal.zzblh.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: zzUJ */
        public zzblh initialValue() {
            if (Build.VERSION.SDK_INT >= 16) {
                return new zzc();
            }
            Looper myLooper = Looper.myLooper();
            if (myLooper != null) {
                return new zzb(myLooper);
            }
            throw new IllegalStateException("The current thread must have a looper!");
        }
    };

    /* loaded from: classes2.dex */
    public static abstract class zza {
        private Runnable zzbWc;
        private Choreographer.FrameCallback zzbWd;

        public abstract void doFrame(long j);

        @TargetApi(16)
        Choreographer.FrameCallback zzUK() {
            if (this.zzbWd == null) {
                this.zzbWd = new Choreographer.FrameCallback() { // from class: com.google.android.gms.internal.zzblh.zza.1
                    @Override // android.view.Choreographer.FrameCallback
                    public void doFrame(long j) {
                        zza.this.doFrame(j);
                    }
                };
            }
            return this.zzbWd;
        }

        Runnable zzUL() {
            if (this.zzbWc == null) {
                this.zzbWc = new Runnable() { // from class: com.google.android.gms.internal.zzblh.zza.2
                    @Override // java.lang.Runnable
                    public void run() {
                        zza.this.doFrame(System.nanoTime());
                    }
                };
            }
            return this.zzbWc;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzb extends zzblh {
        private Handler handler;

        public zzb(Looper looper) {
            this.handler = new Handler(looper);
        }

        @Override // com.google.android.gms.internal.zzblh
        public void zza(zza zzaVar) {
            this.handler.postDelayed(zzaVar.zzUL(), 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(16)
    /* loaded from: classes2.dex */
    public static class zzc extends zzblh {
        private Choreographer zzbWf = Choreographer.getInstance();

        @Override // com.google.android.gms.internal.zzblh
        public void zza(zza zzaVar) {
            this.zzbWf.postFrameCallback(zzaVar.zzUK());
        }
    }

    public static zzblh zzUI() {
        return zzbWb.get();
    }

    public abstract void zza(zza zzaVar);
}
