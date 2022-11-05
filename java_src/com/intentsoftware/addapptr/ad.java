package com.intentsoftware.addapptr;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
/* compiled from: SupportedNetworks.java */
/* loaded from: classes2.dex */
public class ad {
    private static final ArrayList<Pair<AdNetwork, AdType>> networks = new ArrayList<>();
    private static final HashSet<AdNetwork> disabledNetworks = new HashSet<>();
    private static final HashSet<AdNetwork> networksWithRemovedSdks = new HashSet<>(Arrays.asList(AdNetwork.values()));

    static {
        add(AdNetwork.ADCOLONY, AdType.FULLSCREEN, "com.adcolony.sdk.AdColonyInterstitial");
        add(AdNetwork.ADMOB, AdType.BANNER, "com.google.android.gms.ads.AdView");
        add(AdNetwork.ADMOB, AdType.FULLSCREEN, "com.google.android.gms.ads.InterstitialAd");
        add(AdNetwork.ADMOB, AdType.NATIVE, "com.google.android.gms.ads.formats.NativeAd");
        add(AdNetwork.ADX, AdType.BANNER, "com.google.android.gms.ads.AdView");
        add(AdNetwork.ADX, AdType.FULLSCREEN, "com.google.android.gms.ads.InterstitialAd");
        add(AdNetwork.AMAZON, AdType.BANNER, "com.amazon.device.ads.AdLayout");
        add(AdNetwork.AMAZON, AdType.FULLSCREEN, "com.amazon.device.ads.InterstitialAd");
        add(AdNetwork.APPLOVIN, AdType.BANNER, "com.applovin.adview.AppLovinAdView");
        add(AdNetwork.APPLOVIN, AdType.FULLSCREEN, "com.applovin.adview.AppLovinInterstitialAdDialog");
        add(AdNetwork.APPRUPT, AdType.BANNER, "com.apprupt.sdk.AdView");
        add(AdNetwork.APPRUPT, AdType.FULLSCREEN, "com.apprupt.sdk.CvSDK");
        add(AdNetwork.DFP, AdType.BANNER, "com.google.android.gms.ads.doubleclick.PublisherAdView");
        add(AdNetwork.DFP, AdType.FULLSCREEN, "com.google.android.gms.ads.doubleclick.PublisherInterstitialAd");
        add(AdNetwork.DFP, AdType.NATIVE, "com.google.android.gms.ads.formats.NativeAd");
        add(AdNetwork.EMPTY, AdType.BANNER, "com.intentsoftware.addapptr.banners.EmptyBanner");
        add(AdNetwork.EMPTY, AdType.FULLSCREEN, "com.intentsoftware.addapptr.fullscreens.EmptyFullscreen");
        add(AdNetwork.FACEBOOK, AdType.BANNER, "com.facebook.ads.AdView");
        add(AdNetwork.FACEBOOK, AdType.FULLSCREEN, "com.facebook.ads.InterstitialAd");
        add(AdNetwork.FACEBOOK, AdType.NATIVE, "com.facebook.ads.NativeAd");
        add(AdNetwork.FLURRY, AdType.BANNER, "com.flurry.android.ads.FlurryAdBanner");
        add(AdNetwork.FLURRY, AdType.FULLSCREEN, "com.flurry.android.ads.FlurryAdInterstitial");
        add(AdNetwork.FLURRY, AdType.NATIVE, "com.flurry.android.ads.FlurryAdNative");
        add(AdNetwork.HOUSE, AdType.BANNER, "com.intentsoftware.addapptr.banners.PromoHouseBanner");
        add(AdNetwork.HOUSE, AdType.FULLSCREEN, "com.intentsoftware.addapptr.fullscreens.PromoHouseFullscreen");
        add(AdNetwork.INMOBI, AdType.BANNER, "com.inmobi.monetization.IMBanner");
        add(AdNetwork.INMOBI, AdType.FULLSCREEN, "com.inmobi.monetization.IMInterstitial");
        add(AdNetwork.INMOBI, AdType.NATIVE, "com.inmobi.monetization.IMNative");
        add(AdNetwork.LOOPME, AdType.FULLSCREEN, "com.loopme.LoopMeInterstitial");
        add(AdNetwork.MDOTM, AdType.FULLSCREEN, "com.mdotm.android.view.MdotMInterstitial");
        add(AdNetwork.MILLENNIAL, AdType.BANNER, "com.millennialmedia.InlineAd");
        add(AdNetwork.MILLENNIAL, AdType.FULLSCREEN, "com.millennialmedia.InterstitialAd");
        add(AdNetwork.MOPUB, AdType.BANNER, "com.mopub.mobileads.HtmlBanner");
        add(AdNetwork.MOPUB, AdType.FULLSCREEN, "com.mopub.mobileads.MoPubInterstitial");
        add(AdNetwork.MOPUB, AdType.NATIVE, "com.mopub.nativeads.MoPubNative");
        add(AdNetwork.NEXAGE, AdType.BANNER, "com.intentsoftware.addapptr.banners.NexageBanner");
        add(AdNetwork.NEXAGE, AdType.FULLSCREEN, "com.intentsoftware.addapptr.fullscreens.NexageFullscreen");
        add(AdNetwork.OPENX, AdType.BANNER, "com.openx.view.AdBanner");
        add(AdNetwork.OPENX, AdType.FULLSCREEN, "com.openx.view.AdInterstitial");
        add(AdNetwork.PERMODO, AdType.FULLSCREEN, "com.madsdk.MadSdkInterstitialAd");
        add(AdNetwork.PUBMATIC, AdType.BANNER, "com.pubmatic.sdk.banner.PMBannerAdView");
        add(AdNetwork.PUBMATIC, AdType.FULLSCREEN, "com.pubmatic.sdk.banner.PMInterstitialAdView");
        add(AdNetwork.REVMOB, AdType.BANNER, "com.revmob.ads.banner.RevMobBanner");
        add(AdNetwork.REVMOB, AdType.FULLSCREEN, "com.revmob.ads.interstitial.RevMobFullscreen");
        add(AdNetwork.SMAATO, AdType.BANNER, "com.smaato.soma.BannerView");
        add(AdNetwork.SMAATO, AdType.FULLSCREEN, "com.smaato.soma.interstitial.Interstitial");
        add(AdNetwork.SMARTAD, AdType.BANNER, "com.smartadserver.android.library.SASBannerView");
        add(AdNetwork.SMARTAD, AdType.FULLSCREEN, "com.smartadserver.android.library.SASBannerView");
        add(AdNetwork.SMARTSTREAMTV, AdType.FULLSCREEN, "com.video.adsdk.VideoAdSDK");
        add(AdNetwork.UNITYADS, AdType.FULLSCREEN, "com.unity3d.ads.UnityAds");
    }

    public static boolean isConfigSupported(AdNetwork adNetwork, AdType adType) {
        Iterator<Pair<AdNetwork, AdType>> it = networks.iterator();
        while (it.hasNext()) {
            Pair<AdNetwork, AdType> next = it.next();
            if (((AdNetwork) next.first).equals(adNetwork) && ((AdType) next.second).equals(adType)) {
                return true;
            }
        }
        return false;
    }

    private static void add(AdNetwork adNetwork, AdType adType, String str) {
        try {
            Class.forName(str, false, ad.class.getClassLoader());
            networks.add(new Pair<>(adNetwork, adType));
            networksWithRemovedSdks.remove(adNetwork);
        } catch (ClassNotFoundException e) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d("SupportedNetworks", "SDK for network: " + adNetwork + " and type: " + adType + " has been removed.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void remove(AdNetwork adNetwork) {
        for (AdType adType : AdType.values()) {
            networks.remove(new Pair(adNetwork, adType));
        }
        networksWithRemovedSdks.add(adNetwork);
    }

    static Set<AdNetwork> getNetworks() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Pair<AdNetwork, AdType>> it = networks.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(it.next().first);
        }
        return linkedHashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setNetworkEnabled(AdNetwork adNetwork, boolean z) {
        if (z) {
            if (disabledNetworks.contains(adNetwork)) {
                disabledNetworks.remove(adNetwork);
                return;
            }
            return;
        }
        disabledNetworks.add(adNetwork);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isNetworkEnabled(AdNetwork adNetwork) {
        return !disabledNetworks.contains(adNetwork) && !networksWithRemovedSdks.contains(adNetwork);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set<AdNetwork> getDisabledNetworks() {
        return disabledNetworks;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set<AdNetwork> getNetworksWithRemovedSdks() {
        return networksWithRemovedSdks;
    }
}
