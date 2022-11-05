package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.facebook.common.time.Clock;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.lang.Thread;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
public class zzaud extends zzauh {
    private static final AtomicLong zzbtS = new AtomicLong(Long.MIN_VALUE);
    private ExecutorService zzbtI;
    private zzd zzbtJ;
    private zzd zzbtK;
    private final PriorityBlockingQueue<FutureTask<?>> zzbtL;
    private final BlockingQueue<FutureTask<?>> zzbtM;
    private final Thread.UncaughtExceptionHandler zzbtN;
    private final Thread.UncaughtExceptionHandler zzbtO;
    private final Object zzbtP;
    private final Semaphore zzbtQ;
    private volatile boolean zzbtR;

    /* loaded from: classes2.dex */
    static class zza extends RuntimeException {
    }

    /* loaded from: classes2.dex */
    private final class zzb implements Thread.UncaughtExceptionHandler {
        private final String zzbtT;

        public zzb(String str) {
            com.google.android.gms.common.internal.zzac.zzw(str);
            this.zzbtT = str;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public synchronized void uncaughtException(Thread thread, Throwable th) {
            zzaud.this.zzKl().zzLY().zzj(this.zzbtT, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class zzc<V> extends FutureTask<V> implements Comparable<zzc> {
        private final String zzbtT;
        private final long zzbtV;
        private final boolean zzbtW;

        zzc(Runnable runnable, boolean z, String str) {
            super(runnable, null);
            com.google.android.gms.common.internal.zzac.zzw(str);
            this.zzbtV = zzaud.zzbtS.getAndIncrement();
            this.zzbtT = str;
            this.zzbtW = z;
            if (this.zzbtV == Clock.MAX_TIME) {
                zzaud.this.zzKl().zzLY().log("Tasks index overflow");
            }
        }

        zzc(Callable<V> callable, boolean z, String str) {
            super(callable);
            com.google.android.gms.common.internal.zzac.zzw(str);
            this.zzbtV = zzaud.zzbtS.getAndIncrement();
            this.zzbtT = str;
            this.zzbtW = z;
            if (this.zzbtV == Clock.MAX_TIME) {
                zzaud.this.zzKl().zzLY().log("Tasks index overflow");
            }
        }

        @Override // java.util.concurrent.FutureTask
        protected void setException(Throwable th) {
            zzaud.this.zzKl().zzLY().zzj(this.zzbtT, th);
            if (th instanceof zza) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
            super.setException(th);
        }

        @Override // java.lang.Comparable
        /* renamed from: zzb */
        public int compareTo(zzc zzcVar) {
            if (this.zzbtW != zzcVar.zzbtW) {
                return this.zzbtW ? -1 : 1;
            } else if (this.zzbtV < zzcVar.zzbtV) {
                return -1;
            } else {
                if (this.zzbtV > zzcVar.zzbtV) {
                    return 1;
                }
                zzaud.this.zzKl().zzLZ().zzj("Two tasks share the same index. index", Long.valueOf(this.zzbtV));
                return 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class zzd extends Thread {
        private final Object zzbtX;
        private final BlockingQueue<FutureTask<?>> zzbtY;

        public zzd(String str, BlockingQueue<FutureTask<?>> blockingQueue) {
            com.google.android.gms.common.internal.zzac.zzw(str);
            com.google.android.gms.common.internal.zzac.zzw(blockingQueue);
            this.zzbtX = new Object();
            this.zzbtY = blockingQueue;
            setName(str);
        }

        private void zza(InterruptedException interruptedException) {
            zzaud.this.zzKl().zzMa().zzj(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            boolean z = false;
            while (!z) {
                try {
                    zzaud.this.zzbtQ.acquire();
                    z = true;
                } catch (InterruptedException e) {
                    zza(e);
                }
            }
            while (true) {
                try {
                    FutureTask<?> poll = this.zzbtY.poll();
                    if (poll == null) {
                        synchronized (this.zzbtX) {
                            if (this.zzbtY.peek() == null && !zzaud.this.zzbtR) {
                                try {
                                    this.zzbtX.wait(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
                                } catch (InterruptedException e2) {
                                    zza(e2);
                                }
                            }
                        }
                        synchronized (zzaud.this.zzbtP) {
                            if (this.zzbtY.peek() == null) {
                                break;
                            }
                        }
                    } else {
                        poll.run();
                    }
                } catch (Throwable th) {
                    synchronized (zzaud.this.zzbtP) {
                        zzaud.this.zzbtQ.release();
                        zzaud.this.zzbtP.notifyAll();
                        if (this == zzaud.this.zzbtJ) {
                            zzaud.this.zzbtJ = null;
                        } else if (this == zzaud.this.zzbtK) {
                            zzaud.this.zzbtK = null;
                        } else {
                            zzaud.this.zzKl().zzLY().log("Current scheduler thread is neither worker nor network");
                        }
                        throw th;
                    }
                }
            }
            synchronized (zzaud.this.zzbtP) {
                zzaud.this.zzbtQ.release();
                zzaud.this.zzbtP.notifyAll();
                if (this == zzaud.this.zzbtJ) {
                    zzaud.this.zzbtJ = null;
                } else if (this == zzaud.this.zzbtK) {
                    zzaud.this.zzbtK = null;
                } else {
                    zzaud.this.zzKl().zzLY().log("Current scheduler thread is neither worker nor network");
                }
            }
        }

        public void zzhA() {
            synchronized (this.zzbtX) {
                this.zzbtX.notifyAll();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaud(zzaue zzaueVar) {
        super(zzaueVar);
        this.zzbtP = new Object();
        this.zzbtQ = new Semaphore(2);
        this.zzbtL = new PriorityBlockingQueue<>();
        this.zzbtM = new LinkedBlockingQueue();
        this.zzbtN = new zzb("Thread death: Uncaught exception on worker thread");
        this.zzbtO = new zzb("Thread death: Uncaught exception on network thread");
    }

    private void zza(zzc<?> zzcVar) {
        synchronized (this.zzbtP) {
            this.zzbtL.add(zzcVar);
            if (this.zzbtJ == null) {
                this.zzbtJ = new zzd("Measurement Worker", this.zzbtL);
                this.zzbtJ.setUncaughtExceptionHandler(this.zzbtN);
                this.zzbtJ.start();
            } else {
                this.zzbtJ.zzhA();
            }
        }
    }

    private void zza(FutureTask<?> futureTask) {
        synchronized (this.zzbtP) {
            this.zzbtM.add(futureTask);
            if (this.zzbtK == null) {
                this.zzbtK = new zzd("Measurement Network", this.zzbtM);
                this.zzbtK.setUncaughtExceptionHandler(this.zzbtO);
                this.zzbtK.start();
            } else {
                this.zzbtK.zzhA();
            }
        }
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
    public void zzJX() {
        if (Thread.currentThread() != this.zzbtK) {
            throw new IllegalStateException("Call expected from network thread");
        }
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

    public boolean zzMq() {
        return Thread.currentThread() == this.zzbtJ;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ExecutorService zzMr() {
        ExecutorService executorService;
        synchronized (this.zzbtP) {
            if (this.zzbtI == null) {
                this.zzbtI = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new ArrayBlockingQueue(100));
            }
            executorService = this.zzbtI;
        }
        return executorService;
    }

    public boolean zzbc() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public <V> Future<V> zzd(Callable<V> callable) throws IllegalStateException {
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(callable);
        zzc<?> zzcVar = new zzc<>((Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.zzbtJ) {
            zzcVar.run();
        } else {
            zza(zzcVar);
        }
        return zzcVar;
    }

    public <V> Future<V> zze(Callable<V> callable) throws IllegalStateException {
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(callable);
        zzc<?> zzcVar = new zzc<>((Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.zzbtJ) {
            zzcVar.run();
        } else {
            zza(zzcVar);
        }
        return zzcVar;
    }

    public void zzm(Runnable runnable) throws IllegalStateException {
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(runnable);
        zza(new zzc<>(runnable, false, "Task exception on worker thread"));
    }

    @Override // com.google.android.gms.internal.zzaug
    public void zzmR() {
        if (Thread.currentThread() != this.zzbtJ) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // com.google.android.gms.internal.zzauh
    protected void zzmS() {
    }

    public void zzn(Runnable runnable) throws IllegalStateException {
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(runnable);
        zza((FutureTask<?>) new zzc(runnable, false, "Task exception on network thread"));
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ com.google.android.gms.common.util.zze zznR() {
        return super.zznR();
    }
}
