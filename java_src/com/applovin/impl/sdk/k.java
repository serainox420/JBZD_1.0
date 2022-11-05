package com.applovin.impl.sdk;

import android.util.Log;
import com.applovin.sdk.AppLovinLogger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k implements AppLovinLogger {

    /* renamed from: a  reason: collision with root package name */
    private ca f1662a;
    private l b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ca caVar) {
        this.f1662a = caVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(l lVar) {
        this.b = lVar;
    }

    boolean a() {
        if (this.f1662a != null) {
            return ((Boolean) this.f1662a.a(bx.i)).booleanValue();
        }
        return false;
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void d(String str, String str2) {
        if (a()) {
            Log.d(AppLovinLogger.SDK_TAG, "[" + str + "] " + str2);
        }
        if (this.b != null) {
            this.b.a("DEBUG  [" + str + "] " + str2);
        }
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void e(String str, String str2) {
        e(str, str2, null);
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void e(String str, String str2, Throwable th) {
        if (a()) {
            Log.e(AppLovinLogger.SDK_TAG, "[" + str + "] " + str2, th);
        }
        if (this.b != null) {
            this.b.a("ERROR  [" + str + "] " + str2 + (th != null ? ": " + th.getMessage() : ""));
        }
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void i(String str, String str2) {
        if (a()) {
            Log.i(AppLovinLogger.SDK_TAG, "[" + str + "] " + str2);
        }
        if (this.b != null) {
            this.b.a("INFO  [" + str + "] " + str2);
        }
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void userError(String str, String str2) {
        userError(str, str2, null);
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void userError(String str, String str2, Throwable th) {
        Log.e(AppLovinLogger.SDK_TAG, "[" + str + "] " + str2, th);
        if (this.b != null) {
            this.b.a("USER  [" + str + "] " + str2 + (th != null ? ": " + th.getMessage() : ""));
        }
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void w(String str, String str2) {
        w(str, str2, null);
    }

    @Override // com.applovin.sdk.AppLovinLogger
    public void w(String str, String str2, Throwable th) {
        if (a()) {
            Log.w(AppLovinLogger.SDK_TAG, "[" + str + "] " + str2, th);
        }
        if (this.b != null) {
            this.b.a("WARN  [" + str + "] " + str2);
        }
    }
}
