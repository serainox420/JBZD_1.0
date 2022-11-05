package com.applovin.impl.sdk;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.AdViewControllerImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdUpdateListener;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes.dex */
public class AppLovinAdServiceImpl implements AppLovinAdService {
    public static String URI_NO_OP = "/adservice/no_op";
    public static String URI_TRACK_CLICK_IMMEDIATELY = "/adservice/track_click_now";

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkImpl f1575a;
    private final AppLovinLogger b;
    private Handler c;
    private final Map d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppLovinAdServiceImpl(AppLovinSdkImpl appLovinSdkImpl) {
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f1575a = appLovinSdkImpl;
        this.b = appLovinSdkImpl.getLogger();
        this.c = new Handler(Looper.getMainLooper());
        this.d = new HashMap(2);
        for (AppLovinAdType appLovinAdType : AppLovinAdType.allTypes()) {
            this.d.put(appLovinAdType, new HashMap());
        }
        ((Map) this.d.get(AppLovinAdType.REGULAR)).put(AppLovinAdSize.BANNER, new i(AppLovinAdSize.BANNER, null));
        ((Map) this.d.get(AppLovinAdType.REGULAR)).put(AppLovinAdSize.MREC, new i(AppLovinAdSize.MREC, null));
        ((Map) this.d.get(AppLovinAdType.REGULAR)).put(AppLovinAdSize.INTERSTITIAL, new i(AppLovinAdSize.INTERSTITIAL, null));
        ((Map) this.d.get(AppLovinAdType.REGULAR)).put(AppLovinAdSize.LEADER, new i(AppLovinAdSize.LEADER, null));
        ((Map) this.d.get(AppLovinAdType.INCENTIVIZED)).put(AppLovinAdSize.INTERSTITIAL, new i(AppLovinAdSize.INTERSTITIAL, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Uri uri, AppLovinAdImpl appLovinAdImpl, AppLovinAdView appLovinAdView, AdViewControllerImpl adViewControllerImpl) {
        adViewControllerImpl.removeClickTrackingOverlay();
        expireAdLoadState(appLovinAdImpl);
        AppLovinSdkUtils.openUri(appLovinAdView.getContext(), uri, this.f1575a);
        adViewControllerImpl.dismissInterstitialIfRequired();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, AppLovinAdLoadListener appLovinAdLoadListener) {
        c cVar = new c(appLovinAdSize, appLovinAdType);
        AppLovinAd appLovinAd = (AppLovinAd) this.f1575a.c().b(cVar);
        if (appLovinAd != null) {
            this.b.d("AppLovinAdService", "Using pre-loaded ad: " + appLovinAd + " for size " + appLovinAdSize + " and type " + appLovinAdType);
            appLovinAdLoadListener.adReceived(appLovinAd);
        } else {
            this.f1575a.a().a(new cn(appLovinAdSize, appLovinAdType, appLovinAdLoadListener, this.f1575a), cs.MAIN);
        }
        this.f1575a.c().f(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        return ((PowerManager) this.f1575a.getApplicationContext().getSystemService("power")).isScreenOn();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(AppLovinAdSize appLovinAdSize) {
        if (appLovinAdSize == AppLovinAdSize.BANNER) {
            return ((Boolean) this.f1575a.a(bx.t)).booleanValue();
        }
        if (appLovinAdSize == AppLovinAdSize.MREC) {
            return ((Boolean) this.f1575a.a(bx.v)).booleanValue();
        }
        if (appLovinAdSize != AppLovinAdSize.LEADER) {
            return false;
        }
        return ((Boolean) this.f1575a.a(bx.x)).booleanValue();
    }

    private boolean a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType) {
        if (((Boolean) this.f1575a.a(bx.A)).booleanValue() && b(appLovinAdSize, appLovinAdType)) {
            if (appLovinAdType.equals(AppLovinAdType.INCENTIVIZED)) {
                return ((Boolean) this.f1575a.a(bx.aq)).booleanValue();
            }
            if (!appLovinAdSize.equals(AppLovinAdSize.INTERSTITIAL)) {
                return false;
            }
            return ((Boolean) this.f1575a.a(bx.ar)).booleanValue();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long b(AppLovinAdSize appLovinAdSize) {
        if (appLovinAdSize == AppLovinAdSize.BANNER) {
            return ((Long) this.f1575a.a(bx.u)).longValue();
        }
        if (appLovinAdSize == AppLovinAdSize.MREC) {
            return ((Long) this.f1575a.a(bx.w)).longValue();
        }
        if (appLovinAdSize != AppLovinAdSize.LEADER) {
            return 0L;
        }
        return ((Long) this.f1575a.a(bx.y)).longValue();
    }

    private boolean b(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType) {
        try {
            return appLovinAdType.equals(AppLovinAdType.INCENTIVIZED) ? ((Boolean) this.f1575a.a(bx.E)).booleanValue() : ((String) this.f1575a.a(bx.D)).toUpperCase(Locale.ENGLISH).contains(appLovinAdSize.getLabel());
        } catch (Exception e) {
            this.f1575a.getLogger().e("AppLovinAdService", "Unable to safely test preload merge capability", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(AppLovinAdSize appLovinAdSize) {
        long b = b(appLovinAdSize);
        if (b > 0) {
            this.f1575a.a().a(new j(this, appLovinAdSize), cs.MAIN, (b + 2) * 1000);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void addAdUpdateListener(AppLovinAdUpdateListener appLovinAdUpdateListener) {
        addAdUpdateListener(appLovinAdUpdateListener, AppLovinAdSize.BANNER);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void addAdUpdateListener(AppLovinAdUpdateListener appLovinAdUpdateListener, AppLovinAdSize appLovinAdSize) {
        boolean z;
        if (appLovinAdUpdateListener == null) {
            throw new IllegalArgumentException("No ad listener specified");
        }
        i iVar = (i) ((Map) this.d.get(AppLovinAdType.REGULAR)).get(appLovinAdSize);
        synchronized (iVar.b) {
            if (!i.b(iVar).contains(appLovinAdUpdateListener)) {
                i.b(iVar).add(appLovinAdUpdateListener);
                z = true;
                this.b.d("AppLovinAdService", "Added update listener: " + appLovinAdUpdateListener);
            } else {
                z = false;
            }
        }
        if (!z) {
            return;
        }
        this.f1575a.a().a(new j(this, appLovinAdSize), cs.MAIN);
    }

    public void expireAdLoadState(AppLovinAd appLovinAd) {
        if (appLovinAd == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        i iVar = (i) ((Map) this.d.get(appLovinAdImpl.getType())).get(appLovinAdImpl.getSize());
        synchronized (iVar.b) {
            iVar.c = null;
            iVar.d = 0L;
        }
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public boolean hasPreloadedAd(AppLovinAdSize appLovinAdSize) {
        return this.f1575a.c().e(new c(appLovinAdSize, AppLovinAdType.REGULAR));
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAd(AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        loadNextAd(appLovinAdSize, AppLovinAdType.REGULAR, appLovinAdLoadListener);
    }

    public void loadNextAd(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, AppLovinAdLoadListener appLovinAdLoadListener) {
        AppLovinAd appLovinAd;
        boolean z = true;
        if (appLovinAdSize == null) {
            throw new IllegalArgumentException("No ad size specified");
        }
        if (appLovinAdLoadListener == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        if (appLovinAdType == null) {
            throw new IllegalArgumentException("No ad type specificed");
        }
        this.f1575a.getLogger().d("AppLovinAdService", "Loading next ad of size " + appLovinAdSize.getLabel() + " and type " + appLovinAdType.getLabel());
        if (appLovinAdSize.equals(AppLovinAdSize.BANNER) || appLovinAdSize.equals(AppLovinAdSize.MREC) || appLovinAdSize.equals(AppLovinAdSize.LEADER)) {
            this.f1575a.getLogger().userError("AppLovinAdService", "Banners, MRecs and Leaderboards are deprecated and will be removed in a future SDK version!");
        }
        i iVar = (i) ((Map) this.d.get(appLovinAdType)).get(appLovinAdSize);
        synchronized (iVar.b) {
            if (System.currentTimeMillis() <= iVar.d) {
                z = false;
            }
            if (iVar.c == null || z) {
                this.b.d("AppLovinAdService", "Loading next ad...");
                i.a(iVar).add(appLovinAdLoadListener);
                if (!iVar.e) {
                    iVar.e = true;
                    h hVar = new h(this, (i) ((Map) this.d.get(appLovinAdType)).get(appLovinAdSize), null);
                    if (!a(appLovinAdSize, appLovinAdType)) {
                        this.b.d("AppLovinAdService", "Task merge not necessary.");
                        a(appLovinAdSize, appLovinAdType, hVar);
                    } else if (this.f1575a.c().a(new c(appLovinAdSize, appLovinAdType), hVar)) {
                        this.b.d("AppLovinAdService", "Attaching load listener to initial preload task...");
                        appLovinAd = null;
                    } else {
                        this.b.d("AppLovinAdService", "Skipped attach of initial preload callback.");
                        a(appLovinAdSize, appLovinAdType, hVar);
                        appLovinAd = null;
                    }
                }
                appLovinAd = null;
            } else {
                appLovinAd = iVar.c;
            }
        }
        if (appLovinAd == null) {
            return;
        }
        appLovinAdLoadListener.adReceived(appLovinAd);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void preloadAd(AppLovinAdSize appLovinAdSize) {
        this.f1575a.c().f(new c(appLovinAdSize, AppLovinAdType.REGULAR));
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void removeAdUpdateListener(AppLovinAdUpdateListener appLovinAdUpdateListener, AppLovinAdSize appLovinAdSize) {
        if (appLovinAdUpdateListener == null) {
            return;
        }
        i iVar = (i) ((Map) this.d.get(AppLovinAdType.REGULAR)).get(appLovinAdSize);
        synchronized (iVar.b) {
            i.b(iVar).remove(appLovinAdUpdateListener);
        }
        this.b.d("AppLovinAdService", "Removed update listener: " + appLovinAdUpdateListener);
    }

    public void trackClickOn(AppLovinAd appLovinAd, String str, AppLovinAdView appLovinAdView, AdViewControllerImpl adViewControllerImpl, Uri uri) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        String supplementalClickTrackingUrl = appLovinAdImpl.getSupplementalClickTrackingUrl(str);
        if (AppLovinSdkUtils.isValidString(supplementalClickTrackingUrl)) {
            this.f1575a.getPersistentPostbackManager().a(supplementalClickTrackingUrl, (Map) null);
        }
        a(uri, appLovinAdImpl, appLovinAdView, adViewControllerImpl);
    }

    public void trackForegroundClick(AppLovinAd appLovinAd, String str, AppLovinAdView appLovinAdView, AdViewControllerImpl adViewControllerImpl, Uri uri) {
        if (appLovinAd == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        this.b.d("AppLovinAdService", "Tracking foreground click on an ad...");
        int intValue = ((Integer) this.f1575a.a(bx.be)).intValue();
        int intValue2 = ((Integer) this.f1575a.a(bx.bf)).intValue();
        int intValue3 = ((Integer) this.f1575a.a(bx.bg)).intValue();
        this.f1575a.mo34getPostbackService().dispatchPostbackAsync(((AppLovinAdImpl) appLovinAd).getSupplementalClickTrackingUrl(str), null, intValue, intValue2, intValue3, new e(this, adViewControllerImpl, uri, (AppLovinAdImpl) appLovinAd, appLovinAdView));
    }
}
