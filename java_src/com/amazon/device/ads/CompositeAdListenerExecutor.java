package com.amazon.device.ads;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
class CompositeAdListenerExecutor extends AdListenerExecutor {
    private final List<AdListenerExecutor> adListenerExecutors;

    public CompositeAdListenerExecutor(MobileAdsLoggerFactory mobileAdsLoggerFactory) {
        super(null, mobileAdsLoggerFactory);
        this.adListenerExecutors = new ArrayList();
    }

    public void addAdListenerExecutor(AdListenerExecutor adListenerExecutor) {
        this.adListenerExecutors.add(adListenerExecutor);
    }

    private List<AdListenerExecutor> getAdListenerExecutors() {
        return this.adListenerExecutors;
    }

    @Override // com.amazon.device.ads.AdListenerExecutor
    public void onAdLoaded(Ad ad, AdProperties adProperties) {
        for (AdListenerExecutor adListenerExecutor : getAdListenerExecutors()) {
            adListenerExecutor.onAdLoaded(ad, adProperties);
        }
    }

    @Override // com.amazon.device.ads.AdListenerExecutor
    public void onAdFailedToLoad(Ad ad, AdError adError) {
        for (AdListenerExecutor adListenerExecutor : getAdListenerExecutors()) {
            adListenerExecutor.onAdFailedToLoad(ad, adError);
        }
    }

    @Override // com.amazon.device.ads.AdListenerExecutor
    public void onAdExpanded(Ad ad) {
        for (AdListenerExecutor adListenerExecutor : getAdListenerExecutors()) {
            adListenerExecutor.onAdExpanded(ad);
        }
    }

    @Override // com.amazon.device.ads.AdListenerExecutor
    public void onAdCollapsed(Ad ad) {
        for (AdListenerExecutor adListenerExecutor : getAdListenerExecutors()) {
            adListenerExecutor.onAdCollapsed(ad);
        }
    }

    @Override // com.amazon.device.ads.AdListenerExecutor
    public void onAdDismissed(Ad ad) {
        for (AdListenerExecutor adListenerExecutor : getAdListenerExecutors()) {
            adListenerExecutor.onAdDismissed(ad);
        }
    }

    @Override // com.amazon.device.ads.AdListenerExecutor
    public void onAdResized(Ad ad, Rect rect) {
        for (AdListenerExecutor adListenerExecutor : getAdListenerExecutors()) {
            adListenerExecutor.onAdResized(ad, rect);
        }
    }

    @Override // com.amazon.device.ads.AdListenerExecutor
    public void onAdExpired(Ad ad) {
        for (AdListenerExecutor adListenerExecutor : getAdListenerExecutors()) {
            adListenerExecutor.onAdExpired(ad);
        }
    }

    @Override // com.amazon.device.ads.AdListenerExecutor
    public void onSpecialUrlClicked(Ad ad, String str) {
        for (AdListenerExecutor adListenerExecutor : getAdListenerExecutors()) {
            adListenerExecutor.onSpecialUrlClicked(ad, str);
        }
    }

    @Override // com.amazon.device.ads.AdListenerExecutor
    public ActionCode onAdReceived(Ad ad, AdData adData) {
        Iterator<AdListenerExecutor> it = getAdListenerExecutors().iterator();
        if (it.hasNext()) {
            return it.next().onAdReceived(ad, adData);
        }
        return null;
    }

    @Override // com.amazon.device.ads.AdListenerExecutor
    public void onAdEvent(AdEvent adEvent) {
        for (AdListenerExecutor adListenerExecutor : getAdListenerExecutors()) {
            adListenerExecutor.onAdEvent(adEvent);
        }
    }
}
