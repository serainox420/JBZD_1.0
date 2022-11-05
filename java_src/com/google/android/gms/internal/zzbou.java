package com.google.android.gms.internal;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class zzbou {
    private final zzbrn zzcaF;
    private final ScheduledExecutorService zzcat;
    private final long zzcdp;
    private final long zzcdq;
    private final double zzcdr;
    private final double zzcds;
    private final Random zzcdt;
    private ScheduledFuture<?> zzcdu;
    private long zzcdv;
    private boolean zzcdw;

    /* loaded from: classes2.dex */
    public static class zza {
        private final zzbrn zzcaF;
        private final ScheduledExecutorService zzcdy;
        private long zzcdp = 1000;
        private double zzcdr = 0.5d;
        private long zzcdz = NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS;
        private double zzcds = 1.3d;

        public zza(ScheduledExecutorService scheduledExecutorService, zzbro zzbroVar, String str) {
            this.zzcdy = scheduledExecutorService;
            this.zzcaF = new zzbrn(zzbroVar, str);
        }

        public zzbou zzYi() {
            return new zzbou(this.zzcdy, this.zzcaF, this.zzcdp, this.zzcdz, this.zzcds, this.zzcdr);
        }

        public zza zzaL(long j) {
            this.zzcdp = j;
            return this;
        }

        public zza zzaM(long j) {
            this.zzcdz = j;
            return this;
        }

        public zza zzj(double d) {
            this.zzcds = d;
            return this;
        }

        public zza zzk(double d) {
            if (d < 0.0d || d > 1.0d) {
                throw new IllegalArgumentException(new StringBuilder(47).append("Argument out of range: ").append(d).toString());
            }
            this.zzcdr = d;
            return this;
        }
    }

    private zzbou(ScheduledExecutorService scheduledExecutorService, zzbrn zzbrnVar, long j, long j2, double d, double d2) {
        this.zzcdt = new Random();
        this.zzcdw = true;
        this.zzcat = scheduledExecutorService;
        this.zzcaF = zzbrnVar;
        this.zzcdp = j;
        this.zzcdq = j2;
        this.zzcds = d;
        this.zzcdr = d2;
    }

    public void cancel() {
        if (this.zzcdu != null) {
            this.zzcaF.zzi("Cancelling existing retry attempt", new Object[0]);
            this.zzcdu.cancel(false);
            this.zzcdu = null;
        } else {
            this.zzcaF.zzi("No existing retry attempt to cancel", new Object[0]);
        }
        this.zzcdv = 0L;
    }

    public void zzVU() {
        this.zzcdw = true;
        this.zzcdv = 0L;
    }

    public void zzYh() {
        this.zzcdv = this.zzcdq;
    }

    public void zzr(final Runnable runnable) {
        long j = 0;
        Runnable runnable2 = new Runnable() { // from class: com.google.android.gms.internal.zzbou.1
            @Override // java.lang.Runnable
            public void run() {
                zzbou.this.zzcdu = null;
                runnable.run();
            }
        };
        if (this.zzcdu != null) {
            this.zzcaF.zzi("Cancelling previous scheduled retry", new Object[0]);
            this.zzcdu.cancel(false);
            this.zzcdu = null;
        }
        if (!this.zzcdw) {
            if (this.zzcdv == 0) {
                this.zzcdv = this.zzcdp;
            } else {
                this.zzcdv = Math.min((long) (this.zzcdv * this.zzcds), this.zzcdq);
            }
            j = (long) (((1.0d - this.zzcdr) * this.zzcdv) + (this.zzcdr * this.zzcdv * this.zzcdt.nextDouble()));
        }
        this.zzcdw = false;
        this.zzcaF.zzi("Scheduling retry in %dms", Long.valueOf(j));
        this.zzcdu = this.zzcat.schedule(runnable2, j, TimeUnit.MILLISECONDS);
    }
}
