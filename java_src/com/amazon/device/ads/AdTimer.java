package com.amazon.device.ads;

import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
class AdTimer {
    private Timer timer;

    public void cancelTimer() {
        if (this.timer != null) {
            this.timer.cancel();
        }
    }

    public void restartTimer() {
        cancelTimer();
        this.timer = new Timer();
    }

    public void scheduleTask(TimerTask timerTask, long j) {
        this.timer.schedule(timerTask, j);
    }
}
