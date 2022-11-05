package com.millennialmedia.internal;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class ActivityListenerManager {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4042a = ActivityListenerManager.class.getSimpleName();
    private static volatile Map<Integer, ActivityState> b = new HashMap();

    /* loaded from: classes3.dex */
    public enum LifecycleState {
        UNKNOWN,
        CREATED,
        STARTED,
        RESUMED,
        PAUSED,
        STOPPED,
        DESTROYED
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ActivityState {

        /* renamed from: a  reason: collision with root package name */
        private LifecycleState f4043a = LifecycleState.UNKNOWN;
        private List<WeakReference<ActivityListener>> b;

        ActivityState() {
        }

        List<ActivityListener> a() {
            ArrayList arrayList = new ArrayList();
            if (this.b != null) {
                synchronized (this.b) {
                    Iterator<WeakReference<ActivityListener>> it = this.b.iterator();
                    while (it.hasNext()) {
                        ActivityListener activityListener = it.next().get();
                        if (activityListener == null) {
                            it.remove();
                        } else {
                            arrayList.add(activityListener);
                        }
                    }
                }
            }
            return arrayList;
        }

        void a(ActivityListener activityListener) {
            if (this.b == null) {
                this.b = new ArrayList();
            }
            synchronized (this.b) {
                this.b.add(new WeakReference<>(activityListener));
            }
            if (MMLog.isDebugEnabled()) {
                MMLog.d(ActivityListenerManager.f4042a, "Registered activity listener: " + activityListener);
            }
        }

        void b(ActivityListener activityListener) {
            if (this.b != null) {
                synchronized (this.b) {
                    Iterator<WeakReference<ActivityListener>> it = this.b.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        } else if (activityListener == it.next().get()) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(ActivityListenerManager.f4042a, "Unregistered activity listener: " + activityListener);
                            }
                            it.remove();
                        }
                    }
                }
            }
        }

        LifecycleState b() {
            return this.f4043a;
        }
    }

    /* loaded from: classes3.dex */
    public static class ActivityListener {
        public void onCreated(Activity activity) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(ActivityListenerManager.f4042a, "Activity created");
            }
        }

        public void onDestroyed(Activity activity) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(ActivityListenerManager.f4042a, "Activity destroyed");
            }
        }

        public void onResumed(Activity activity) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(ActivityListenerManager.f4042a, "Activity resumed");
            }
        }

        public void onPaused(Activity activity) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(ActivityListenerManager.f4042a, "Activity paused");
            }
        }

        public void onStarted(Activity activity) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(ActivityListenerManager.f4042a, "Activity started");
            }
        }

        public void onStopped(Activity activity) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(ActivityListenerManager.f4042a, "Activity stopped");
            }
        }
    }

    public static void init() {
        EnvironmentUtils.getApplication().registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.millennialmedia.internal.ActivityListenerManager.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(ActivityListenerManager.f4042a, "Activity onCreate called for activity ID: " + activity.hashCode());
                }
                ActivityState b2 = ActivityListenerManager.b(activity.hashCode(), true);
                b2.f4043a = LifecycleState.CREATED;
                for (ActivityListener activityListener : b2.a()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(ActivityListenerManager.f4042a, "Calling onCreated of activity listener <" + activityListener + "> for activity ID <" + activity.hashCode() + ">");
                    }
                    activityListener.onCreated(activity);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(ActivityListenerManager.f4042a, "Activity onStart called for activity ID: " + activity.hashCode());
                }
                ActivityState b2 = ActivityListenerManager.b(activity.hashCode(), true);
                b2.f4043a = LifecycleState.STARTED;
                for (ActivityListener activityListener : b2.a()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(ActivityListenerManager.f4042a, "Calling onStarted of activity listener <" + activityListener + "> for activity ID <" + activity.hashCode() + ">");
                    }
                    activityListener.onStarted(activity);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(ActivityListenerManager.f4042a, "Activity onResume called for activity ID: " + activity.hashCode());
                }
                ActivityState b2 = ActivityListenerManager.b(activity.hashCode(), true);
                b2.f4043a = LifecycleState.RESUMED;
                for (ActivityListener activityListener : b2.a()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(ActivityListenerManager.f4042a, "Calling onResumed of activity listener <" + activityListener + "> for activity ID <" + activity.hashCode() + ">");
                    }
                    activityListener.onResumed(activity);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(ActivityListenerManager.f4042a, "Activity onPause called for activity ID: " + activity.hashCode());
                }
                ActivityState b2 = ActivityListenerManager.b(activity.hashCode(), true);
                b2.f4043a = LifecycleState.PAUSED;
                for (ActivityListener activityListener : b2.a()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(ActivityListenerManager.f4042a, "Calling onPaused of activity listener <" + activityListener + "> for activity ID <" + activity.hashCode() + ">");
                    }
                    activityListener.onPaused(activity);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(ActivityListenerManager.f4042a, "Activity onStop called for activity ID: " + activity.hashCode());
                }
                ActivityState b2 = ActivityListenerManager.b(activity.hashCode(), true);
                b2.f4043a = LifecycleState.STOPPED;
                for (ActivityListener activityListener : b2.a()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(ActivityListenerManager.f4042a, "Calling onStopped of activity listener <" + activityListener + "> for activity ID <" + activity.hashCode() + ">");
                    }
                    activityListener.onStopped(activity);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(ActivityListenerManager.f4042a, "Activity onDestroy called for activity ID: " + activity.hashCode());
                }
                ActivityState b2 = ActivityListenerManager.b(activity.hashCode(), false);
                if (b2 != null) {
                    b2.f4043a = LifecycleState.DESTROYED;
                    for (ActivityListener activityListener : b2.a()) {
                        if (MMLog.isDebugEnabled()) {
                            MMLog.d(ActivityListenerManager.f4042a, "Calling onDestroyed of activity listener <" + activityListener + "> for activity ID <" + activity.hashCode() + ">");
                        }
                        activityListener.onDestroyed(activity);
                    }
                    ActivityListenerManager.b.remove(Integer.valueOf(activity.hashCode()));
                } else if (MMLog.isDebugEnabled()) {
                    MMLog.d(ActivityListenerManager.f4042a, "Unable to find activity state for activity ID: " + activity.hashCode());
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(ActivityListenerManager.f4042a, "Activity onSaveInstanceState called for activity ID: " + activity.hashCode());
                }
            }
        });
    }

    public static void registerListener(int i, ActivityListener activityListener) {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4042a, "Attempting to register activity listener.\n\tactivity ID: " + i + "\n\tactivity listener: " + activityListener);
        }
        if (activityListener == null) {
            MMLog.e(f4042a, "Unable to register activity listener, provided instance is null");
        } else {
            b(i, true).a(activityListener);
        }
    }

    public static void unregisterListener(int i, ActivityListener activityListener) {
        ActivityState b2;
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4042a, "Attempting to unregister activity listener.\n\tactivity ID: " + i + "\n\tactivity listener: " + activityListener);
        }
        if (activityListener != null && (b2 = b(i, false)) != null) {
            b2.b(activityListener);
        }
    }

    public static void setInitialStateForUnknownActivity(int i, LifecycleState lifecycleState) {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4042a, "Attempting to set lifecycle state for unknown activity.\n\tactivity ID: " + i + "\n\tlifecycle state: " + lifecycleState);
        }
        ActivityState b2 = b(i, true);
        if (b2.f4043a == LifecycleState.UNKNOWN) {
            b2.f4043a = lifecycleState;
        } else {
            MMLog.e(f4042a, "Failed to set lifecycle state. Activity already exists with state <" + b2.f4043a + ">");
        }
    }

    public static LifecycleState getLifecycleState(Activity activity) {
        if (activity != null) {
            return getLifecycleState(activity.hashCode());
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4042a, "Lifecycle state <UNKNOWN> for null activity");
        }
        return LifecycleState.UNKNOWN;
    }

    public static LifecycleState getLifecycleState(int i) {
        LifecycleState lifecycleState = LifecycleState.UNKNOWN;
        ActivityState b2 = b(i, false);
        if (b2 != null) {
            lifecycleState = b2.b();
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4042a, "Lifecycle state <" + lifecycleState + "> for activity ID <" + i + ">");
        }
        return lifecycleState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ActivityState b(int i, boolean z) {
        ActivityState activityState = b.get(Integer.valueOf(i));
        if (activityState == null && z) {
            ActivityState activityState2 = new ActivityState();
            b.put(Integer.valueOf(i), activityState2);
            return activityState2;
        }
        return activityState;
    }
}
