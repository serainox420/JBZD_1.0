package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzrk;
import com.google.android.gms.internal.zzrp;
import com.google.android.gms.internal.zztm;
import java.lang.Thread;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class zzh {
    private static volatile zzh zzach;
    private final Context mContext;
    private final List<Object> zzaci;
    private final zzd zzacj;
    private final zza zzack;
    private volatile zzrk zzacl;
    private Thread.UncaughtExceptionHandler zzacm;

    /* loaded from: classes2.dex */
    private class zza extends ThreadPoolExecutor {
        public zza() {
            super(1, 1, 1L, TimeUnit.MINUTES, new LinkedBlockingQueue());
            setThreadFactory(new zzb());
            allowCoreThreadTimeOut(true);
        }

        @Override // java.util.concurrent.AbstractExecutorService
        protected <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
            return new FutureTask<T>(runnable, t) { // from class: com.google.android.gms.analytics.zzh.zza.1
                @Override // java.util.concurrent.FutureTask
                protected void setException(Throwable th) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler = zzh.this.zzacm;
                    if (uncaughtExceptionHandler != null) {
                        uncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
                    } else if (Log.isLoggable("GAv4", 6)) {
                        String valueOf = String.valueOf(th);
                        Log.e("GAv4", new StringBuilder(String.valueOf(valueOf).length() + 37).append("MeasurementExecutor: job failed with ").append(valueOf).toString());
                    }
                    super.setException(th);
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    private static class zzb implements ThreadFactory {
        private static final AtomicInteger zzacq = new AtomicInteger();

        private zzb() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new zzc(runnable, new StringBuilder(23).append("measurement-").append(zzacq.incrementAndGet()).toString());
        }
    }

    /* loaded from: classes2.dex */
    private static class zzc extends Thread {
        zzc(Runnable runnable, String str) {
            super(runnable, str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    zzh(Context context) {
        Context applicationContext = context.getApplicationContext();
        zzac.zzw(applicationContext);
        this.mContext = applicationContext;
        this.zzack = new zza();
        this.zzaci = new CopyOnWriteArrayList();
        this.zzacj = new zzd();
    }

    public static zzh zzam(Context context) {
        zzac.zzw(context);
        if (zzach == null) {
            synchronized (zzh.class) {
                if (zzach == null) {
                    zzach = new zzh(context);
                }
            }
        }
        return zzach;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(zze zzeVar) {
        zzac.zzdk("deliver should be called from worker thread");
        zzac.zzb(zzeVar.zzmH(), "Measurement must be submitted");
        List<zzi> zzmE = zzeVar.zzmE();
        if (zzmE.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (zzi zziVar : zzmE) {
            Uri zzmr = zziVar.zzmr();
            if (!hashSet.contains(zzmr)) {
                hashSet.add(zzmr);
                zziVar.zzb(zzeVar);
            }
        }
    }

    public static void zzmR() {
        if (!(Thread.currentThread() instanceof zzc)) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public void zza(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzacm = uncaughtExceptionHandler;
    }

    public <V> Future<V> zzc(Callable<V> callable) {
        zzac.zzw(callable);
        if (Thread.currentThread() instanceof zzc) {
            FutureTask futureTask = new FutureTask(callable);
            futureTask.run();
            return futureTask;
        }
        return this.zzack.submit(callable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zze(zze zzeVar) {
        if (zzeVar.zzmL()) {
            throw new IllegalStateException("Measurement prototype can't be submitted");
        }
        if (zzeVar.zzmH()) {
            throw new IllegalStateException("Measurement can only be submitted once");
        }
        final zze zzmC = zzeVar.zzmC();
        zzmC.zzmI();
        this.zzack.execute(new Runnable() { // from class: com.google.android.gms.analytics.zzh.1
            @Override // java.lang.Runnable
            public void run() {
                zzmC.zzmJ().zza(zzmC);
                Iterator it = zzh.this.zzaci.iterator();
                while (it.hasNext()) {
                    it.next();
                }
                zzh.this.zzb(zzmC);
            }
        });
    }

    public void zzg(Runnable runnable) {
        zzac.zzw(runnable);
        this.zzack.submit(runnable);
    }

    public zzrk zzmP() {
        if (this.zzacl == null) {
            synchronized (this) {
                if (this.zzacl == null) {
                    zzrk zzrkVar = new zzrk();
                    PackageManager packageManager = this.mContext.getPackageManager();
                    String packageName = this.mContext.getPackageName();
                    zzrkVar.setAppId(packageName);
                    zzrkVar.setAppInstallerId(packageManager.getInstallerPackageName(packageName));
                    String str = null;
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(this.mContext.getPackageName(), 0);
                        if (packageInfo != null) {
                            CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                            if (!TextUtils.isEmpty(applicationLabel)) {
                                packageName = applicationLabel.toString();
                            }
                            str = packageInfo.versionName;
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        String valueOf = String.valueOf(packageName);
                        Log.e("GAv4", valueOf.length() != 0 ? "Error retrieving package info: appName set to ".concat(valueOf) : new String("Error retrieving package info: appName set to "));
                    }
                    zzrkVar.setAppName(packageName);
                    zzrkVar.setAppVersion(str);
                    this.zzacl = zzrkVar;
                }
            }
        }
        return this.zzacl;
    }

    public zzrp zzmQ() {
        DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
        zzrp zzrpVar = new zzrp();
        zzrpVar.setLanguage(zztm.zza(Locale.getDefault()));
        zzrpVar.zzaB(displayMetrics.widthPixels);
        zzrpVar.zzaC(displayMetrics.heightPixels);
        return zzrpVar;
    }
}
