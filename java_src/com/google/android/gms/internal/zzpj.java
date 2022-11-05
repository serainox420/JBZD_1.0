package com.google.android.gms.internal;

import java.util.concurrent.Future;
@zzme
/* loaded from: classes.dex */
public abstract class zzpj implements zzpq<Future> {
    private volatile Thread zzXh;
    private boolean zzXi;
    private final Runnable zzw;

    public zzpj() {
        this.zzw = new Runnable() { // from class: com.google.android.gms.internal.zzpj.1
            @Override // java.lang.Runnable
            public final void run() {
                zzpj.this.zzXh = Thread.currentThread();
                zzpj.this.zzco();
            }
        };
        this.zzXi = false;
    }

    public zzpj(boolean z) {
        this.zzw = new Runnable() { // from class: com.google.android.gms.internal.zzpj.1
            @Override // java.lang.Runnable
            public final void run() {
                zzpj.this.zzXh = Thread.currentThread();
                zzpj.this.zzco();
            }
        };
        this.zzXi = z;
    }

    @Override // com.google.android.gms.internal.zzpq
    public final void cancel() {
        onStop();
        if (this.zzXh != null) {
            this.zzXh.interrupt();
        }
    }

    public abstract void onStop();

    public abstract void zzco();

    @Override // com.google.android.gms.internal.zzpq
    /* renamed from: zzkG */
    public final Future zziP() {
        return this.zzXi ? zzpn.zza(1, this.zzw) : zzpn.zza(this.zzw);
    }
}
