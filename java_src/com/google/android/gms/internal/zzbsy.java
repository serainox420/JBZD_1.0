package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.f;
import java.lang.Thread;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class zzbsy implements zzbpm {
    private ScheduledThreadPoolExecutor zzckA = new ScheduledThreadPoolExecutor(1, new zza()) { // from class: com.google.android.gms.internal.zzbsy.1
        @Override // java.util.concurrent.ThreadPoolExecutor
        protected void afterExecute(Runnable runnable, Throwable th) {
            super.afterExecute(runnable, th);
            if (th == null && (runnable instanceof Future)) {
                Future future = (Future) runnable;
                try {
                    if (future.isDone()) {
                        future.get();
                    }
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                } catch (CancellationException e2) {
                } catch (ExecutionException e3) {
                    th = e3.getCause();
                }
            }
            if (th != null) {
                zzbsy.this.zzj(th);
            }
        }
    };

    /* loaded from: classes2.dex */
    private class zza implements ThreadFactory {
        private zza() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = zzbsy.this.getThreadFactory().newThread(runnable);
            zzbpt zzYO = zzbsy.this.zzYO();
            zzYO.zza(newThread, "FirebaseDatabaseWorker");
            zzYO.zza(newThread, true);
            zzYO.zza(newThread, new Thread.UncaughtExceptionHandler() { // from class: com.google.android.gms.internal.zzbsy.zza.1
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread, Throwable th) {
                    zzbsy.this.zzj(th);
                }
            });
            return newThread;
        }
    }

    public zzbsy() {
        this.zzckA.setKeepAliveTime(3L, TimeUnit.SECONDS);
    }

    public static String zzl(Throwable th) {
        if (th instanceof OutOfMemoryError) {
            return "Firebase Database encountered an OutOfMemoryError. You may need to reduce the amount of data you are syncing to the client (e.g. by using queries or syncing a deeper path). See https://firebase.google.com/docs/database/ios/structure-data#best_practices_for_data_structure and https://firebase.google.com/docs/database/android/retrieve-data#filtering_data";
        }
        if (th instanceof DatabaseException) {
            return "";
        }
        String valueOf = String.valueOf(f.a());
        return new StringBuilder(String.valueOf(valueOf).length() + 104).append("Uncaught exception in Firebase Database runloop (").append(valueOf).append("). Please report to firebase-database-client@google.com").toString();
    }

    protected ThreadFactory getThreadFactory() {
        return Executors.defaultThreadFactory();
    }

    @Override // com.google.android.gms.internal.zzbpm
    public void restart() {
        this.zzckA.setCorePoolSize(1);
    }

    @Override // com.google.android.gms.internal.zzbpm
    public void shutdown() {
        this.zzckA.setCorePoolSize(0);
    }

    public ScheduledExecutorService zzXt() {
        return this.zzckA;
    }

    protected zzbpt zzYO() {
        return zzbpt.zzcgl;
    }

    public abstract void zzj(Throwable th);

    @Override // com.google.android.gms.internal.zzbpm
    public void zzs(Runnable runnable) {
        this.zzckA.execute(runnable);
    }
}
