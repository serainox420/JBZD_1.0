package com.intentsoftware.addapptr;

import android.util.Pair;
import com.intentsoftware.addapptr.banners.AdMobBanner;
import com.intentsoftware.addapptr.banners.AmazonBanner;
import com.intentsoftware.addapptr.banners.AppLovinBanner;
import com.intentsoftware.addapptr.banners.AppruptBanner;
import com.intentsoftware.addapptr.banners.DFPBanner;
import com.intentsoftware.addapptr.banners.EmptyBanner;
import com.intentsoftware.addapptr.banners.FacebookBanner;
import com.intentsoftware.addapptr.banners.FlurryBanner;
import com.intentsoftware.addapptr.banners.InMobiBanner;
import com.intentsoftware.addapptr.banners.MillenialBanner;
import com.intentsoftware.addapptr.banners.MoPubBanner;
import com.intentsoftware.addapptr.banners.NexageBanner;
import com.intentsoftware.addapptr.banners.OpenXBanner;
import com.intentsoftware.addapptr.banners.PromoHouseBanner;
import com.intentsoftware.addapptr.banners.PubMaticBanner;
import com.intentsoftware.addapptr.banners.RevMobBanner;
import com.intentsoftware.addapptr.banners.SmaatoBanner;
import com.intentsoftware.addapptr.banners.SmartAdServerBanner;
import com.intentsoftware.addapptr.fullscreens.AdColonyFullscreen;
import com.intentsoftware.addapptr.fullscreens.AdMobFullscreen;
import com.intentsoftware.addapptr.fullscreens.AmazonFullscreen;
import com.intentsoftware.addapptr.fullscreens.AppLovinFullscreen;
import com.intentsoftware.addapptr.fullscreens.AppruptFullscreen;
import com.intentsoftware.addapptr.fullscreens.DFPFullscreen;
import com.intentsoftware.addapptr.fullscreens.EmptyFullscreen;
import com.intentsoftware.addapptr.fullscreens.FacebookFullscreen;
import com.intentsoftware.addapptr.fullscreens.FlurryFullscreen;
import com.intentsoftware.addapptr.fullscreens.InMobiFullscreen;
import com.intentsoftware.addapptr.fullscreens.LoopMeFullscreen;
import com.intentsoftware.addapptr.fullscreens.MdotMFullscreen;
import com.intentsoftware.addapptr.fullscreens.MillenialFullscreen;
import com.intentsoftware.addapptr.fullscreens.MoPubFullscreen;
import com.intentsoftware.addapptr.fullscreens.NexageFullscreen;
import com.intentsoftware.addapptr.fullscreens.OpenXFullscreen;
import com.intentsoftware.addapptr.fullscreens.PermodoFullscreen;
import com.intentsoftware.addapptr.fullscreens.PromoHouseFullscreen;
import com.intentsoftware.addapptr.fullscreens.PubMaticFullscreen;
import com.intentsoftware.addapptr.fullscreens.RevMobFullscreen;
import com.intentsoftware.addapptr.fullscreens.SmaatoFullscreen;
import com.intentsoftware.addapptr.fullscreens.SmartAdServerFullscreen;
import com.intentsoftware.addapptr.fullscreens.SmartStreamFullscreen;
import com.intentsoftware.addapptr.fullscreens.UnityFullscreen;
import com.intentsoftware.addapptr.nativeads.AdMobNativeAd;
import com.intentsoftware.addapptr.nativeads.FacebookNativeAd;
import com.intentsoftware.addapptr.nativeads.FlurryNativeAd;
import com.intentsoftware.addapptr.nativeads.InMobiNativeAd;
import com.intentsoftware.addapptr.nativeads.MoPubNativeAd;
import com.intentsoftware.addapptr.nativeads.banners.FacebookNativeBanner;
import java.util.HashMap;
/* compiled from: AdBuilder.java */
/* loaded from: classes2.dex */
class a {
    private static final HashMap<Pair<AdNetwork, AdType>, Class<? extends com.intentsoftware.addapptr.ad.a>> ads = new HashMap<>();

    static {
        ads.put(new Pair<>(AdNetwork.ADCOLONY, AdType.FULLSCREEN), AdColonyFullscreen.class);
        ads.put(new Pair<>(AdNetwork.ADMOB, AdType.BANNER), AdMobBanner.class);
        ads.put(new Pair<>(AdNetwork.ADMOB, AdType.FULLSCREEN), AdMobFullscreen.class);
        ads.put(new Pair<>(AdNetwork.ADMOB, AdType.NATIVE), AdMobNativeAd.class);
        ads.put(new Pair<>(AdNetwork.AMAZON, AdType.BANNER), AmazonBanner.class);
        ads.put(new Pair<>(AdNetwork.AMAZON, AdType.FULLSCREEN), AmazonFullscreen.class);
        ads.put(new Pair<>(AdNetwork.APPLOVIN, AdType.BANNER), AppLovinBanner.class);
        ads.put(new Pair<>(AdNetwork.APPLOVIN, AdType.FULLSCREEN), AppLovinFullscreen.class);
        ads.put(new Pair<>(AdNetwork.APPRUPT, AdType.BANNER), AppruptBanner.class);
        ads.put(new Pair<>(AdNetwork.APPRUPT, AdType.FULLSCREEN), AppruptFullscreen.class);
        ads.put(new Pair<>(AdNetwork.DFP, AdType.BANNER), DFPBanner.class);
        ads.put(new Pair<>(AdNetwork.DFP, AdType.FULLSCREEN), DFPFullscreen.class);
        ads.put(new Pair<>(AdNetwork.DFP, AdType.NATIVE), AdMobNativeAd.class);
        ads.put(new Pair<>(AdNetwork.EMPTY, AdType.BANNER), EmptyBanner.class);
        ads.put(new Pair<>(AdNetwork.EMPTY, AdType.FULLSCREEN), EmptyFullscreen.class);
        ads.put(new Pair<>(AdNetwork.FACEBOOK, AdType.BANNER), FacebookBanner.class);
        ads.put(new Pair<>(AdNetwork.FACEBOOK, AdType.FULLSCREEN), FacebookFullscreen.class);
        ads.put(new Pair<>(AdNetwork.FACEBOOK, AdType.NATIVE), FacebookNativeAd.class);
        ads.put(new Pair<>(AdNetwork.FACEBOOK, AdType.NATIVE_BANNER), FacebookNativeBanner.class);
        ads.put(new Pair<>(AdNetwork.SMARTSTREAMTV, AdType.FULLSCREEN), SmartStreamFullscreen.class);
        ads.put(new Pair<>(AdNetwork.HOUSE, AdType.BANNER), PromoHouseBanner.class);
        ads.put(new Pair<>(AdNetwork.HOUSE, AdType.FULLSCREEN), PromoHouseFullscreen.class);
        ads.put(new Pair<>(AdNetwork.INMOBI, AdType.BANNER), InMobiBanner.class);
        ads.put(new Pair<>(AdNetwork.INMOBI, AdType.FULLSCREEN), InMobiFullscreen.class);
        ads.put(new Pair<>(AdNetwork.INMOBI, AdType.NATIVE), InMobiNativeAd.class);
        ads.put(new Pair<>(AdNetwork.LOOPME, AdType.FULLSCREEN), LoopMeFullscreen.class);
        ads.put(new Pair<>(AdNetwork.MDOTM, AdType.FULLSCREEN), MdotMFullscreen.class);
        ads.put(new Pair<>(AdNetwork.MILLENNIAL, AdType.BANNER), MillenialBanner.class);
        ads.put(new Pair<>(AdNetwork.MILLENNIAL, AdType.FULLSCREEN), MillenialFullscreen.class);
        ads.put(new Pair<>(AdNetwork.MOPUB, AdType.BANNER), MoPubBanner.class);
        ads.put(new Pair<>(AdNetwork.MOPUB, AdType.FULLSCREEN), MoPubFullscreen.class);
        ads.put(new Pair<>(AdNetwork.MOPUB, AdType.NATIVE), MoPubNativeAd.class);
        ads.put(new Pair<>(AdNetwork.NEXAGE, AdType.BANNER), NexageBanner.class);
        ads.put(new Pair<>(AdNetwork.NEXAGE, AdType.FULLSCREEN), NexageFullscreen.class);
        ads.put(new Pair<>(AdNetwork.OPENX, AdType.BANNER), OpenXBanner.class);
        ads.put(new Pair<>(AdNetwork.OPENX, AdType.FULLSCREEN), OpenXFullscreen.class);
        ads.put(new Pair<>(AdNetwork.ADX, AdType.BANNER), AdMobBanner.class);
        ads.put(new Pair<>(AdNetwork.ADX, AdType.FULLSCREEN), AdMobFullscreen.class);
        ads.put(new Pair<>(AdNetwork.SMAATO, AdType.BANNER), SmaatoBanner.class);
        ads.put(new Pair<>(AdNetwork.SMAATO, AdType.FULLSCREEN), SmaatoFullscreen.class);
        ads.put(new Pair<>(AdNetwork.SMARTAD, AdType.BANNER), SmartAdServerBanner.class);
        ads.put(new Pair<>(AdNetwork.SMARTAD, AdType.FULLSCREEN), SmartAdServerFullscreen.class);
        ads.put(new Pair<>(AdNetwork.UNITYADS, AdType.FULLSCREEN), UnityFullscreen.class);
        ads.put(new Pair<>(AdNetwork.PUBMATIC, AdType.BANNER), PubMaticBanner.class);
        ads.put(new Pair<>(AdNetwork.PUBMATIC, AdType.FULLSCREEN), PubMaticFullscreen.class);
        ads.put(new Pair<>(AdNetwork.REVMOB, AdType.BANNER), RevMobBanner.class);
        ads.put(new Pair<>(AdNetwork.REVMOB, AdType.FULLSCREEN), RevMobFullscreen.class);
        ads.put(new Pair<>(AdNetwork.FLURRY, AdType.BANNER), FlurryBanner.class);
        ads.put(new Pair<>(AdNetwork.FLURRY, AdType.FULLSCREEN), FlurryFullscreen.class);
        ads.put(new Pair<>(AdNetwork.FLURRY, AdType.NATIVE), FlurryNativeAd.class);
        ads.put(new Pair<>(AdNetwork.PERMODO, AdType.FULLSCREEN), PermodoFullscreen.class);
    }

    public com.intentsoftware.addapptr.ad.a build(b bVar) throws IllegalAccessException, InstantiationException {
        return ads.get(new Pair(bVar.getNetwork(), bVar.getSize())).newInstance();
    }
}
