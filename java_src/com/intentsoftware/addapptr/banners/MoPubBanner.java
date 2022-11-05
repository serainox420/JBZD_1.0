package com.intentsoftware.addapptr.banners;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class MoPubBanner extends BannerAd {
    private MoPubView banner;
    private boolean clickReported;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        String[] split = str.split(":");
        if (split.length < 2) {
            if (c.isLoggable(5)) {
                c.w(this, "not enough arguments for MoPub config! Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("adId doesn't have enough arguments.");
        } else if (split[0].equalsIgnoreCase("Banner")) {
            this.banner = new MoPubView(activity);
            this.banner.setAdUnitId(split[1]);
            this.banner.setBannerAdListener(createListener());
            this.banner.setAutorefreshEnabled(false);
            this.clickReported = false;
            if (kVar != null) {
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<String, List<String>> entry : kVar.getMap().entrySet()) {
                    Iterator<String> it = entry.getValue().iterator();
                    while (it.hasNext()) {
                        arrayList.add(entry.getKey() + ":" + it.next());
                    }
                }
                this.banner.setKeywords(TextUtils.join(",", arrayList));
            }
            this.banner.loadAd();
        } else {
            if (c.isLoggable(5)) {
                c.w(this, "Wrong ad format provided for MoPub banner. Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("Wrong ad format provided for MoPub banner.");
        }
    }

    private MoPubView.BannerAdListener createListener() {
        return new MoPubView.BannerAdListener() { // from class: com.intentsoftware.addapptr.banners.MoPubBanner.1
            @Override // com.mopub.mobileads.MoPubView.BannerAdListener
            public void onBannerLoaded(MoPubView moPubView) {
                MoPubBanner.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.mopub.mobileads.MoPubView.BannerAdListener
            public void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
                MoPubBanner.this.notifyListenerThatAdFailedToLoad(moPubErrorCode.name());
            }

            @Override // com.mopub.mobileads.MoPubView.BannerAdListener
            public void onBannerExpanded(MoPubView moPubView) {
                if (!MoPubBanner.this.clickReported) {
                    MoPubBanner.this.clickReported = true;
                    MoPubBanner.this.notifyListenerThatAdWasClicked();
                }
            }

            @Override // com.mopub.mobileads.MoPubView.BannerAdListener
            public void onBannerCollapsed(MoPubView moPubView) {
                if (MoPubBanner.this.clickReported) {
                    MoPubBanner.this.fallbackNotifyListenerThatAdWasDismissed();
                }
            }

            @Override // com.mopub.mobileads.MoPubView.BannerAdListener
            public void onBannerClicked(MoPubView moPubView) {
                if (!MoPubBanner.this.clickReported) {
                    MoPubBanner.this.clickReported = true;
                    MoPubBanner.this.notifyListenerThatAdWasClicked();
                }
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.banner;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.banner != null) {
            this.banner.destroy();
            this.banner = null;
        }
    }
}
