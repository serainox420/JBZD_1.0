package com.intentsoftware.addapptr;
/* compiled from: Session.java */
/* loaded from: classes2.dex */
class z {
    private int durationInSeconds;
    private boolean running;
    private long startTime;

    public void clear() {
        this.running = false;
        this.startTime = 0L;
        this.durationInSeconds = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isRunning() {
        return this.running;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRunning(boolean z) {
        this.running = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getStartTime() {
        return this.startTime;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartTime(long j) {
        this.startTime = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDurationInSeconds() {
        return this.durationInSeconds;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDurationInSeconds(int i) {
        this.durationInSeconds = i;
    }
}
