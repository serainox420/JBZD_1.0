package com.google.android.exoplayer2.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.WindowManager;
/* compiled from: VideoFrameReleaseTimeHelper.java */
@TargetApi(16)
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final a f3186a;
    private final boolean b;
    private final long c;
    private final long d;
    private long e;
    private long f;
    private long g;
    private boolean h;
    private long i;
    private long j;
    private long k;

    public d() {
        this(-1.0d, false);
    }

    public d(Context context) {
        this(a(context), true);
    }

    private d(double d, boolean z) {
        this.b = z;
        if (z) {
            this.f3186a = a.a();
            this.c = (long) (1.0E9d / d);
            this.d = (this.c * 80) / 100;
            return;
        }
        this.f3186a = null;
        this.c = -1L;
        this.d = -1L;
    }

    public void a() {
        this.h = false;
        if (this.b) {
            this.f3186a.b();
        }
    }

    public void b() {
        if (this.b) {
            this.f3186a.c();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long a(long j, long j2) {
        long j3;
        long j4;
        long j5 = j * 1000;
        if (this.h) {
            if (j != this.e) {
                this.k++;
                this.f = this.g;
            }
            if (this.k >= 6) {
                j4 = this.f + ((j5 - this.j) / this.k);
                if (b(j4, j2)) {
                    this.h = false;
                    j3 = j2;
                    j4 = j5;
                } else {
                    j3 = (this.i + j4) - this.j;
                }
                if (!this.h) {
                    this.j = j5;
                    this.i = j2;
                    this.k = 0L;
                    this.h = true;
                    c();
                }
                this.e = j;
                this.g = j4;
                return (this.f3186a == null || this.f3186a.f3187a == 0) ? j3 : a(j3, this.f3186a.f3187a, this.c) - this.d;
            } else if (b(j5, j2)) {
                this.h = false;
            }
        }
        j3 = j2;
        j4 = j5;
        if (!this.h) {
        }
        this.e = j;
        this.g = j4;
        if (this.f3186a == null) {
            return j3;
        }
    }

    protected void c() {
    }

    private boolean b(long j, long j2) {
        return Math.abs((j2 - this.i) - (j - this.j)) > 20000000;
    }

    private static long a(long j, long j2, long j3) {
        long j4;
        long j5 = (((j - j2) / j3) * j3) + j2;
        if (j <= j5) {
            j4 = j5 - j3;
        } else {
            j4 = j5;
            j5 += j3;
        }
        return j5 - j < j - j4 ? j5 : j4;
    }

    private static float a(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRefreshRate();
    }

    /* compiled from: VideoFrameReleaseTimeHelper.java */
    /* loaded from: classes2.dex */
    private static final class a implements Handler.Callback, Choreographer.FrameCallback {
        private static final a b = new a();

        /* renamed from: a  reason: collision with root package name */
        public volatile long f3187a;
        private final Handler c;
        private final HandlerThread d = new HandlerThread("ChoreographerOwner:Handler");
        private Choreographer e;
        private int f;

        public static a a() {
            return b;
        }

        private a() {
            this.d.start();
            this.c = new Handler(this.d.getLooper(), this);
            this.c.sendEmptyMessage(0);
        }

        public void b() {
            this.c.sendEmptyMessage(1);
        }

        public void c() {
            this.c.sendEmptyMessage(2);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            this.f3187a = j;
            this.e.postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    d();
                    return true;
                case 1:
                    e();
                    return true;
                case 2:
                    f();
                    return true;
                default:
                    return false;
            }
        }

        private void d() {
            this.e = Choreographer.getInstance();
        }

        private void e() {
            this.f++;
            if (this.f == 1) {
                this.e.postFrameCallback(this);
            }
        }

        private void f() {
            this.f--;
            if (this.f == 0) {
                this.e.removeFrameCallback(this);
                this.f3187a = 0L;
            }
        }
    }
}
