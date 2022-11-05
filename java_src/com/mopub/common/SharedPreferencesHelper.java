package com.mopub.common;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes3.dex */
public final class SharedPreferencesHelper {
    public static final String PREFERENCE_NAME = "mopubSettings";

    private SharedPreferencesHelper() {
    }

    public static SharedPreferences getSharedPreferences(Context context) {
        return context.getSharedPreferences(PREFERENCE_NAME, 0);
    }
}
