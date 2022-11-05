package com.crashlytics.android.beta;

import android.annotation.TargetApi;
import android.app.Activity;
import io.fabric.sdk.android.a;
import java.util.concurrent.ExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
@TargetApi(14)
/* loaded from: classes.dex */
public class ActivityLifecycleCheckForUpdatesController extends AbstractCheckForUpdatesController {
    private final a.b callbacks = new a.b() { // from class: com.crashlytics.android.beta.ActivityLifecycleCheckForUpdatesController.1
        @Override // io.fabric.sdk.android.a.b
        public void onActivityStarted(Activity activity) {
            if (ActivityLifecycleCheckForUpdatesController.this.signalExternallyReady()) {
                ActivityLifecycleCheckForUpdatesController.this.executorService.submit(new Runnable() { // from class: com.crashlytics.android.beta.ActivityLifecycleCheckForUpdatesController.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ActivityLifecycleCheckForUpdatesController.this.checkForUpdates();
                    }
                });
            }
        }
    };
    private final ExecutorService executorService;

    public ActivityLifecycleCheckForUpdatesController(a aVar, ExecutorService executorService) {
        this.executorService = executorService;
        aVar.a(this.callbacks);
    }

    @Override // com.crashlytics.android.beta.UpdatesController
    public boolean isActivityLifecycleTriggered() {
        return true;
    }
}
