package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
/* loaded from: classes2.dex */
public class zzaun extends zzauh {
    private Handler mHandler;
    protected long zzbvW;
    private final zzatk zzbvX;
    private final zzatk zzbvY;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaun(zzaue zzaueVar) {
        super(zzaueVar);
        this.zzbvX = new zzatk(this.zzbqc) { // from class: com.google.android.gms.internal.zzaun.1
            @Override // com.google.android.gms.internal.zzatk
            public void run() {
                zzaun.this.zzNf();
            }
        };
        this.zzbvY = new zzatk(this.zzbqc) { // from class: com.google.android.gms.internal.zzaun.2
            @Override // com.google.android.gms.internal.zzatk
            public void run() {
                zzaun.this.zzNg();
            }
        };
    }

    private void zzNd() {
        synchronized (this) {
            if (this.mHandler == null) {
                this.mHandler = new Handler(Looper.getMainLooper());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzNg() {
        zzmR();
        zzaO(false);
        zzJY().zzW(zznR().elapsedRealtime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzas(long j) {
        zzmR();
        zzNd();
        this.zzbvX.cancel();
        this.zzbvY.cancel();
        zzKl().zzMe().zzj("Activity resumed, time", Long.valueOf(j));
        this.zzbvW = j;
        if (zznR().currentTimeMillis() - zzKm().zzbtm.get() > zzKm().zzbto.get()) {
            zzKm().zzbtn.set(true);
            zzKm().zzbtp.set(0L);
        }
        if (zzKm().zzbtn.get()) {
            this.zzbvX.zzy(Math.max(0L, zzKm().zzbtl.get() - zzKm().zzbtp.get()));
        } else {
            this.zzbvY.zzy(Math.max(0L, 3600000 - zzKm().zzbtp.get()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzat(long j) {
        zzmR();
        zzNd();
        this.zzbvX.cancel();
        this.zzbvY.cancel();
        zzKl().zzMe().zzj("Activity paused, time", Long.valueOf(j));
        if (this.zzbvW != 0) {
            zzKm().zzbtp.set(zzKm().zzbtp.get() + (j - this.zzbvW));
        }
        zzKm().zzbto.set(zznR().currentTimeMillis());
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJV() {
        super.zzJV();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJW() {
        super.zzJW();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJX() {
        super.zzJX();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatb zzJY() {
        return super.zzJY();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatf zzJZ() {
        return super.zzJZ();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauj zzKa() {
        return super.zzKa();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatu zzKb() {
        return super.zzKb();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatl zzKc() {
        return super.zzKc();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaul zzKd() {
        return super.zzKd();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauk zzKe() {
        return super.zzKe();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatv zzKf() {
        return super.zzKf();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatj zzKg() {
        return super.zzKg();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaut zzKh() {
        return super.zzKh();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauc zzKi() {
        return super.zzKi();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaun zzKj() {
        return super.zzKj();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaud zzKk() {
        return super.zzKk();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatx zzKl() {
        return super.zzKl();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaua zzKm() {
        return super.zzKm();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzati zzKn() {
        return super.zzKn();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzNc() {
        final long elapsedRealtime = zznR().elapsedRealtime();
        zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzaun.3
            @Override // java.lang.Runnable
            public void run() {
                zzaun.this.zzas(elapsedRealtime);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzNe() {
        final long elapsedRealtime = zznR().elapsedRealtime();
        zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzaun.4
            @Override // java.lang.Runnable
            public void run() {
                zzaun.this.zzat(elapsedRealtime);
            }
        });
    }

    protected void zzNf() {
        zzmR();
        zzKl().zzMe().zzj("Session started, time", Long.valueOf(zznR().elapsedRealtime()));
        zzKm().zzbtn.set(false);
        zzKa().zze("auto", "_s", new Bundle());
    }

    public boolean zzaO(boolean z) {
        zzmR();
        zzob();
        long elapsedRealtime = zznR().elapsedRealtime();
        if (this.zzbvW == 0) {
            this.zzbvW = elapsedRealtime - 3600000;
        }
        long j = elapsedRealtime - this.zzbvW;
        if (!z && j < 1000) {
            zzKl().zzMe().zzj("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j));
            return false;
        }
        zzKm().zzbtp.set(j);
        zzKl().zzMe().zzj("Recording user engagement, ms", Long.valueOf(j));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j);
        zzauk.zza(zzKe().zzMU(), bundle);
        zzKa().zze("auto", "_e", bundle);
        this.zzbvW = elapsedRealtime;
        this.zzbvY.cancel();
        this.zzbvY.zzy(Math.max(0L, 3600000 - zzKm().zzbtp.get()));
        return true;
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    @Override // com.google.android.gms.internal.zzauh
    protected void zzmS() {
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ com.google.android.gms.common.util.zze zznR() {
        return super.zznR();
    }
}
