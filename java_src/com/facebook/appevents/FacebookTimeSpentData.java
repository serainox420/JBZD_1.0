package com.facebook.appevents;

import android.os.Bundle;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.Logger;
import java.io.Serializable;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FacebookTimeSpentData implements Serializable {
    private static final long FIRST_TIME_LOAD_RESUME_TIME = -1;
    private static final long INTERRUPTION_THRESHOLD_MILLISECONDS = 1000;
    private static final long NUM_MILLISECONDS_IDLE_TO_BE_NEW_SESSION = 60000;
    private static final long serialVersionUID = 1;
    private String firstOpenSourceApplication;
    private int interruptionCount;
    private boolean isAppActive;
    private boolean isWarmLaunch;
    private long lastActivateEventLoggedTime;
    private long lastResumeTime;
    private long lastSuspendTime;
    private long millisecondsSpentInSession;
    private static final String TAG = FacebookTimeSpentData.class.getCanonicalName();
    private static final long APP_ACTIVATE_SUPPRESSION_PERIOD_IN_MILLISECONDS = 300000;
    private static final long[] INACTIVE_SECONDS_QUANTA = {APP_ACTIVATE_SUPPRESSION_PERIOD_IN_MILLISECONDS, 900000, 1800000, 3600000, 21600000, 43200000, 86400000, 172800000, 259200000, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};

    /* loaded from: classes.dex */
    private static class SerializationProxyV1 implements Serializable {
        private static final long serialVersionUID = 6;
        private final int interruptionCount;
        private final long lastResumeTime;
        private final long lastSuspendTime;
        private final long millisecondsSpentInSession;

        SerializationProxyV1(long j, long j2, long j3, int i) {
            this.lastResumeTime = j;
            this.lastSuspendTime = j2;
            this.millisecondsSpentInSession = j3;
            this.interruptionCount = i;
        }

        private Object readResolve() {
            return new FacebookTimeSpentData(this.lastResumeTime, this.lastSuspendTime, this.millisecondsSpentInSession, this.interruptionCount);
        }
    }

    private FacebookTimeSpentData(long j, long j2, long j3, int i) {
        resetSession();
        this.lastResumeTime = j;
        this.lastSuspendTime = j2;
        this.millisecondsSpentInSession = j3;
        this.interruptionCount = i;
    }

    /* loaded from: classes.dex */
    private static class SerializationProxyV2 implements Serializable {
        private static final long serialVersionUID = 6;
        private final String firstOpenSourceApplication;
        private final int interruptionCount;
        private final long lastResumeTime;
        private final long lastSuspendTime;
        private final long millisecondsSpentInSession;

        SerializationProxyV2(long j, long j2, long j3, int i, String str) {
            this.lastResumeTime = j;
            this.lastSuspendTime = j2;
            this.millisecondsSpentInSession = j3;
            this.interruptionCount = i;
            this.firstOpenSourceApplication = str;
        }

        private Object readResolve() {
            return new FacebookTimeSpentData(this.lastResumeTime, this.lastSuspendTime, this.millisecondsSpentInSession, this.interruptionCount, this.firstOpenSourceApplication);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FacebookTimeSpentData() {
        resetSession();
    }

    private FacebookTimeSpentData(long j, long j2, long j3, int i, String str) {
        resetSession();
        this.lastResumeTime = j;
        this.lastSuspendTime = j2;
        this.millisecondsSpentInSession = j3;
        this.interruptionCount = i;
        this.firstOpenSourceApplication = str;
    }

    private Object writeReplace() {
        return new SerializationProxyV2(this.lastResumeTime, this.lastSuspendTime, this.millisecondsSpentInSession, this.interruptionCount, this.firstOpenSourceApplication);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onSuspend(AppEventsLogger appEventsLogger, long j) {
        long j2 = 0;
        if (!this.isAppActive) {
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Suspend for inactive app");
            return;
        }
        long j3 = j - this.lastResumeTime;
        if (j3 < 0) {
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Clock skew detected");
        } else {
            j2 = j3;
        }
        this.millisecondsSpentInSession = j2 + this.millisecondsSpentInSession;
        this.lastSuspendTime = j;
        this.isAppActive = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onResume(AppEventsLogger appEventsLogger, long j, String str) {
        long j2 = 0;
        if (isColdLaunch() || j - this.lastActivateEventLoggedTime > APP_ACTIVATE_SUPPRESSION_PERIOD_IN_MILLISECONDS) {
            Bundle bundle = new Bundle();
            bundle.putString(AppEventsConstants.EVENT_PARAM_SOURCE_APPLICATION, str);
            appEventsLogger.logEvent(AppEventsConstants.EVENT_NAME_ACTIVATED_APP, bundle);
            this.lastActivateEventLoggedTime = j;
            if (AppEventsLogger.getFlushBehavior() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
                appEventsLogger.flush();
            }
        }
        if (this.isAppActive) {
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Resume for active app");
            return;
        }
        long j3 = wasSuspendedEver() ? j - this.lastSuspendTime : 0L;
        if (j3 < 0) {
            Logger.log(LoggingBehavior.APP_EVENTS, TAG, "Clock skew detected");
        } else {
            j2 = j3;
        }
        if (j2 > NUM_MILLISECONDS_IDLE_TO_BE_NEW_SESSION) {
            logAppDeactivatedEvent(appEventsLogger, j2);
        } else if (j2 > INTERRUPTION_THRESHOLD_MILLISECONDS) {
            this.interruptionCount++;
        }
        if (this.interruptionCount == 0) {
            this.firstOpenSourceApplication = str;
        }
        this.lastResumeTime = j;
        this.isAppActive = true;
    }

    private void logAppDeactivatedEvent(AppEventsLogger appEventsLogger, long j) {
        Bundle bundle = new Bundle();
        bundle.putInt(AppEventsConstants.EVENT_NAME_SESSION_INTERRUPTIONS, this.interruptionCount);
        bundle.putString(AppEventsConstants.EVENT_NAME_TIME_BETWEEN_SESSIONS, String.format(Locale.ROOT, "session_quanta_%d", Integer.valueOf(getQuantaIndex(j))));
        bundle.putString(AppEventsConstants.EVENT_PARAM_SOURCE_APPLICATION, this.firstOpenSourceApplication);
        appEventsLogger.logEvent(AppEventsConstants.EVENT_NAME_DEACTIVATED_APP, this.millisecondsSpentInSession / INTERRUPTION_THRESHOLD_MILLISECONDS, bundle);
        resetSession();
    }

    private static int getQuantaIndex(long j) {
        int i = 0;
        while (i < INACTIVE_SECONDS_QUANTA.length && INACTIVE_SECONDS_QUANTA[i] < j) {
            i++;
        }
        return i;
    }

    private void resetSession() {
        this.isAppActive = false;
        this.lastResumeTime = -1L;
        this.lastSuspendTime = -1L;
        this.interruptionCount = 0;
        this.millisecondsSpentInSession = 0L;
    }

    private boolean wasSuspendedEver() {
        return this.lastSuspendTime != -1;
    }

    private boolean isColdLaunch() {
        boolean z = !this.isWarmLaunch;
        this.isWarmLaunch = true;
        return z;
    }
}
