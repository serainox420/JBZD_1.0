package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class ch extends bw {

    /* renamed from: a  reason: collision with root package name */
    protected AppLovinNativeAdLoadListener f1632a;
    protected AppLovinNativeAdPrecacheListener b;
    private List c;
    private int d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ch(String str, AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        super(str, appLovinSdkImpl);
        this.d = 0;
        this.f1632a = appLovinNativeAdLoadListener;
        this.c = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ch(String str, AppLovinSdkImpl appLovinSdkImpl, List list, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        super(str, appLovinSdkImpl);
        this.d = 0;
        if (list == null) {
            throw new IllegalArgumentException("Slots cannot be null");
        }
        this.c = list;
        this.b = appLovinNativeAdPrecacheListener;
    }

    private void a(int i) {
        if (this.f1632a != null) {
            this.f1632a.onNativeAdsFailedToLoad(i);
        }
    }

    private void a(List list) {
        if (this.f1632a != null) {
            this.f1632a.onNativeAdsLoaded(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(String str, z zVar) {
        if (!di.isValidString(str)) {
            this.f.getLogger().d(a(), "Asked to cache file with null/empty URL, nothing to do.");
            return null;
        } else if (!di.a(this.f, str)) {
            this.f.getLogger().d(a(), "Domain is not whitelisted, skipping precache for URL " + str);
            return null;
        } else {
            try {
                String a2 = zVar.a(this.h, str, true);
                if (a2 != null) {
                    return a2;
                }
                this.g.w(a(), "Unable to cache icon resource " + str);
                return null;
            } catch (Exception e) {
                this.g.w(a(), "Unable to cache icon resource " + str, e);
                return null;
            }
        }
    }

    protected abstract void a(NativeAdImpl nativeAdImpl);

    protected abstract boolean a(NativeAdImpl nativeAdImpl, z zVar);

    @Override // java.lang.Runnable
    public void run() {
        for (NativeAdImpl nativeAdImpl : this.c) {
            z fileManager = this.f.getFileManager();
            this.f.getLogger().d(a(), "Beginning resource caching phase...");
            if (a(nativeAdImpl, fileManager)) {
                this.d++;
                a(nativeAdImpl);
            } else {
                this.f.getLogger().e(a(), "Unable to cache resources");
            }
        }
        try {
            if (this.d == this.c.size()) {
                a(this.c);
            } else if (((Boolean) this.f.a(bx.aA)).booleanValue()) {
                this.f.getLogger().e(a(), "Mismatch between successful populations and requested size");
                a(-6);
            } else {
                a(this.c);
            }
        } catch (Throwable th) {
            this.f.getLogger().userError(a(), "Encountered exception while notifying publisher code", th);
        }
    }
}
