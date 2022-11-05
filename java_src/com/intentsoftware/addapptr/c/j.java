package com.intentsoftware.addapptr.c;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.SharedPreferences;
/* compiled from: SharedPreferencesHelper.java */
/* loaded from: classes2.dex */
public class j {
    private static final String SHARED_PREFERENCES_NAME = "com.intentsoftware.addapptr";
    @SuppressLint({"StaticFieldLeak"})
    private static Application application;

    public static void init(Application application2) {
        application = application2;
    }

    public static String read(String str, String str2) {
        return application.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).getString(str, str2);
    }

    public static void write(String str, String str2) {
        SharedPreferences.Editor edit = application.getSharedPreferences(SHARED_PREFERENCES_NAME, 0).edit();
        edit.putString(str, str2);
        edit.apply();
    }

    public static void remove(String str) {
        SharedPreferences sharedPreferences = application.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        if (sharedPreferences.contains(str)) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.remove(str);
            edit.apply();
        }
    }
}
