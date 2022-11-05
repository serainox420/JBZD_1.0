package com.intentsoftware.addapptr.banners;

import android.app.Activity;
import android.view.View;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.k;
/* loaded from: classes2.dex */
public class EmptyBanner extends BannerAd {
    private View emptyView;

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.emptyView;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.emptyView = new View(activity);
        notifyListenerThatAdWasLoaded();
        notifyListenerThatShowingEmpty();
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        this.emptyView = null;
    }
}
