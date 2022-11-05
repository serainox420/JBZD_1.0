package com.google.android.gms.internal;

import com.facebook.internal.Utility;
import com.google.android.gms.cast.framework.media.NotificationOptions;
/* loaded from: classes2.dex */
public final class zzsw {
    public static zza<Boolean> zzafj = zza.zzf("analytics.service_enabled", false);
    public static zza<Boolean> zzafk = zza.zzf("analytics.service_client_enabled", true);
    public static zza<String> zzafl = zza.zzd("analytics.log_tag", "GAv4", "GAv4-SVC");
    public static zza<Long> zzafm = zza.zzb("analytics.max_tokens", 60);
    public static zza<Float> zzafn = zza.zza("analytics.tokens_per_sec", 0.5f);
    public static zza<Integer> zzafo = zza.zza("analytics.max_stored_hits", 2000, 20000);
    public static zza<Integer> zzafp = zza.zze("analytics.max_stored_hits_per_app", 2000);
    public static zza<Integer> zzafq = zza.zze("analytics.max_stored_properties_per_app", 100);
    public static zza<Long> zzafr = zza.zza("analytics.local_dispatch_millis", 1800000L, 120000L);
    public static zza<Long> zzafs = zza.zza("analytics.initial_local_dispatch_millis", 5000L, 5000L);
    public static zza<Long> zzaft = zza.zzb("analytics.min_local_dispatch_millis", 120000);
    public static zza<Long> zzafu = zza.zzb("analytics.max_local_dispatch_millis", 7200000);
    public static zza<Long> zzafv = zza.zzb("analytics.dispatch_alarm_millis", 7200000);
    public static zza<Long> zzafw = zza.zzb("analytics.max_dispatch_alarm_millis", 32400000);
    public static zza<Integer> zzafx = zza.zze("analytics.max_hits_per_dispatch", 20);
    public static zza<Integer> zzafy = zza.zze("analytics.max_hits_per_batch", 20);
    public static zza<String> zzafz = zza.zzr("analytics.insecure_host", "http://www.google-analytics.com");
    public static zza<String> zzafA = zza.zzr("analytics.secure_host", "https://ssl.google-analytics.com");
    public static zza<String> zzafB = zza.zzr("analytics.simple_endpoint", "/collect");
    public static zza<String> zzafC = zza.zzr("analytics.batching_endpoint", "/batch");
    public static zza<Integer> zzafD = zza.zze("analytics.max_get_length", 2036);
    public static zza<String> zzafE = zza.zzd("analytics.batching_strategy.k", zzsj.BATCH_BY_COUNT.name(), zzsj.BATCH_BY_COUNT.name());
    public static zza<String> zzafF = zza.zzr("analytics.compression_strategy.k", zzsm.GZIP.name());
    public static zza<Integer> zzafG = zza.zze("analytics.max_hits_per_request.k", 20);
    public static zza<Integer> zzafH = zza.zze("analytics.max_hit_length.k", Utility.DEFAULT_STREAM_BUFFER_SIZE);
    public static zza<Integer> zzafI = zza.zze("analytics.max_post_length.k", Utility.DEFAULT_STREAM_BUFFER_SIZE);
    public static zza<Integer> zzafJ = zza.zze("analytics.max_batch_post_length", Utility.DEFAULT_STREAM_BUFFER_SIZE);
    public static zza<String> zzafK = zza.zzr("analytics.fallback_responses.k", "404,502");
    public static zza<Integer> zzafL = zza.zze("analytics.batch_retry_interval.seconds.k", 3600);
    public static zza<Long> zzafM = zza.zzb("analytics.service_monitor_interval", 86400000);
    public static zza<Integer> zzafN = zza.zze("analytics.http_connection.connect_timeout_millis", 60000);
    public static zza<Integer> zzafO = zza.zze("analytics.http_connection.read_timeout_millis", 61000);
    public static zza<Long> zzafP = zza.zzb("analytics.campaigns.time_limit", 86400000);
    public static zza<String> zzafQ = zza.zzr("analytics.first_party_experiment_id", "");
    public static zza<Integer> zzafR = zza.zze("analytics.first_party_experiment_variant", 0);
    public static zza<Boolean> zzafS = zza.zzf("analytics.test.disable_receiver", false);
    public static zza<Long> zzafT = zza.zza("analytics.service_client.idle_disconnect_millis", (long) NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, (long) NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
    public static zza<Long> zzafU = zza.zzb("analytics.service_client.connect_timeout_millis", 5000);
    public static zza<Long> zzafV = zza.zzb("analytics.service_client.second_connect_delay_millis", 5000);
    public static zza<Long> zzafW = zza.zzb("analytics.service_client.unexpected_reconnect_millis", 60000);
    public static zza<Long> zzafX = zza.zzb("analytics.service_client.reconnect_throttle_millis", 1800000);
    public static zza<Long> zzafY = zza.zzb("analytics.monitoring.sample_period_millis", 86400000);
    public static zza<Long> zzafZ = zza.zzb("analytics.initialization_warning_threshold", 5000);

    /* loaded from: classes2.dex */
    public static final class zza<V> {
        private final V zzaga;
        private final zzaca<V> zzagb;

        private zza(zzaca<V> zzacaVar, V v) {
            com.google.android.gms.common.internal.zzac.zzw(zzacaVar);
            this.zzagb = zzacaVar;
            this.zzaga = v;
        }

        static zza<Float> zza(String str, float f) {
            return zza(str, f, f);
        }

        static zza<Float> zza(String str, float f, float f2) {
            return new zza<>(zzaca.zza(str, Float.valueOf(f2)), Float.valueOf(f));
        }

        static zza<Integer> zza(String str, int i, int i2) {
            return new zza<>(zzaca.zza(str, Integer.valueOf(i2)), Integer.valueOf(i));
        }

        static zza<Long> zza(String str, long j, long j2) {
            return new zza<>(zzaca.zza(str, Long.valueOf(j2)), Long.valueOf(j));
        }

        static zza<Boolean> zza(String str, boolean z, boolean z2) {
            return new zza<>(zzaca.zzj(str, z2), Boolean.valueOf(z));
        }

        static zza<Long> zzb(String str, long j) {
            return zza(str, j, j);
        }

        static zza<String> zzd(String str, String str2, String str3) {
            return new zza<>(zzaca.zzB(str, str3), str2);
        }

        static zza<Integer> zze(String str, int i) {
            return zza(str, i, i);
        }

        static zza<Boolean> zzf(String str, boolean z) {
            return zza(str, z, z);
        }

        static zza<String> zzr(String str, String str2) {
            return zzd(str, str2, str2);
        }

        public V get() {
            return this.zzaga;
        }
    }
}
