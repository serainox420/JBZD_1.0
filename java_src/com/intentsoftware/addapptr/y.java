package com.intentsoftware.addapptr;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReporterAPI14.java */
/* loaded from: classes2.dex */
public class y extends x {
    /* JADX INFO: Access modifiers changed from: package-private */
    public y(Application application, ab abVar, ac acVar, aa aaVar, List<s> list) {
        super(abVar, acVar, aaVar, list);
        registerActivityCallback(application);
    }

    @Override // com.intentsoftware.addapptr.x
    public void onPause(boolean z) {
        if (z) {
            super.onPause(z);
        }
    }

    @Override // com.intentsoftware.addapptr.x
    public void onResume(boolean z) {
        if (z) {
            super.onResume(z);
        }
    }

    @TargetApi(14)
    private void registerActivityCallback(Application application) {
        application.registerActivityLifecycleCallbacks(createActivityLifecycleCallback());
    }

    @TargetApi(14)
    private Application.ActivityLifecycleCallbacks createActivityLifecycleCallback() {
        return new Application.ActivityLifecycleCallbacks() { // from class: com.intentsoftware.addapptr.y.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                y.this.onResume(true);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                y.this.onPause(true);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
            }
        };
    }
}
