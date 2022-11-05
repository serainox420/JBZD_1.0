package com.millennialmedia.internal;

import android.app.Activity;
import android.widget.RelativeLayout;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.ActivityListenerManager;
import com.millennialmedia.internal.utils.ViewUtils;
/* loaded from: classes3.dex */
public class AdContainer extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4045a = AdContainer.class.getSimpleName();
    private ActivityListenerManager.ActivityListener b;

    public AdContainer(Activity activity, ActivityListenerManager.ActivityListener activityListener) {
        super(activity);
        this.b = activityListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.b == null) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4045a, "AdContainer not listening for activity lifecycle events, skipping activity lifecycle dispatcher registration");
                return;
            }
            return;
        }
        int activityHashForView = ViewUtils.getActivityHashForView(this);
        if (activityHashForView == -1) {
            MMLog.e(f4045a, "Unable to register activity lifecycle listener for AdContainer, no valid activity hash");
        } else {
            ActivityListenerManager.registerListener(activityHashForView, this.b);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.b != null) {
            int activityHashForView = ViewUtils.getActivityHashForView(this);
            if (activityHashForView == -1) {
                MMLog.e(f4045a, "Unable to unregister activity lifecycle listener for AdContainer, no valid activity hash");
            } else {
                ActivityListenerManager.unregisterListener(activityHashForView, this.b);
            }
        }
    }
}
