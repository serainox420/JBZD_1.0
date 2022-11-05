package com.google.android.gms.internal;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2.dex */
public class zzt {
    public static String TAG = "Volley";
    public static boolean DEBUG = Log.isLoggable(TAG, 2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zza {
        public static final boolean zzaj = zzt.DEBUG;
        private final List<C0382zza> zzak = new ArrayList();
        private boolean zzal = false;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.internal.zzt$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0382zza {
            public final String name;
            public final long time;
            public final long zzam;

            public C0382zza(String str, long j, long j2) {
                this.name = str;
                this.zzam = j;
                this.time = j2;
            }
        }

        private long getTotalDuration() {
            if (this.zzak.size() == 0) {
                return 0L;
            }
            return this.zzak.get(this.zzak.size() - 1).time - this.zzak.get(0).time;
        }

        protected void finalize() throws Throwable {
            if (!this.zzal) {
                zzd("Request on the loose");
                zzt.zzc("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        public synchronized void zza(String str, long j) {
            if (this.zzal) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.zzak.add(new C0382zza(str, j, SystemClock.elapsedRealtime()));
        }

        public synchronized void zzd(String str) {
            this.zzal = true;
            long totalDuration = getTotalDuration();
            if (totalDuration > 0) {
                long j = this.zzak.get(0).time;
                zzt.zzb("(%-4d ms) %s", Long.valueOf(totalDuration), str);
                long j2 = j;
                for (C0382zza c0382zza : this.zzak) {
                    long j3 = c0382zza.time;
                    zzt.zzb("(+%-4d) [%2d] %s", Long.valueOf(j3 - j2), Long.valueOf(c0382zza.zzam), c0382zza.name);
                    j2 = j3;
                }
            }
        }
    }

    public static void zza(String str, Object... objArr) {
        if (DEBUG) {
            Log.v(TAG, zzd(str, objArr));
        }
    }

    public static void zza(Throwable th, String str, Object... objArr) {
        Log.e(TAG, zzd(str, objArr), th);
    }

    public static void zzb(String str, Object... objArr) {
        Log.d(TAG, zzd(str, objArr));
    }

    public static void zzc(String str, Object... objArr) {
        Log.e(TAG, zzd(str, objArr));
    }

    private static String zzd(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            } else if (!stackTrace[i].getClass().equals(zzt.class)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                str2 = substring.substring(substring.lastIndexOf(36) + 1) + "." + stackTrace[i].getMethodName();
                break;
            } else {
                i++;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }
}
