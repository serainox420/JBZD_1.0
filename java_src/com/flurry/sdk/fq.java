package com.flurry.sdk;

import android.annotation.TargetApi;
import android.os.Build;
import android.view.Window;
/* loaded from: classes2.dex */
public final class fq {
    @TargetApi(11)
    public static void a(Window window) {
        if (window != null && Build.VERSION.SDK_INT >= 11) {
            window.setFlags(16777216, 16777216);
        }
    }
}
