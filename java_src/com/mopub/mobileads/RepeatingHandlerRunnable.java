package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.Preconditions;
/* loaded from: classes3.dex */
public abstract class RepeatingHandlerRunnable implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    protected final Handler f4457a;
    protected volatile long b;
    private volatile boolean c;

    public abstract void doWork();

    public RepeatingHandlerRunnable(Handler handler) {
        Preconditions.checkNotNull(handler);
        this.f4457a = handler;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.c) {
            doWork();
            this.f4457a.postDelayed(this, this.b);
        }
    }

    public void startRepeating(long j) {
        Preconditions.checkArgument(j > 0, "intervalMillis must be greater than 0. Saw: %d", Long.valueOf(j));
        this.b = j;
        if (!this.c) {
            this.c = true;
            this.f4457a.post(this);
        }
    }

    public void stop() {
        this.c = false;
    }
}
