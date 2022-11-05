package com.google.android.gms.ads.internal;

import android.os.Handler;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpo;
import java.lang.ref.WeakReference;
@zzme
/* loaded from: classes.dex */
public class zzt {
    private final zza zzul;
    private zzec zzum;
    private boolean zzun;
    private boolean zzuo;
    private long zzup;
    private final Runnable zzw;

    /* loaded from: classes2.dex */
    public static class zza {
        private final Handler mHandler;

        public zza(Handler handler) {
            this.mHandler = handler;
        }

        public boolean postDelayed(Runnable runnable, long j) {
            return this.mHandler.postDelayed(runnable, j);
        }

        public void removeCallbacks(Runnable runnable) {
            this.mHandler.removeCallbacks(runnable);
        }
    }

    public zzt(com.google.android.gms.ads.internal.zza zzaVar) {
        this(zzaVar, new zza(zzpo.zzXC));
    }

    zzt(com.google.android.gms.ads.internal.zza zzaVar, zza zzaVar2) {
        this.zzun = false;
        this.zzuo = false;
        this.zzup = 0L;
        this.zzul = zzaVar2;
        final WeakReference weakReference = new WeakReference(zzaVar);
        this.zzw = new Runnable() { // from class: com.google.android.gms.ads.internal.zzt.1
            @Override // java.lang.Runnable
            public void run() {
                zzt.this.zzun = false;
                com.google.android.gms.ads.internal.zza zzaVar3 = (com.google.android.gms.ads.internal.zza) weakReference.get();
                if (zzaVar3 != null) {
                    zzaVar3.zzd(zzt.this.zzum);
                }
            }
        };
    }

    public void cancel() {
        this.zzun = false;
        this.zzul.removeCallbacks(this.zzw);
    }

    public void pause() {
        this.zzuo = true;
        if (this.zzun) {
            this.zzul.removeCallbacks(this.zzw);
        }
    }

    public void resume() {
        this.zzuo = false;
        if (this.zzun) {
            this.zzun = false;
            zza(this.zzum, this.zzup);
        }
    }

    public void zza(zzec zzecVar, long j) {
        if (this.zzun) {
            zzpk.zzbh("An ad refresh is already scheduled.");
            return;
        }
        this.zzum = zzecVar;
        this.zzun = true;
        this.zzup = j;
        if (this.zzuo) {
            return;
        }
        zzpk.zzbg(new StringBuilder(65).append("Scheduling ad refresh ").append(j).append(" milliseconds from now.").toString());
        this.zzul.postDelayed(this.zzw, j);
    }

    public boolean zzcy() {
        return this.zzun;
    }

    public void zzg(zzec zzecVar) {
        this.zzum = zzecVar;
    }

    public void zzh(zzec zzecVar) {
        zza(zzecVar, 60000L);
    }
}
