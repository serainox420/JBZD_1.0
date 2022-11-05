package com.moat.analytics.mobile.aol.base.asserts;

import com.moat.analytics.mobile.aol.BuildConfig;
import com.moat.analytics.mobile.aol.base.annotation.Nullable;
/* loaded from: classes3.dex */
public final class Asserts {
    private Asserts() {
    }

    public static void checkNotNull(@Nullable Object obj, String str) {
        if (BuildConfig.DEBUG.booleanValue() && obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static void checkNotNull(@Nullable Object obj) {
        if (BuildConfig.DEBUG.booleanValue() && obj == null) {
            throw new NullPointerException("Non-null object expected.");
        }
    }
}
