package com.google.android.gms.internal;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
/* loaded from: classes2.dex */
public class zzabd {
    private final Object zzaCQ;

    public zzabd(Activity activity) {
        com.google.android.gms.common.internal.zzac.zzb(activity, "Activity must not be null");
        this.zzaCQ = activity;
    }

    public boolean zzwS() {
        return this.zzaCQ instanceof FragmentActivity;
    }

    public Activity zzwT() {
        return (Activity) this.zzaCQ;
    }

    public FragmentActivity zzwU() {
        return (FragmentActivity) this.zzaCQ;
    }
}
