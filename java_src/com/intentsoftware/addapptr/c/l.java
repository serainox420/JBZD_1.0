package com.intentsoftware.addapptr.c;

import android.os.Handler;
import android.os.Looper;
/* compiled from: Timer.java */
/* loaded from: classes2.dex */
public class l {
    private final Runnable callbackRunnable;
    private final Handler handler;
    private final boolean looped;
    private long refreshTime;
    private boolean running;
    private long timeAlreadyPassed;
    private long timeWhenStarted;
    private final Runnable updateRunnable;

    public l(long j, Runnable runnable, boolean z, boolean z2) {
        this(j, runnable, z, z2, null);
    }

    public l(long j, Runnable runnable, boolean z, boolean z2, Looper looper) {
        this.refreshTime = j;
        this.callbackRunnable = runnable;
        this.looped = z;
        if (looper != null) {
            this.handler = new Handler(looper);
        } else {
            this.handler = new Handler();
        }
        this.updateRunnable = createUpdateRunnable();
        if (z2) {
            this.timeAlreadyPassed = j;
        }
    }

    public void start() {
        if (!this.running) {
            this.handler.postDelayed(this.updateRunnable, Math.max(this.refreshTime - this.timeAlreadyPassed, 0L));
            this.timeWhenStarted = System.currentTimeMillis();
            this.timeAlreadyPassed = 0L;
            this.running = true;
        }
    }

    public void stop() {
        if (this.running) {
            this.handler.removeCallbacks(this.updateRunnable);
            this.timeAlreadyPassed = System.currentTimeMillis() - this.timeWhenStarted;
            this.running = false;
        }
    }

    public boolean isRunning() {
        return this.running;
    }

    public void reset() {
        reset(false);
    }

    public void reset(boolean z) {
        stop();
        if (z) {
            this.timeAlreadyPassed = this.refreshTime;
        } else {
            this.timeAlreadyPassed = 0L;
        }
        this.timeWhenStarted = 0L;
    }

    public void setRefreshTime(long j) {
        if (this.refreshTime == this.timeAlreadyPassed) {
            setRefreshTime(j, true);
        } else {
            this.refreshTime = j;
        }
    }

    public void setRefreshTime(long j, boolean z) {
        this.refreshTime = j;
        if (z) {
            this.timeAlreadyPassed = j;
        }
    }

    public long getTimeAlreadyPassed() {
        return this.timeAlreadyPassed;
    }

    public void setTimeAlreadyPassed(long j) {
        this.timeAlreadyPassed = j;
    }

    public long getRefreshTime() {
        return this.refreshTime;
    }

    public boolean willStartImmediately() {
        return this.timeAlreadyPassed == this.refreshTime;
    }

    private Runnable createUpdateRunnable() {
        return new Runnable() { // from class: com.intentsoftware.addapptr.c.l.1
            @Override // java.lang.Runnable
            public void run() {
                l.this.reset();
                if (l.this.looped) {
                    l.this.start();
                }
                l.this.callbackRunnable.run();
            }
        };
    }
}
