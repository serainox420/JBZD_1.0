package com.mopub.mobileads;

import android.app.Activity;
import com.mopub.common.LifecycleListener;
import com.mopub.common.MoPubLifecycleManager;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class CustomEventRewardedVideo {

    @VisibleForTesting
    /* loaded from: classes3.dex */
    protected interface CustomEventRewardedVideoListener {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    public abstract CustomEventRewardedVideoListener a();

    @VisibleForTesting
    protected abstract LifecycleListener b();

    protected abstract boolean b(Activity activity, Map<String, Object> map, Map<String, String> map2) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String c();

    protected abstract void c(Activity activity, Map<String, Object> map, Map<String, String> map2) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void d();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean e();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void f();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Activity activity, Map<String, Object> map, Map<String, String> map2) {
        try {
            if (b(activity, map, map2)) {
                MoPubLifecycleManager.getInstance(activity).addLifecycleListener(b());
            }
            c(activity, map, map2);
        } catch (Exception e) {
            MoPubLog.e(e.getMessage());
        }
    }
}
