package com.amazon.device.ads;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
/* loaded from: classes.dex */
class ContextUtils {
    ContextUtils() {
    }

    public static Activity getContextAsActivity(Context context) {
        for (Context context2 = context; context2 != null; context2 = ((ContextWrapper) context2).getBaseContext()) {
            if (context2 instanceof Activity) {
                return (Activity) context2;
            }
            if (!(context2 instanceof ContextWrapper)) {
                return null;
            }
        }
        return null;
    }
}
