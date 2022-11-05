package com.applovin.impl.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdkUtils;
import com.facebook.internal.AnalyticsEvents;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkImpl f1639a;
    private final AppLovinLogger b;
    private final Context c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cq(AppLovinSdkImpl appLovinSdkImpl) {
        this.f1639a = appLovinSdkImpl;
        this.c = appLovinSdkImpl.getApplicationContext();
        this.b = appLovinSdkImpl.getLogger();
    }

    private void c() {
        String str = (String) this.f1639a.a(bx.D);
        if (str.length() > 0) {
            String[] split = str.split(",");
            for (String str2 : split) {
                AppLovinAdSize fromString = AppLovinAdSize.fromString(str2);
                if (fromString != null) {
                    this.f1639a.c().d(new c(fromString, AppLovinAdType.REGULAR));
                }
            }
        }
        if (((Boolean) this.f1639a.a(bx.E)).booleanValue()) {
            this.f1639a.c().d(new c(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED));
        }
        if (((Boolean) this.f1639a.a(bx.az)).booleanValue()) {
            this.f1639a.d().d(NativeAdImpl.SPEC_NATIVE);
        }
    }

    boolean a() {
        if (!r.a("android.permission.INTERNET", this.c)) {
            this.b.userError("TaskInitializeSdk", "Unable to enable AppLovin SDK: no android.permission.INTERNET");
            return false;
        }
        return true;
    }

    void b() {
        this.f1639a.a().a(new ce(this.f1639a), cs.MAIN, 500L);
    }

    @Override // java.lang.Runnable
    public void run() {
        long currentTimeMillis = System.currentTimeMillis();
        this.b.d("TaskInitializeSdk", "Initializing AppLovin SDK 6.2.4...");
        try {
            if (a()) {
                cc b = this.f1639a.b();
                b.c();
                b.c("ad_imp_session");
                a.b(this.f1639a);
                this.f1639a.getFileManager().e(this.c);
                this.f1639a.getFileManager().d(this.c);
                c();
                b();
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.c);
                if (!AppLovinSdkUtils.isValidString(defaultSharedPreferences.getString("com.applovin.sdk.impl.isFirstRun", null))) {
                    defaultSharedPreferences.edit().putString("com.applovin.sdk.impl.isFirstRun", Boolean.toString(true)).commit();
                }
                this.f1639a.getPersistentPostbackManager().a();
                this.f1639a.getEventService().trackEvent("landing");
                this.f1639a.a(true);
            } else {
                this.f1639a.a(false);
            }
        } catch (Throwable th) {
            try {
                this.b.e("TaskInitializeSdk", "Unable to intialize SDK, disabling the SDK", th);
                this.f1639a.a(false);
                this.b.d("TaskInitializeSdk", "AppLovin SDK 6.2.4 initialization " + (this.f1639a.isEnabled() ? AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED : "failed") + " in " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
            } finally {
                this.b.d("TaskInitializeSdk", "AppLovin SDK 6.2.4 initialization " + (this.f1639a.isEnabled() ? AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED : "failed") + " in " + (System.currentTimeMillis() - currentTimeMillis) + "ms");
            }
        }
    }
}
