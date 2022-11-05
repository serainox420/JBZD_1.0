package com.intentsoftware.addapptr;
/* compiled from: SessionController.java */
/* loaded from: classes2.dex */
class aa {
    private final z session = new z();
    private long sessionPauseTime;

    public void onResume() {
        startSession();
    }

    public void onPause() {
        this.sessionPauseTime = System.currentTimeMillis();
    }

    private void startSession() {
        if (!this.session.isRunning()) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "New session started");
            }
            this.session.clear();
            this.session.setRunning(true);
            this.session.setStartTime(System.currentTimeMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void finishSession() {
        if (this.session.isRunning()) {
            this.session.setRunning(false);
            this.session.setDurationInSeconds((int) ((this.sessionPauseTime - this.session.getStartTime()) / 1000));
            if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Session finished. Duration: " + this.session.getDurationInSeconds());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSessionDurationInSeconds() {
        return this.session.getDurationInSeconds();
    }
}
