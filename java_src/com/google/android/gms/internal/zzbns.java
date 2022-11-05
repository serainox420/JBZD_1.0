package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class zzbns {
    public static final zzaqa<Boolean> zzbZp = zzaqa.zzb(0, "crash:enabled", (Boolean) true);
    public static final zzaqa<String> zzbZq = zzaqa.zzc(0, "crash:gateway_url", "https://mobilecrashreporting.googleapis.com/v1/crashes:batchCreate?key=");
    public static final zzaqa<Integer> zzbZr = zzaqa.zzb(0, "crash:log_buffer_capacity", 100);
    public static final zzaqa<Integer> zzbZs = zzaqa.zzb(0, "crash:log_buffer_max_total_size", 32768);
    public static final zzaqa<Integer> zzbZt = zzaqa.zzb(0, "crash:crash_backlog_capacity", 5);
    public static final zzaqa<Long> zzbZu = zzaqa.zzb(0, "crash:crash_backlog_max_age", 604800000L);
    public static final zzaqa<Long> zzbZv = zzaqa.zzb(0, "crash:starting_backoff", TimeUnit.SECONDS.toMillis(1));
    public static final zzaqa<Long> zzbZw = zzaqa.zzb(0, "crash:backoff_limit", TimeUnit.MINUTES.toMillis(60));
    public static final zzaqa<Integer> zzbZx = zzaqa.zzb(0, "crash:retry_num_attempts", 12);
    public static final zzaqa<Integer> zzbZy = zzaqa.zzb(0, "crash:batch_size", 5);
    public static final zzaqa<Long> zzbZz = zzaqa.zzb(0, "crash:batch_throttle", TimeUnit.MINUTES.toMillis(5));
    public static final zzaqa<Integer> zzbZA = zzaqa.zzb(0, "crash:frame_depth", 60);
    public static final zzaqa<Integer> zzbZB = zzaqa.zzb(0, "crash:receiver_delay", 100);
    public static final zzaqa<Integer> zzbZC = zzaqa.zzb(0, "crash:thread_idle_timeout", 10);

    public static final void initialize(Context context) {
        zzaqe.zzDE();
        zzaqb.initialize(context);
    }
}
