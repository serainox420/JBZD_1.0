package com.google.android.gms.internal;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public class zzf implements zzo {
    private final Executor zzr;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza implements Runnable {
        private final zzl zzu;
        private final zzn zzv;
        private final Runnable zzw;

        public zza(zzl zzlVar, zzn zznVar, Runnable runnable) {
            this.zzu = zzlVar;
            this.zzv = zznVar;
            this.zzw = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.zzv.isSuccess()) {
                this.zzu.zza((zzl) this.zzv.result);
            } else {
                this.zzu.zzc(this.zzv.zzag);
            }
            if (this.zzv.zzah) {
                this.zzu.zzc("intermediate-response");
            } else {
                this.zzu.zzd("done");
            }
            if (this.zzw != null) {
                this.zzw.run();
            }
        }
    }

    public zzf(final Handler handler) {
        this.zzr = new Executor() { // from class: com.google.android.gms.internal.zzf.1
            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    @Override // com.google.android.gms.internal.zzo
    public void zza(zzl<?> zzlVar, zzn<?> zznVar) {
        zza(zzlVar, zznVar, null);
    }

    @Override // com.google.android.gms.internal.zzo
    public void zza(zzl<?> zzlVar, zzn<?> zznVar, Runnable runnable) {
        zzlVar.zzr();
        zzlVar.zzc("post-response");
        this.zzr.execute(new zza(zzlVar, zznVar, runnable));
    }

    @Override // com.google.android.gms.internal.zzo
    public void zza(zzl<?> zzlVar, zzs zzsVar) {
        zzlVar.zzc("post-error");
        this.zzr.execute(new zza(zzlVar, zzn.zzd(zzsVar), null));
    }
}
