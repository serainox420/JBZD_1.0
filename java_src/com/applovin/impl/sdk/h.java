package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdUpdateListener;
import com.applovin.sdk.AppLovinLogger;
import com.facebook.common.time.Clock;
import java.util.Collection;
import java.util.HashSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h implements AppLovinAdLoadListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinAdServiceImpl f1659a;
    private final i b;

    private h(AppLovinAdServiceImpl appLovinAdServiceImpl, i iVar) {
        this.f1659a = appLovinAdServiceImpl;
        this.b = iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ h(AppLovinAdServiceImpl appLovinAdServiceImpl, i iVar, e eVar) {
        this(appLovinAdServiceImpl, iVar);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        boolean a2;
        HashSet<AppLovinAdLoadListener> hashSet;
        Collection collection;
        Collection collection2;
        HashSet<AppLovinAdUpdateListener> hashSet2;
        Collection collection3;
        AppLovinLogger appLovinLogger;
        AppLovinLogger appLovinLogger2;
        long b;
        synchronized (this.b.b) {
            a2 = this.f1659a.a(this.b.f1660a);
            if (a2) {
                b = this.f1659a.b(this.b.f1660a);
                if (b > 0) {
                    this.b.d = (b * 1000) + System.currentTimeMillis();
                } else if (b == 0) {
                    this.b.d = Clock.MAX_TIME;
                }
                this.b.c = appLovinAd;
            } else {
                this.b.c = null;
                this.b.d = 0L;
            }
            collection = this.b.g;
            hashSet = new HashSet(collection);
            collection2 = this.b.g;
            collection2.clear();
            collection3 = this.b.f;
            hashSet2 = new HashSet(collection3);
            this.b.e = false;
        }
        this.f1659a.c(this.b.f1660a);
        for (AppLovinAdLoadListener appLovinAdLoadListener : hashSet) {
            try {
                appLovinAdLoadListener.adReceived(appLovinAd);
            } catch (Throwable th) {
                appLovinLogger2 = this.f1659a.b;
                appLovinLogger2.e("AppLovinAdService", "Unable to notify listener about a newly loaded ad", th);
            }
        }
        for (AppLovinAdUpdateListener appLovinAdUpdateListener : hashSet2) {
            try {
                appLovinAdUpdateListener.adUpdated(appLovinAd);
            } catch (Throwable th2) {
                appLovinLogger = this.f1659a.b;
                appLovinLogger.e("AppLovinAdService", "Unable to notify listener about an updated loaded ad", th2);
            }
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        HashSet<AppLovinAdLoadListener> hashSet;
        Collection collection;
        Collection collection2;
        AppLovinLogger appLovinLogger;
        synchronized (this.b.b) {
            collection = this.b.g;
            hashSet = new HashSet(collection);
            collection2 = this.b.g;
            collection2.clear();
            this.b.e = false;
        }
        for (AppLovinAdLoadListener appLovinAdLoadListener : hashSet) {
            try {
                appLovinAdLoadListener.failedToReceiveAd(i);
            } catch (Throwable th) {
                appLovinLogger = this.f1659a.b;
                appLovinLogger.e("AppLovinAdService", "Unable to notify listener about ad load failure", th);
            }
        }
    }
}
