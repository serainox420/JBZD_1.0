package com.adcolony.sdk;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.Pair;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bd implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1107a = "YvolvActivityLifecycle";
    List<Pair<Class<?>, Activity>> b = new LinkedList();

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        cb.b(f1107a, "onActivityCreated", true);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        boolean z = true;
        cb.b(f1107a, "onActivityStarted " + activity, true);
        if (this.b.size() != 0) {
            z = false;
        }
        bz.aK().e(z);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        boolean z = true;
        cb.b(f1107a, "onActivityResumed " + activity, true);
        a(activity);
        if (!(activity instanceof b)) {
            if (this.b.size() != 1) {
                z = false;
            }
            bz.aK().a(activity, z);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        cb.b(f1107a, "onActivityPaused " + activity, true);
        bz.aK().c(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        cb.b(f1107a, "onActivityStopped " + activity, true);
        if (b(activity) == 0) {
            bz.aK().d(true);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        cb.b(f1107a, "onActivitySaveInstanceState " + activity, true);
        bz.aK().d(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        cb.b(f1107a, "onDestroy " + activity, true);
        if (b(activity) == 0) {
            cb.b(f1107a, "destroyed " + activity, true);
            bz.aK().a((Activity) null);
            bz.aK().ab();
        }
    }

    private void a(Activity activity) {
        boolean z;
        try {
            Iterator<Pair<Class<?>, Activity>> it = this.b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (((Activity) it.next().second).equals(activity)) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                this.b.add(new Pair<>(activity.getClass(), activity));
            }
        } catch (Exception e) {
            cb.a("LifecycleListener", "Caught Exception", e);
        }
    }

    private int b(Activity activity) {
        Class cls;
        int i;
        try {
            Iterator<Pair<Class<?>, Activity>> it = this.b.iterator();
            int i2 = 0;
            while (true) {
                if (!it.hasNext()) {
                    cls = null;
                    i = -1;
                    break;
                }
                Pair<Class<?>, Activity> next = it.next();
                if (((Activity) next.second).equals(activity)) {
                    cls = (Class) next.first;
                    i = i2;
                    break;
                }
                i2++;
            }
            if (i >= 0 && cls != null) {
                cb.b(f1107a, "Removing " + cls + " from stack", true);
                this.b.remove(i);
            }
            cb.b(f1107a, "stack size=" + this.b.size(), true);
            return this.b.size();
        } catch (Exception e) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.b.size();
    }
}
