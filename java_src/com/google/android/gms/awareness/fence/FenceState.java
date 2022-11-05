package com.google.android.gms.awareness.fence;

import android.content.Intent;
import com.google.android.gms.internal.zzaet;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public abstract class FenceState extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final int FALSE = 1;
    public static final int TRUE = 2;
    public static final int UNKNOWN = 0;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface State {
    }

    public static FenceState extract(Intent intent) {
        return zzaet.extract(intent);
    }

    public static int zzaf(boolean z) {
        return z ? 2 : 1;
    }

    public abstract int getCurrentState();

    public abstract String getFenceKey();

    public abstract long getLastFenceUpdateTimeMillis();

    public abstract int getPreviousState();
}
