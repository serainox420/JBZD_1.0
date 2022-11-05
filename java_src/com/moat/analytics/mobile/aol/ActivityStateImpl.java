package com.moat.analytics.mobile.aol;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.Log;
import com.moat.analytics.mobile.aol.base.asserts.Asserts;
import com.moat.analytics.mobile.aol.base.exception.Exceptions;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ActivityStateImpl implements ActivityState {
    private static final String TAG = "MoatActivityState";
    private final WeakReference<Application> app;
    private boolean isInBackground;
    private boolean listening;
    private final WeakReference<Activity> myActivity;
    private final OnOffSwitch onOffSwitch;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActivityStateImpl(Activity activity, OnOffSwitch onOffSwitch) {
        Asserts.checkNotNull(activity);
        if (onOffSwitch.isDebugActive()) {
            Log.d(TAG, "Listening to Activity: " + (activity != null ? activity.getClass() + "@" + activity.hashCode() : "null"));
        }
        this.app = new WeakReference<>(activity.getApplication());
        this.myActivity = new WeakReference<>(activity);
        this.onOffSwitch = onOffSwitch;
        this.listening = false;
    }

    @Override // com.moat.analytics.mobile.aol.ActivityState
    public Activity getActivity() {
        return this.myActivity.get();
    }

    @Override // com.moat.analytics.mobile.aol.ActivityState
    public void listen() throws MoatException {
        if (!this.listening) {
            this.app.get().registerActivityLifecycleCallbacks(new ApplicationStateCallback());
        }
    }

    @Override // com.moat.analytics.mobile.aol.ActivityState
    public boolean isOutOfFocus() {
        return this.isInBackground;
    }

    /* loaded from: classes3.dex */
    private class ApplicationStateCallback implements Application.ActivityLifecycleCallbacks {
        private ApplicationStateCallback() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (ActivityStateImpl.this.onOffSwitch.isDebugActive()) {
                Log.d(ActivityStateImpl.TAG, "Activity started: " + activity.getClass() + "@" + activity.hashCode());
            }
            if (isMyActivity(activity)) {
                ActivityStateImpl.this.isInBackground = false;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (ActivityStateImpl.this.onOffSwitch.isDebugActive()) {
                Log.d(ActivityStateImpl.TAG, "Activity resumed: " + activity.getClass() + "@" + activity.hashCode());
            }
            if (isMyActivity(activity)) {
                ActivityStateImpl.this.isInBackground = false;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (ActivityStateImpl.this.onOffSwitch.isDebugActive()) {
                Log.d(ActivityStateImpl.TAG, "Activity paused: " + activity.getClass() + "@" + activity.hashCode());
            }
            if (isMyActivity(activity)) {
                ActivityStateImpl.this.isInBackground = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            if (ActivityStateImpl.this.onOffSwitch.isDebugActive()) {
                Log.d(ActivityStateImpl.TAG, "Activity stopped: " + activity.getClass() + "@" + activity.hashCode());
            }
            if (isMyActivity(activity)) {
                ActivityStateImpl.this.isInBackground = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            try {
                if (ActivityStateImpl.this.onOffSwitch.isDebugActive()) {
                    Log.d(ActivityStateImpl.TAG, "Activity destroyed: " + activity.getClass() + "@" + activity.hashCode());
                }
                if (isMyActivity(activity)) {
                    ActivityStateImpl.this.isInBackground = false;
                    ((Application) ActivityStateImpl.this.app.get()).unregisterActivityLifecycleCallbacks(this);
                }
            } catch (Exception e) {
                Exceptions.handleException(e);
            }
        }

        private boolean isMyActivity(Activity activity) {
            Activity activity2 = (Activity) ActivityStateImpl.this.myActivity.get();
            return activity2 != null && activity2.equals(activity);
        }
    }
}
