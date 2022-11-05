package com.mopub.common;

import android.app.Activity;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3.dex */
public class MoPubLifecycleManager implements LifecycleListener {

    /* renamed from: a  reason: collision with root package name */
    private static MoPubLifecycleManager f4351a;
    private final Set<LifecycleListener> b = new HashSet();
    private final WeakReference<Activity> c;

    private MoPubLifecycleManager(Activity activity) {
        this.c = new WeakReference<>(activity);
    }

    public static synchronized MoPubLifecycleManager getInstance(Activity activity) {
        MoPubLifecycleManager moPubLifecycleManager;
        synchronized (MoPubLifecycleManager.class) {
            if (f4351a == null) {
                f4351a = new MoPubLifecycleManager(activity);
            }
            moPubLifecycleManager = f4351a;
        }
        return moPubLifecycleManager;
    }

    public void addLifecycleListener(LifecycleListener lifecycleListener) {
        Activity activity;
        if (lifecycleListener != null && this.b.add(lifecycleListener) && (activity = this.c.get()) != null) {
            lifecycleListener.onCreate(activity);
            lifecycleListener.onStart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onCreate(Activity activity) {
        for (LifecycleListener lifecycleListener : this.b) {
            lifecycleListener.onCreate(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStart(Activity activity) {
        for (LifecycleListener lifecycleListener : this.b) {
            lifecycleListener.onStart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onPause(Activity activity) {
        for (LifecycleListener lifecycleListener : this.b) {
            lifecycleListener.onPause(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onResume(Activity activity) {
        for (LifecycleListener lifecycleListener : this.b) {
            lifecycleListener.onResume(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onRestart(Activity activity) {
        for (LifecycleListener lifecycleListener : this.b) {
            lifecycleListener.onRestart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStop(Activity activity) {
        for (LifecycleListener lifecycleListener : this.b) {
            lifecycleListener.onRestart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onDestroy(Activity activity) {
        for (LifecycleListener lifecycleListener : this.b) {
            lifecycleListener.onRestart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onBackPressed(Activity activity) {
        for (LifecycleListener lifecycleListener : this.b) {
            lifecycleListener.onBackPressed(activity);
        }
    }
}
