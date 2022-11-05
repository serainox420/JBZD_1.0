package com.google.android.exoplayer2.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
public final class Loader implements o {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f3473a;
    private b<? extends c> b;
    private IOException c;

    /* loaded from: classes2.dex */
    public interface a<T extends c> {
        int a(T t, long j, long j2, IOException iOException);

        void a(T t, long j, long j2);

        void a(T t, long j, long j2, boolean z);
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a();

        boolean b();

        void c() throws IOException, InterruptedException;
    }

    /* loaded from: classes2.dex */
    public static final class UnexpectedLoaderException extends IOException {
        public UnexpectedLoaderException(Exception exc) {
            super("Unexpected " + exc.getClass().getSimpleName() + ": " + exc.getMessage(), exc);
        }
    }

    public Loader(String str) {
        this.f3473a = v.a(str);
    }

    public <T extends c> long a(T t, a<T> aVar, int i) {
        Looper myLooper = Looper.myLooper();
        com.google.android.exoplayer2.util.a.b(myLooper != null);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new b(myLooper, t, aVar, i, elapsedRealtime).a(0L);
        return elapsedRealtime;
    }

    public boolean a() {
        return this.b != null;
    }

    public void b() {
        this.b.a(false);
    }

    public void c() {
        a((Runnable) null);
    }

    public void a(Runnable runnable) {
        if (this.b != null) {
            this.b.a(true);
        }
        if (runnable != null) {
            this.f3473a.execute(runnable);
        }
        this.f3473a.shutdown();
    }

    @Override // com.google.android.exoplayer2.upstream.o
    public void d() throws IOException {
        a(Integer.MIN_VALUE);
    }

    public void a(int i) throws IOException {
        if (this.c != null) {
            throw this.c;
        }
        if (this.b != null) {
            b<? extends c> bVar = this.b;
            if (i == Integer.MIN_VALUE) {
                i = this.b.f3474a;
            }
            bVar.a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes2.dex */
    public final class b<T extends c> extends Handler implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final int f3474a;
        private final T c;
        private final a<T> d;
        private final long e;
        private IOException f;
        private int g;
        private volatile Thread h;
        private volatile boolean i;

        public b(Looper looper, T t, a<T> aVar, int i, long j) {
            super(looper);
            this.c = t;
            this.d = aVar;
            this.f3474a = i;
            this.e = j;
        }

        public void a(int i) throws IOException {
            if (this.f != null && this.g > i) {
                throw this.f;
            }
        }

        public void a(long j) {
            com.google.android.exoplayer2.util.a.b(Loader.this.b == null);
            Loader.this.b = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                a();
            }
        }

        public void a(boolean z) {
            this.i = z;
            this.f = null;
            if (hasMessages(0)) {
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                this.c.a();
                if (this.h != null) {
                    this.h.interrupt();
                }
            }
            if (z) {
                b();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                this.d.a((a<T>) this.c, elapsedRealtime, elapsedRealtime - this.e, true);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.h = Thread.currentThread();
                if (!this.c.b()) {
                    t.a("load:" + this.c.getClass().getSimpleName());
                    try {
                        this.c.c();
                    } finally {
                        t.a();
                    }
                }
                if (!this.i) {
                    sendEmptyMessage(2);
                }
            } catch (IOException e) {
                if (!this.i) {
                    obtainMessage(3, e).sendToTarget();
                }
            } catch (Error e2) {
                Log.e("LoadTask", "Unexpected error loading stream", e2);
                if (!this.i) {
                    obtainMessage(4, e2).sendToTarget();
                }
                throw e2;
            } catch (InterruptedException e3) {
                com.google.android.exoplayer2.util.a.b(this.c.b());
                if (!this.i) {
                    sendEmptyMessage(2);
                }
            } catch (Exception e4) {
                Log.e("LoadTask", "Unexpected exception loading stream", e4);
                if (!this.i) {
                    obtainMessage(3, new UnexpectedLoaderException(e4)).sendToTarget();
                }
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (!this.i) {
                if (message.what == 0) {
                    a();
                } else if (message.what == 4) {
                    throw ((Error) message.obj);
                } else {
                    b();
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    long j = elapsedRealtime - this.e;
                    if (this.c.b()) {
                        this.d.a((a<T>) this.c, elapsedRealtime, j, false);
                        return;
                    }
                    switch (message.what) {
                        case 1:
                            this.d.a((a<T>) this.c, elapsedRealtime, j, false);
                            return;
                        case 2:
                            this.d.a(this.c, elapsedRealtime, j);
                            return;
                        case 3:
                            this.f = (IOException) message.obj;
                            int a2 = this.d.a((a<T>) this.c, elapsedRealtime, j, this.f);
                            if (a2 == 3) {
                                Loader.this.c = this.f;
                                return;
                            } else if (a2 != 2) {
                                this.g = a2 == 1 ? 1 : this.g + 1;
                                a(c());
                                return;
                            } else {
                                return;
                            }
                        default:
                            return;
                    }
                }
            }
        }

        private void a() {
            this.f = null;
            Loader.this.f3473a.execute(Loader.this.b);
        }

        private void b() {
            Loader.this.b = null;
        }

        private long c() {
            return Math.min((this.g - 1) * 1000, 5000);
        }
    }
}
