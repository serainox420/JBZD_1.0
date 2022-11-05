package com.amazon.device.ads;

import android.annotation.SuppressLint;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdLoader;
import com.amazon.device.ads.AdRequest;
import com.amazon.device.ads.AdvertisingIdentifier;
import com.amazon.device.ads.ThreadUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
class AdLoadStarter {
    private static final String LOGTAG = AdLoadStarter.class.getSimpleName();
    private final AdLoader.AdLoaderFactory adLoaderFactory;
    private final AdRequest.AdRequestBuilder adRequestBuilder;
    private final AdvertisingIdentifier advertisingIdentifier;
    private final Configuration configuration;
    private final MobileAdsInfoStore infoStore;
    private final MobileAdsLogger logger;
    private final PermissionChecker permissionChecker;
    private final Settings settings;
    private final SystemTime systemTime;
    private final ThreadUtils.ThreadRunner threadRunner;
    private final ViewabilityJavascriptFetcherListener viewabilityJavascriptFetcherListener;

    public AdLoadStarter() {
        this(new AdLoader.AdLoaderFactory(), new AdvertisingIdentifier(), ThreadUtils.getThreadRunner(), MobileAdsInfoStore.getInstance(), Settings.getInstance(), Configuration.getInstance(), new MobileAdsLoggerFactory(), new SystemTime(), new AdRequest.AdRequestBuilder(), new PermissionChecker(), new ViewabilityJavascriptFetcherListener());
    }

    AdLoadStarter(AdLoader.AdLoaderFactory adLoaderFactory, AdvertisingIdentifier advertisingIdentifier, ThreadUtils.ThreadRunner threadRunner, MobileAdsInfoStore mobileAdsInfoStore, Settings settings, Configuration configuration, MobileAdsLoggerFactory mobileAdsLoggerFactory, SystemTime systemTime, AdRequest.AdRequestBuilder adRequestBuilder, PermissionChecker permissionChecker, ViewabilityJavascriptFetcherListener viewabilityJavascriptFetcherListener) {
        this.adLoaderFactory = adLoaderFactory;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        this.advertisingIdentifier = advertisingIdentifier;
        this.infoStore = mobileAdsInfoStore;
        this.settings = settings;
        this.configuration = configuration;
        this.threadRunner = threadRunner;
        this.systemTime = systemTime;
        this.adRequestBuilder = adRequestBuilder;
        this.permissionChecker = permissionChecker;
        this.viewabilityJavascriptFetcherListener = viewabilityJavascriptFetcherListener;
    }

    public void loadAds(final int i, final AdTargetingOptions adTargetingOptions, AdSlot... adSlotArr) {
        if (!isNoRetry(adSlotArr)) {
            if (adTargetingOptions != null && adTargetingOptions.isGeoLocationEnabled() && !this.permissionChecker.hasLocationPermission(this.infoStore.getApplicationContext())) {
                this.logger.w("Geolocation for ad targeting has been disabled. To enable geolocation, add at least one of the following permissions to the app manifest: 1. ACCESS_FINE_LOCATION; 2. ACCESS_COARSE_LOCATION.");
            }
            long nanoTime = this.systemTime.nanoTime();
            final ArrayList arrayList = new ArrayList();
            for (AdSlot adSlot : adSlotArr) {
                if (adSlot.prepareForAdLoad(nanoTime)) {
                    arrayList.add(adSlot);
                }
            }
            this.configuration.queueConfigurationListener(this.viewabilityJavascriptFetcherListener);
            new StartUpWaiter(this.settings, this.configuration) { // from class: com.amazon.device.ads.AdLoadStarter.1
                @Override // com.amazon.device.ads.StartUpWaiter
                protected void startUpReady() {
                    AdLoadStarter.this.infoStore.register();
                    AdLoadStarter.this.beginFetchAds(i, adTargetingOptions, arrayList);
                }

                @Override // com.amazon.device.ads.StartUpWaiter
                protected void startUpFailed() {
                    AdLoadStarter.this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.AdLoadStarter.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AdLoadStarter.this.failAds(new AdError(AdError.ErrorCode.NETWORK_ERROR, "The configuration was unable to be loaded"), arrayList);
                        }
                    }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.MAIN_THREAD);
                }
            }.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"UseSparseArrays"})
    public void beginFetchAds(int i, AdTargetingOptions adTargetingOptions, List<AdSlot> list) {
        AdvertisingIdentifier.Info advertisingIdentifierInfo = this.advertisingIdentifier.getAdvertisingIdentifierInfo();
        if (!advertisingIdentifierInfo.canDo()) {
            failAds(new AdError(AdError.ErrorCode.INTERNAL_ERROR, "An internal request was not made on a background thread."), list);
            return;
        }
        if (adTargetingOptions == null) {
            adTargetingOptions = new AdTargetingOptions();
        }
        AdRequest build = this.adRequestBuilder.withAdTargetingOptions(adTargetingOptions).withAdvertisingIdentifierInfo(advertisingIdentifierInfo).build();
        HashMap hashMap = new HashMap();
        int i2 = 1;
        Iterator<AdSlot> it = list.iterator();
        while (true) {
            int i3 = i2;
            if (!it.hasNext()) {
                break;
            }
            AdSlot next = it.next();
            if (next.isValid()) {
                next.setSlotNumber(i3);
                hashMap.put(Integer.valueOf(i3), next);
                build.putSlot(next);
                i2 = i3 + 1;
            } else {
                i2 = i3;
            }
        }
        if (hashMap.size() > 0) {
            AdLoader createAdLoader = this.adLoaderFactory.createAdLoader(build, hashMap);
            createAdLoader.setTimeout(i);
            createAdLoader.beginFetchAd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void failAds(AdError adError, List<AdSlot> list) {
        int i;
        int i2 = 0;
        for (AdSlot adSlot : list) {
            if (adSlot.getSlotNumber() != -1) {
                adSlot.adFailed(adError);
                i = i2 + 1;
            } else {
                i = i2;
            }
            i2 = i;
        }
        if (i2 > 0) {
            this.logger.e("%s; code: %s", adError.getMessage(), adError.getCode());
        }
    }

    private boolean isNoRetry(AdSlot[] adSlotArr) {
        String str;
        AdError.ErrorCode errorCode;
        int noRetryTtlRemainingMillis = this.infoStore.getNoRetryTtlRemainingMillis();
        if (noRetryTtlRemainingMillis > 0) {
            int i = noRetryTtlRemainingMillis / 1000;
            if (this.infoStore.getIsAppDisabled()) {
                str = "SDK Message: " + AdLoader.DISABLED_APP_SERVER_MESSAGE;
                errorCode = AdError.ErrorCode.INTERNAL_ERROR;
            } else {
                str = "SDK Message: no results. Try again in " + i + " seconds.";
                errorCode = AdError.ErrorCode.NO_FILL;
            }
            failAds(new AdError(errorCode, str), new ArrayList(Arrays.asList(adSlotArr)));
            return true;
        }
        return false;
    }
}
