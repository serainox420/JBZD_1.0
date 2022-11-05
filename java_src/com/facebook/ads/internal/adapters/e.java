package com.facebook.ads.internal.adapters;

import android.text.TextUtils;
import java.util.Locale;
/* loaded from: classes.dex */
public enum e {
    UNKNOWN,
    AN,
    ADMOB,
    INMOBI,
    YAHOO;

    public static e a(String str) {
        if (TextUtils.isEmpty(str)) {
            return UNKNOWN;
        }
        try {
            return (e) Enum.valueOf(e.class, str.toUpperCase(Locale.getDefault()));
        } catch (Exception e) {
            return UNKNOWN;
        }
    }
}
