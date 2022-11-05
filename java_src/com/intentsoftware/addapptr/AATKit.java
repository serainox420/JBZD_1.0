package com.intentsoftware.addapptr;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import com.intentsoftware.addapptr.ad.NativeAd;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class AATKit {
    public static final int BANNER_DEFAULT_RELOAD_INTERVAL_IN_SECONDS = 30;
    public static final int BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS = 600;
    public static final int BANNER_MIN_RELOAD_INTERVAL_IN_SECONDS = 30;
    @SuppressLint({"StaticFieldLeak"})
    private static c adController;

    /* loaded from: classes.dex */
    public interface Delegate {
        void aatkitHaveAd(int i);

        void aatkitHaveAdForPlacementWithBannerView(int i, k kVar);

        void aatkitNoAd(int i);

        void aatkitObtainedAdRules(boolean z);

        void aatkitPauseForAd(int i);

        void aatkitResumeAfterAd(int i);

        void aatkitShowingEmpty(int i);

        void aatkitUnknownBundleId();

        void aatkitUserEarnedIncentive(int i);
    }

    public static String getVersion() {
        logAATKitCall("CMD: getVersion()");
        return ae.NAME;
    }

    public static String getFullVersion() {
        logAATKitCall("CMD: getFullVersion()");
        return ae.FULL_NAME;
    }

    public static void init(Application application, Delegate delegate) {
        if (adController == null) {
            adController = new c(application, delegate, true);
            com.intentsoftware.addapptr.c.c.d("Init", ae.FULL_NAME + ", live mode, shake debug on, rule caching on");
            logAATKitCall("CMD: init(" + application + "," + delegate + ")");
            return;
        }
        throw new RuntimeException("AdController is already initialized");
    }

    public static void init(Application application, Delegate delegate, boolean z, String str) {
        if (adController == null) {
            adController = new c(application, delegate, true);
            adController.setRuleCachingEnabled(z);
            if (str != null) {
                adController.setInitialRules(str);
            }
            com.intentsoftware.addapptr.c.c.d("Init", ae.FULL_NAME + ", live mode, shake debug on, rule caching: " + z + ", initial rules: " + str);
            logAATKitCall("CMD: init(" + application + "," + delegate + "," + z + "," + str + ")");
            return;
        }
        throw new RuntimeException("AdController is already initialized");
    }

    public static void init(Application application, Delegate delegate, int i) {
        if (adController == null) {
            adController = new c(application, delegate, true);
            adController.setTestAppId(i);
            com.intentsoftware.addapptr.c.c.d("Init", ae.FULL_NAME + ", test mode with ID: " + i + ", shake debug on, rule caching on");
            logAATKitCall("CMD: init(" + application + "," + delegate + "," + i + ")");
            return;
        }
        throw new RuntimeException("AdController is already initialized");
    }

    public static void initWithoutDebugScreen(Application application, Delegate delegate) {
        if (adController == null) {
            adController = new c(application, delegate, false);
            com.intentsoftware.addapptr.c.c.d("Init", ae.FULL_NAME + ", live mode, shake debug off, rule caching on");
            logAATKitCall("CMD: initWithoutDebugScreen(" + application + "," + delegate + ")");
            return;
        }
        throw new RuntimeException("AdController is already initialized");
    }

    public static void enableTestMode(int i) {
        logAATKitCall("CMD: enableTestMode(" + i + ")");
        adController.setTestAppId(i);
    }

    public static void enableDebugScreen() {
        adController.enableDebugScreen();
        logAATKitCall("CMD: enableDebugScreen()");
    }

    public static void disableDebugScreen() {
        logAATKitCall("CMD: disableDebugScreen()");
        adController.disableDebugScreen();
    }

    public static String getDebugInfo() {
        logAATKitCall("CMD: getDebugInfo()");
        return adController.getDebugInfo();
    }

    public static boolean isTablet(Context context) {
        logAATKitCall("CMD: isTablet(" + context + ")");
        return com.intentsoftware.addapptr.c.m.isTablet(context);
    }

    public static void onActivityResume(Activity activity) {
        logAATKitCall("CMD: onActivityResume(" + activity + ")");
        adController.onActivityResume(activity);
    }

    public static void onActivityPause(Activity activity) {
        logAATKitCall("CMD: onActivityPause(" + activity + ")");
        adController.onActivityPause();
    }

    public static int createPlacement(String str, PlacementSize placementSize) {
        logAATKitCall("CMD: createPlacement(" + str + "," + placementSize + ")");
        return adController.createPlacement(str, placementSize);
    }

    public static void startPlacementAutoReload(int i) {
        logAATKitCall("CMD: startPlacementAutoReload(" + i + ")");
        adController.startPlacementAutoReload(i);
    }

    public static void startPlacementAutoReload(int i, int i2) {
        logAATKitCall("CMD: startPlacementAutoReload(" + i + "," + i2 + ")");
        adController.startPlacementAutoReload(i, i2);
    }

    public static void stopPlacementAutoReload(int i) {
        logAATKitCall("CMD: stopPlacementAutoReload(" + i + ")");
        adController.stopPlacementAutoReload(i);
    }

    public static void setPlacementAutoreloadInterval(int i, int i2) {
        logAATKitCall("CMD: setPlacementAutoreloadInterval(" + i + "," + i2 + ")");
        adController.setPlacementAutoreloadInterval(i, i2);
    }

    public static boolean reloadPlacement(int i) {
        logAATKitCall("CMD: reloadPlacement(" + i + ")");
        return adController.reloadPlacement(i, false);
    }

    public static boolean reloadPlacement(int i, boolean z) {
        logAATKitCall("CMD: reloadPlacement(" + i + "," + z + ")");
        return adController.reloadPlacement(i, z);
    }

    public static View getPlacementView(int i) {
        logAATKitCall("CMD: getPlacementView(" + i + ")");
        return adController.getPlacementView(i);
    }

    public static void attachNativeAdToLayout(com.intentsoftware.addapptr.ad.d dVar, ViewGroup viewGroup) {
        logAATKitCall("CMD: attachNativeAdToLayout(" + dVar + ", " + viewGroup.getClass().getSimpleName() + ")");
        adController.attachNativeAdToLayout(dVar, viewGroup);
    }

    public static void detachNativeAdFromLayout(com.intentsoftware.addapptr.ad.d dVar) {
        logAATKitCall("CMD: detachNativeAdFromLayout(" + dVar + ")");
        adController.detachNativeAdFromLayout(dVar);
    }

    public static String getNativeAdTitle(com.intentsoftware.addapptr.ad.d dVar) {
        logAATKitCall("CMD: getNativeAdTitle(" + dVar + ")");
        return adController.getNativeAdTitle(dVar);
    }

    public static String getNativeAdDescription(com.intentsoftware.addapptr.ad.d dVar) {
        logAATKitCall("CMD: getNativeAdDescription(" + dVar + ")");
        return adController.getNativeAdDescription(dVar);
    }

    public static String getNativeAdCallToAction(com.intentsoftware.addapptr.ad.d dVar) {
        logAATKitCall("CMD: getNativeAdCallToAction(" + dVar + ")");
        return adController.getNativeAdCallToAction(dVar);
    }

    public static String getNativeAdImageUrl(com.intentsoftware.addapptr.ad.d dVar) {
        logAATKitCall("CMD: getNativeAdImageUrl(" + dVar + ")");
        return adController.getNativeAdImageUrl(dVar);
    }

    public static String getNativeAdIconUrl(com.intentsoftware.addapptr.ad.d dVar) {
        logAATKitCall("CMD: getNativeAdIconUrl(" + dVar + ")");
        return adController.getNativeAdIconUrl(dVar);
    }

    public static NativeAd.a getNativeAdRating(com.intentsoftware.addapptr.ad.d dVar) {
        logAATKitCall("CMD: getNativeAdRating(" + dVar + ")");
        return adController.getNativeAdRating(dVar);
    }

    public static View getNativeAdBrandingLogo(com.intentsoftware.addapptr.ad.d dVar) {
        logAATKitCall("CMD: getNativeAdBrandingLogo(" + dVar + ")");
        return adController.getNativeAdBrandingLogo(dVar);
    }

    public static String getNativeAdAdvertiser(com.intentsoftware.addapptr.ad.d dVar) {
        logAATKitCall("CMD: getNativeAdAdvertiser(" + dVar + ")");
        return adController.getNativeAdAdvertiser(dVar);
    }

    public static NativeAd.Type getNativeAdType(com.intentsoftware.addapptr.ad.d dVar) {
        logAATKitCall("CMD: getNativeAdType(" + dVar + ")");
        return adController.getNativeAdType(dVar);
    }

    public static AdNetwork getNativeAdNetwork(com.intentsoftware.addapptr.ad.d dVar) {
        logAATKitCall("CMD: getNativeAdNetwork(" + dVar + ")");
        return adController.getNativeAdNetwork(dVar);
    }

    public static boolean isNativeAdExpired(com.intentsoftware.addapptr.ad.d dVar) {
        logAATKitCall("CMD: isNativeAdExpired(" + dVar + ")");
        return adController.isNativeAdExpired(dVar);
    }

    public static boolean isNativeAdReady(com.intentsoftware.addapptr.ad.d dVar) {
        logAATKitCall("CMD: isNativeAdReady(" + dVar + ")");
        return adController.isNativeAdReady(dVar);
    }

    public static void reportAdSpaceForNativePlacement(int i) {
        logAATKitCall("CMD: reportAdSpaceForNativePlacement(" + i + ")");
        adController.reportAdSpaceForNativePlacement(i);
    }

    public static int currentlyLoadingNativeAdsOnPlacement(int i) {
        logAATKitCall("CMD: currentlyLoadingNativeAdsOnPlacement(" + i + ")");
        return adController.currentlyLoadingNativeAdsOnPlacement(i);
    }

    public static boolean isFrequencyCapReachedForNativePlacement(int i) {
        logAATKitCall("CMD: isFrequencyCapReachedForNativePlacement(" + i + ")");
        return adController.isFrequencyCapReachedForNativePlacement(i);
    }

    public static com.intentsoftware.addapptr.ad.d getNativeAd(int i) {
        logAATKitCall("CMD: getNativeAd(" + i + ")");
        return adController.getNativeAd(i);
    }

    public static int getPlacmentIdForName(String str) {
        logAATKitCall("CMD: getPlacmentIdForName(" + str + ")");
        return adController.findPlacementIdByName(str);
    }

    public static boolean hasAdForPlacement(int i) {
        logAATKitCall("CMD: hasAdForPlacement(" + i + ")");
        return adController.hasAdForPlacement(i);
    }

    public static boolean showPlacement(int i) {
        logAATKitCall("CMD: showPlacement(" + i + ")");
        return adController.showPlacement(i);
    }

    public static void setNetworkEnabled(AdNetwork adNetwork, boolean z) {
        logAATKitCall("CMD: setNetworkEnabled(" + adNetwork + "," + z + ")");
        adController.setNetworkEnabled(adNetwork, z);
    }

    public static boolean isNetworkEnabled(AdNetwork adNetwork) {
        logAATKitCall("CMD: isNetworkEnabled(" + adNetwork + ")");
        return adController.isNetworkEnabled(adNetwork);
    }

    @Deprecated
    public static void enablePromo() {
        logAATKitCall("CMD: enablePromo()");
        adController.enablePromo(false);
    }

    @Deprecated
    public static void enablePromo(boolean z) {
        logAATKitCall("CMD: enablePromo(" + z + ")");
        adController.enablePromo(z);
    }

    @Deprecated
    public static void disablePromo() {
        logAATKitCall("CMD: disablePromo()");
        adController.disablePromo();
    }

    public static void preparePromo() {
        logAATKitCall("CMD: preparePromo()");
        adController.preparePromo();
    }

    @Deprecated
    public static boolean showPromo() {
        logAATKitCall("CMD: showPromo()");
        return adController.showPromo(true);
    }

    public static boolean showPromo(boolean z) {
        logAATKitCall("CMD: showPromo(" + z + ")");
        return adController.showPromo(z);
    }

    public static void setPlacementDefaultImageBitmap(int i, Bitmap bitmap) {
        logAATKitCall("CMD: setPlacementDefaultImageBitmap(" + i + "," + bitmap + ")");
        adController.setPlacementDefaultImage(i, bitmap);
    }

    public static void setPlacementDefaultImageResource(int i, int i2) {
        logAATKitCall("CMD: setPlacementDefaultImageResource(" + i + "," + i2 + ")");
        adController.setPlacementDefaultImageResource(i, i2);
    }

    public static String getOption(String str) {
        logAATKitCall("CMD: getOption(" + str + ")");
        return c.getOption(str);
    }

    public static boolean isOptionEnabled(String str) {
        logAATKitCall("CMD: isOptionEnabled(" + str + ")");
        return c.isOptionEnabled(str);
    }

    public static void setOption(String str, String str2) {
        logAATKitCall("CMD: setOption(" + str + "," + str + ")");
        adController.setOption(str, str2);
    }

    public static void setTargetingInfo(Map<String, List<String>> map) {
        logAATKitCall("CMD: setTargetingInfo(" + map + ")");
        adController.setTargetingInfo(null, map);
    }

    public static void setTargetingInfo(int i, Map<String, List<String>> map) {
        logAATKitCall("CMD: setTargetingInfo(" + i + ", " + map + ")");
        adController.setTargetingInfo(Integer.valueOf(i), map);
    }

    public static void addAdNetworkForKeywordTargeting(AdNetwork adNetwork) {
        logAATKitCall("CMD: addAdNetworkForKeywordTargeting(" + adNetwork + ")");
        adController.addAdNetworkForKeywordTargeting(adNetwork);
    }

    public static void removeAdNetworkForKeywordTargeting(AdNetwork adNetwork) {
        logAATKitCall("CMD: removeAdNetworkForKeywordTargeting(" + adNetwork + ")");
        adController.removeAdNetworkForKeywordTargeting(adNetwork);
    }

    public static void setPlacementContentGravity(int i, int i2) {
        logAATKitCall("CMD: setPlacementContentGravity(" + i + "," + i2 + ")");
        adController.setPlacementContentGravity(i, i2);
    }

    public static void setInitialRules(String str) {
        logAATKitCall("CMD: setInitialRules(" + str + ")");
        adController.setInitialRules(str);
    }

    public static void setRuleCachingEnabled(boolean z) {
        logAATKitCall("CMD: setRuleCachingEnabled(" + z + ")");
        adController.setRuleCachingEnabled(z);
    }

    public static void setLogLevel(int i) {
        com.intentsoftware.addapptr.c.h.log("CMD: setLogLevel(" + i + ")");
        adController.setLogLevel(i);
    }

    private static void logAATKitCall(String str) {
        if (adController != null && adController.shouldLogAATKitCalls()) {
            com.intentsoftware.addapptr.c.h.log(str);
        }
        if (com.intentsoftware.addapptr.c.c.isLoggable(2)) {
            com.intentsoftware.addapptr.c.c.v(AATKit.class, str.replaceFirst("^CMD:\\s*", ""));
        }
    }

    static void destroy() {
        adController.destroy();
        adController = null;
    }

    static boolean isInitialized() {
        return adController != null;
    }

    static void showDebugDialog() {
        logAATKitCall("CMD: showDebugDialog()");
        adController.showDebugDialog();
    }
}
