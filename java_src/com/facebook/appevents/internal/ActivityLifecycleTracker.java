package com.facebook.appevents.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.internal.SourceApplicationInfo;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class ActivityLifecycleTracker {
    private static final String INCORRECT_IMPL_WARNING = "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application's onCreate method";
    private static final long INTERRUPTION_THRESHOLD_MILLISECONDS = 1000;
    private static String appId;
    private static long currentActivityAppearTime;
    private static volatile ScheduledFuture currentFuture;
    private static volatile SessionInfo currentSession;
    private static final String TAG = ActivityLifecycleTracker.class.getCanonicalName();
    private static final ScheduledExecutorService singleThreadExecutor = Executors.newSingleThreadScheduledExecutor();
    private static AtomicInteger foregroundActivityCount = new AtomicInteger(0);
    private static AtomicBoolean tracking = new AtomicBoolean(false);

    public static void startTracking(Application application, String str) {
        if (tracking.compareAndSet(false, true)) {
            appId = str;
            application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.facebook.appevents.internal.ActivityLifecycleTracker.1
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                    AppEventUtility.assertIsMainThread();
                    ActivityLifecycleTracker.onActivityCreated(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                    AppEventUtility.assertIsMainThread();
                    ActivityLifecycleTracker.onActivityResumed(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                    AppEventUtility.assertIsMainThread();
                    ActivityLifecycleTracker.onActivityPaused(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                    AppEventsLogger.onContextStop();
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                }
            });
        }
    }

    public static boolean isTracking() {
        return tracking.get();
    }

    public static UUID getCurrentSessionGuid() {
        if (currentSession != null) {
            return currentSession.getSessionId();
        }
        return null;
    }

    public static void onActivityCreated(Activity activity) {
        final long currentTimeMillis = System.currentTimeMillis();
        final Context applicationContext = activity.getApplicationContext();
        final String activityName = Utility.getActivityName(activity);
        final SourceApplicationInfo create = SourceApplicationInfo.Factory.create(activity);
        singleThreadExecutor.execute(new Runnable() { // from class: com.facebook.appevents.internal.ActivityLifecycleTracker.2
            @Override // java.lang.Runnable
            public void run() {
                if (ActivityLifecycleTracker.currentSession == null) {
                    SessionInfo storedSessionInfo = SessionInfo.getStoredSessionInfo();
                    if (storedSessionInfo != null) {
                        SessionLogger.logDeactivateApp(applicationContext, activityName, storedSessionInfo, ActivityLifecycleTracker.appId);
                    }
                    SessionInfo unused = ActivityLifecycleTracker.currentSession = new SessionInfo(Long.valueOf(currentTimeMillis), null);
                    ActivityLifecycleTracker.currentSession.setSourceApplicationInfo(create);
                    SessionLogger.logActivateApp(applicationContext, activityName, create, ActivityLifecycleTracker.appId);
                }
            }
        });
    }

    public static void onActivityResumed(Activity activity) {
        foregroundActivityCount.incrementAndGet();
        cancelCurrentTask();
        final long currentTimeMillis = System.currentTimeMillis();
        currentActivityAppearTime = currentTimeMillis;
        final Context applicationContext = activity.getApplicationContext();
        final String activityName = Utility.getActivityName(activity);
        singleThreadExecutor.execute(new Runnable() { // from class: com.facebook.appevents.internal.ActivityLifecycleTracker.3
            @Override // java.lang.Runnable
            public void run() {
                if (ActivityLifecycleTracker.currentSession == null) {
                    SessionInfo unused = ActivityLifecycleTracker.currentSession = new SessionInfo(Long.valueOf(currentTimeMillis), null);
                    SessionLogger.logActivateApp(applicationContext, activityName, null, ActivityLifecycleTracker.appId);
                } else if (ActivityLifecycleTracker.currentSession.getSessionLastEventTime() != null) {
                    long longValue = currentTimeMillis - ActivityLifecycleTracker.currentSession.getSessionLastEventTime().longValue();
                    if (longValue > ActivityLifecycleTracker.getSessionTimeoutInSeconds() * 1000) {
                        SessionLogger.logDeactivateApp(applicationContext, activityName, ActivityLifecycleTracker.currentSession, ActivityLifecycleTracker.appId);
                        SessionLogger.logActivateApp(applicationContext, activityName, null, ActivityLifecycleTracker.appId);
                        SessionInfo unused2 = ActivityLifecycleTracker.currentSession = new SessionInfo(Long.valueOf(currentTimeMillis), null);
                    } else if (longValue > ActivityLifecycleTracker.INTERRUPTION_THRESHOLD_MILLISECONDS) {
                        ActivityLifecycleTracker.currentSession.incrementInterruptionCount();
                    }
                }
                ActivityLifecycleTracker.currentSession.setSessionLastEventTime(Long.valueOf(currentTimeMillis));
                ActivityLifecycleTracker.currentSession.writeSessionToDisk();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void onActivityPaused(Activity activity) {
        if (foregroundActivityCount.decrementAndGet() < 0) {
            foregroundActivityCount.set(0);
            Log.w(TAG, INCORRECT_IMPL_WARNING);
        }
        cancelCurrentTask();
        final long currentTimeMillis = System.currentTimeMillis();
        final Context applicationContext = activity.getApplicationContext();
        final String activityName = Utility.getActivityName(activity);
        singleThreadExecutor.execute(new Runnable() { // from class: com.facebook.appevents.internal.ActivityLifecycleTracker.4
            @Override // java.lang.Runnable
            public void run() {
                long j = 0;
                if (ActivityLifecycleTracker.currentSession == null) {
                    SessionInfo unused = ActivityLifecycleTracker.currentSession = new SessionInfo(Long.valueOf(currentTimeMillis), null);
                }
                ActivityLifecycleTracker.currentSession.setSessionLastEventTime(Long.valueOf(currentTimeMillis));
                if (ActivityLifecycleTracker.foregroundActivityCount.get() <= 0) {
                    ScheduledFuture unused2 = ActivityLifecycleTracker.currentFuture = ActivityLifecycleTracker.singleThreadExecutor.schedule(new Runnable() { // from class: com.facebook.appevents.internal.ActivityLifecycleTracker.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ActivityLifecycleTracker.foregroundActivityCount.get() <= 0) {
                                SessionLogger.logDeactivateApp(applicationContext, activityName, ActivityLifecycleTracker.currentSession, ActivityLifecycleTracker.appId);
                                SessionInfo.clearSavedSessionFromDisk();
                                SessionInfo unused3 = ActivityLifecycleTracker.currentSession = null;
                            }
                            ScheduledFuture unused4 = ActivityLifecycleTracker.currentFuture = null;
                        }
                    }, ActivityLifecycleTracker.getSessionTimeoutInSeconds(), TimeUnit.SECONDS);
                }
                long j2 = ActivityLifecycleTracker.currentActivityAppearTime;
                if (j2 > 0) {
                    j = (currentTimeMillis - j2) / ActivityLifecycleTracker.INTERRUPTION_THRESHOLD_MILLISECONDS;
                }
                AutomaticAnalyticsLogger.logActivityTimeSpentEvent(activityName, j);
                ActivityLifecycleTracker.currentSession.writeSessionToDisk();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getSessionTimeoutInSeconds() {
        FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(FacebookSdk.getApplicationId());
        return appSettingsWithoutQuery == null ? Constants.getDefaultAppEventsSessionTimeoutInSeconds() : appSettingsWithoutQuery.getSessionTimeoutInSeconds();
    }

    private static void cancelCurrentTask() {
        if (currentFuture != null) {
            currentFuture.cancel(false);
        }
        currentFuture = null;
    }
}
