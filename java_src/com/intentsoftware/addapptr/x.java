package com.intentsoftware.addapptr;

import android.os.Handler;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Reporter.java */
/* loaded from: classes2.dex */
public class x {
    private static final int MIN_FAIR_SESSION_TIME_SECONDS = 2;
    private static final long handlerDelay = 1000;
    private Runnable action;
    private Handler handler;
    private final List<s> placements;
    private final aa sessionController;
    private final ac statisticsReporter;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(final ab abVar, final ac acVar, final aa aaVar, final List<s> list) {
        this.handler = null;
        this.action = null;
        this.sessionController = aaVar;
        this.statisticsReporter = acVar;
        this.placements = list;
        this.handler = new Handler();
        this.action = new Runnable() { // from class: com.intentsoftware.addapptr.x.1
            @Override // java.lang.Runnable
            public void run() {
                if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                    com.intentsoftware.addapptr.c.c.i(x.this, "Sending reports to the server.");
                }
                aaVar.finishSession();
                abVar.report(aaVar.getSessionDurationInSeconds());
                for (s sVar : list) {
                    if (aaVar.getSessionDurationInSeconds() < 2) {
                        sVar.getStats().makeAdspacesCountEqualImpressions();
                    }
                    acVar.report(sVar);
                    sVar.getStats().clearCurrentStatistics();
                }
            }
        };
    }

    public void onPause(boolean z) {
        this.sessionController.onPause();
        if (this.statisticsReporter.shouldReportImmediately(this.placements)) {
            this.action.run();
        } else {
            this.handler.postDelayed(this.action, handlerDelay);
        }
    }

    public void onResume(boolean z) {
        this.sessionController.onResume();
        if (this.handler != null && this.action != null) {
            this.handler.removeCallbacks(this.action);
        }
    }
}
