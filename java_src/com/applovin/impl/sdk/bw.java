package com.applovin.impl.sdk;

import android.content.Context;
import com.applovin.sdk.AppLovinLogger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class bw implements Runnable {
    final String e;
    protected final AppLovinSdkImpl f;
    final AppLovinLogger g;
    final Context h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bw(String str, AppLovinSdkImpl appLovinSdkImpl) {
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f = appLovinSdkImpl;
        this.e = str == null ? getClass().getSimpleName() : str;
        this.g = appLovinSdkImpl.getLogger();
        this.h = appLovinSdkImpl.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
    }
}
