package com.moat.analytics.mobile.aol.base.exception;

import android.util.Log;
import com.moat.analytics.mobile.aol.BuildConfig;
/* loaded from: classes3.dex */
public final class Exceptions {
    private Exceptions() {
    }

    public static void handleException(Exception exc) {
        if (BuildConfig.DEBUG.booleanValue()) {
            Log.e("[Moat Exception]", Log.getStackTraceString(exc));
            if (exc instanceof RuntimeException) {
                throw ((RuntimeException) exc);
            }
            if (exc.getCause() != null && (exc.getCause() instanceof RuntimeException)) {
                throw ((RuntimeException) exc.getCause());
            }
            throw new RuntimeException(exc);
        }
    }
}
