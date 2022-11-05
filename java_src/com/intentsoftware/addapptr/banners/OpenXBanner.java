package com.intentsoftware.addapptr.banners;

import android.app.Activity;
import android.location.Location;
import android.view.View;
import android.view.ViewGroup;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import com.openx.core.network.OXAdRequest;
import com.openx.errors.AdError;
import com.openx.model.adParams.AdCallParameters;
import com.openx.view.AdBanner;
import com.openx.view.AdEventsListener;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class OpenXBanner extends BannerAd {
    private AdBanner banner;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        String[] split = str.split(":");
        if (split.length < 2) {
            if (c.isLoggable(5)) {
                c.w(this, "not enough arguments for OpenX config! Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("not enough arguments in adId");
            return;
        }
        this.banner = new AdBanner(activity, split[0], split[1]);
        this.banner.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.banner.setAutoStartLoading(false);
        this.banner.setAutoRefreshInterval(0);
        this.banner.setAdEventsListener(createListener());
        Location location = b.getLocation();
        if (location != null || kVar != null) {
            AdCallParameters adCallParameters = new AdCallParameters();
            if (location != null) {
                adCallParameters.setCoordinates(location.getLatitude(), location.getLongitude());
            }
            if (kVar != null) {
                for (Map.Entry<String, List<String>> entry : kVar.getMap().entrySet()) {
                    adCallParameters.setCustomParameter(entry.getKey(), entry.getValue().get(0));
                }
            }
            OXAdRequest oXAdRequest = new OXAdRequest();
            oXAdRequest.setAdCallParams(adCallParameters);
            this.banner.load(oXAdRequest);
            return;
        }
        this.banner.load();
    }

    private AdEventsListener createListener() {
        return new AdEventsListener() { // from class: com.intentsoftware.addapptr.banners.OpenXBanner.1
            @Override // com.openx.view.AdEventsListener
            public void onAdFailedToLoad(AdError adError) {
                OpenXBanner.this.notifyListenerThatAdFailedToLoad(adError.getMessage());
            }

            @Override // com.openx.view.AdEventsListener
            public void onAdDidLoad() {
                OpenXBanner.this.notifyListenerThatAdWasLoaded();
            }

            @Override // com.openx.view.AdEventsListener
            public void onAdClosed() {
            }

            @Override // com.openx.view.AdEventsListener
            public void onAdClicked() {
                OpenXBanner.this.notifyListenerThatAdWasClicked();
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.banner;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        this.banner = null;
    }
}
