package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.k;
/* loaded from: classes2.dex */
public class EmptyFullscreen extends FullscreenAd {
    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        notifyListenerThatShowingEmpty();
        notifyListenerThatAdIsShown();
        fallbackNotifyListenerThatAdWasDismissed();
        return true;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        notifyListenerThatAdWasLoaded();
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
    }
}
