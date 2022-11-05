package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.nativeAds.AppLovinNativeAdService;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
class be implements AppLovinNativeAdService {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkImpl f1607a;
    private final Object b = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public be(AppLovinSdkImpl appLovinSdkImpl) {
        this.f1607a = appLovinSdkImpl;
    }

    private List a(AppLovinNativeAd appLovinNativeAd) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add((NativeAdImpl) appLovinNativeAd);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinNativeAd appLovinNativeAd, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        if (appLovinNativeAd.isVideoPrecached()) {
            appLovinNativeAdPrecacheListener.onNativeAdVideoPreceached(appLovinNativeAd);
            return;
        }
        this.f1607a.a().a(new ci(this.f1607a, a(appLovinNativeAd), new bh(this, appLovinNativeAdPrecacheListener)), cs.MAIN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, int i) {
        if (appLovinNativeAdLoadListener != null) {
            try {
                appLovinNativeAdLoadListener.onNativeAdsFailedToLoad(i);
            } catch (Exception e) {
                this.f1607a.getLogger().userError("WidgetServiceImpl", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, List list) {
        if (appLovinNativeAdLoadListener != null) {
            try {
                appLovinNativeAdLoadListener.onNativeAdsLoaded(list);
            } catch (Exception e) {
                this.f1607a.getLogger().userError("WidgetServiceImpl", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener, AppLovinNativeAd appLovinNativeAd, int i, boolean z) {
        if (appLovinNativeAdPrecacheListener != null) {
            try {
                if (z) {
                    appLovinNativeAdPrecacheListener.onNativeAdVideoPrecachingFailed(appLovinNativeAd, i);
                } else {
                    appLovinNativeAdPrecacheListener.onNativeAdImagePrecachingFailed(appLovinNativeAd, i);
                }
            } catch (Exception e) {
                this.f1607a.getLogger().userError("WidgetServiceImpl", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener, AppLovinNativeAd appLovinNativeAd, boolean z) {
        if (appLovinNativeAdPrecacheListener != null) {
            try {
                if (z) {
                    appLovinNativeAdPrecacheListener.onNativeAdVideoPreceached(appLovinNativeAd);
                } else {
                    appLovinNativeAdPrecacheListener.onNativeAdImagesPrecached(appLovinNativeAd);
                }
            } catch (Exception e) {
                this.f1607a.getLogger().userError("WidgetServiceImpl", "Encountered exception whilst notifying user callback", e);
            }
        }
    }

    private void b(List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.f1607a.a().a(new cg(this.f1607a, list, new bk(this, appLovinNativeAdLoadListener)), cs.MAIN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        this.f1607a.a().a(new ci(this.f1607a, list, new bl(this, appLovinNativeAdLoadListener)), cs.MAIN);
    }

    public void a(List list, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        int intValue = ((Integer) this.f1607a.a(bx.aL)).intValue();
        if (intValue <= 0) {
            if (appLovinNativeAdLoadListener == null) {
                return;
            }
            appLovinNativeAdLoadListener.onNativeAdsLoaded(list);
            return;
        }
        List list2 = list;
        int size = list2.size();
        if (size == 0) {
            if (appLovinNativeAdLoadListener == null) {
                return;
            }
            appLovinNativeAdLoadListener.onNativeAdsFailedToLoad(AppLovinErrorCodes.UNABLE_TO_PREPARE_NATIVE_AD);
            return;
        }
        int min = Math.min(intValue, size);
        List subList = list2.subList(0, min);
        b(subList, new bi(this, subList, appLovinNativeAdLoadListener, list2.subList(min, size)));
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdService
    public void loadNativeAds(int i, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        AppLovinNativeAd appLovinNativeAd = null;
        synchronized (this.b) {
            if (i == 1) {
                if (this.f1607a.d().e(NativeAdImpl.SPEC_NATIVE)) {
                    appLovinNativeAd = (AppLovinNativeAd) this.f1607a.d().b(NativeAdImpl.SPEC_NATIVE);
                }
            }
        }
        if (appLovinNativeAd != null) {
            a(appLovinNativeAdLoadListener, Arrays.asList(appLovinNativeAd));
        } else {
            this.f1607a.a().a(new cp(this.f1607a, i, new bf(this, appLovinNativeAdLoadListener)), cs.MAIN);
        }
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdService
    public void precacheResources(AppLovinNativeAd appLovinNativeAd, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
        if (appLovinNativeAd.isImagePrecached()) {
            appLovinNativeAdPrecacheListener.onNativeAdImagesPrecached(appLovinNativeAd);
            a(appLovinNativeAd, appLovinNativeAdPrecacheListener);
            return;
        }
        this.f1607a.a().a(new cg(this.f1607a, a(appLovinNativeAd), new bg(this, appLovinNativeAdPrecacheListener)), cs.MAIN);
    }
}
