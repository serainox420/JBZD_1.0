package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class zzbim {
    private boolean mClosed;
    private String zzbFy;
    private final ScheduledExecutorService zzbHw;
    private ScheduledFuture<?> zzbHy;

    public zzbim() {
        this(Executors.newSingleThreadScheduledExecutor());
    }

    zzbim(ScheduledExecutorService scheduledExecutorService) {
        this.zzbHy = null;
        this.zzbFy = null;
        this.zzbHw = scheduledExecutorService;
        this.mClosed = false;
    }

    public void zza(Context context, zzbie zzbieVar, long j, zzbia zzbiaVar) {
        synchronized (this) {
            if (this.zzbHy != null) {
                this.zzbHy.cancel(false);
            }
            this.zzbHy = this.zzbHw.schedule(new zzbil(context, zzbieVar, zzbiaVar), j, TimeUnit.MILLISECONDS);
        }
    }
}
