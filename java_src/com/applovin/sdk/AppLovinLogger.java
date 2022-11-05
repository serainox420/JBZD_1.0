package com.applovin.sdk;
/* loaded from: classes.dex */
public interface AppLovinLogger {
    public static final String SDK_TAG = "AppLovinSdk";

    void d(String str, String str2);

    void e(String str, String str2);

    void e(String str, String str2, Throwable th);

    void i(String str, String str2);

    void userError(String str, String str2);

    void userError(String str, String str2, Throwable th);

    void w(String str, String str2);

    void w(String str, String str2, Throwable th);
}
