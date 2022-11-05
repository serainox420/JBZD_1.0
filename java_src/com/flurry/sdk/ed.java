package com.flurry.sdk;

import android.content.SharedPreferences;
/* loaded from: classes2.dex */
public final class ed {
    public static void a() {
        a(new el("", ""));
    }

    public static void a(el elVar) {
        SharedPreferences.Editor edit = jy.a().f2947a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
        edit.putString("com.flurry.sdk.request_token", elVar.f2617a);
        edit.putString("com.flurry.sdk.request_secret", elVar.b);
        edit.apply();
    }

    public static void b() {
        b(new el("", ""));
    }

    public static void b(el elVar) {
        SharedPreferences.Editor edit = jy.a().f2947a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
        edit.putString("com.flurry.sdk.access_token", elVar.f2617a);
        edit.putString("com.flurry.sdk.access_secret", elVar.b);
        edit.apply();
    }

    public static el c() {
        SharedPreferences sharedPreferences = jy.a().f2947a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
        return new el(sharedPreferences.getString("com.flurry.sdk.access_token", ""), sharedPreferences.getString("com.flurry.sdk.access_secret", ""));
    }
}
