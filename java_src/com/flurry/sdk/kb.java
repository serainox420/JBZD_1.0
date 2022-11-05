package com.flurry.sdk;

import android.app.Activity;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public final class kb extends kg {

    /* renamed from: a  reason: collision with root package name */
    public WeakReference<Activity> f2955a;
    public a b;

    /* loaded from: classes2.dex */
    public enum a {
        kCreated,
        kDestroyed,
        kPaused,
        kResumed,
        kStarted,
        kStopped,
        kSaveState
    }

    public kb() {
        super("com.flurry.android.sdk.ActivityLifecycleEvent");
        this.f2955a = new WeakReference<>(null);
    }
}
