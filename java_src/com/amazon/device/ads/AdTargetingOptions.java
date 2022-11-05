package com.amazon.device.ads;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
/* loaded from: classes.dex */
public class AdTargetingOptions {
    private static final boolean DEFAULT_DISPLAY_ENABLED = true;
    private static final long DEFAULT_FLOOR_PRICE = 0;
    private static final boolean DEFAULT_GEOTARGETING_ENABLED = false;
    private static final String LOGTAG = AdTargetingOptions.class.getSimpleName();
    private final Map<String, String> advanced;
    private boolean displayEnabled;
    private boolean enableGeoTargeting;
    private long floorPrice;
    private final HashSet<String> internalPublisherKeywords;
    private final MobileAdsLogger logger;
    private boolean videoEnabled;
    private final boolean videoEnabledSettable;

    public AdTargetingOptions() {
        this(new AndroidBuildInfo(), new MobileAdsLoggerFactory());
    }

    AdTargetingOptions(AndroidBuildInfo androidBuildInfo, MobileAdsLoggerFactory mobileAdsLoggerFactory) {
        this.floorPrice = 0L;
        this.enableGeoTargeting = false;
        this.displayEnabled = true;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        this.advanced = new HashMap();
        this.videoEnabledSettable = isVideoEnabledSettable(androidBuildInfo);
        this.videoEnabled = this.videoEnabledSettable;
        this.internalPublisherKeywords = new HashSet<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdTargetingOptions copy() {
        AdTargetingOptions enableDisplayAds = new AdTargetingOptions().enableGeoLocation(this.enableGeoTargeting).setFloorPrice(this.floorPrice).enableDisplayAds(this.displayEnabled);
        if (this.videoEnabledSettable) {
            enableDisplayAds.enableVideoAds(this.videoEnabled);
        }
        enableDisplayAds.advanced.putAll(this.advanced);
        enableDisplayAds.internalPublisherKeywords.addAll(this.internalPublisherKeywords);
        return enableDisplayAds;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<String, String> getCopyOfAdvancedOptions() {
        return new HashMap<>(this.advanced);
    }

    private static boolean isVideoEnabledSettable(AndroidBuildInfo androidBuildInfo) {
        return AndroidTargetUtils.isAtLeastAndroidAPI(androidBuildInfo, 14);
    }

    public AdTargetingOptions setFloorPrice(long j) {
        this.floorPrice = j;
        return this;
    }

    public long getFloorPrice() {
        return this.floorPrice;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasFloorPrice() {
        return this.floorPrice > 0;
    }

    public boolean containsAdvancedOption(String str) {
        return this.advanced.containsKey(str);
    }

    public String getAdvancedOption(String str) {
        return this.advanced.get(str);
    }

    public AdTargetingOptions setAdvancedOption(String str, String str2) {
        if (StringUtils.isNullOrWhiteSpace(str)) {
            throw new IllegalArgumentException("Option Key must not be null or empty string");
        }
        if (str2 != null) {
            this.advanced.put(str, str2);
        } else {
            this.advanced.remove(str);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdTargetingOptions addInternalPublisherKeyword(String str) {
        if (!StringUtils.isNullOrWhiteSpace(str)) {
            this.internalPublisherKeywords.add(str);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashSet<String> getInternalPublisherKeywords() {
        return this.internalPublisherKeywords;
    }

    public AdTargetingOptions enableGeoLocation(boolean z) {
        this.enableGeoTargeting = z;
        return this;
    }

    public boolean isGeoLocationEnabled() {
        return this.enableGeoTargeting;
    }

    AdTargetingOptions enableDisplayAds(boolean z) {
        this.displayEnabled = z;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDisplayAdsEnabled() {
        return this.displayEnabled;
    }

    AdTargetingOptions enableVideoAds(boolean z) {
        if (!this.videoEnabledSettable) {
            this.logger.w("Video is not allowed to be changed as this device does not support video.");
        } else {
            this.videoEnabled = z;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isVideoAdsEnabled() {
        return this.videoEnabled;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isVideoEnabledSettable() {
        return this.videoEnabledSettable;
    }

    public AdTargetingOptions setAge(int i) {
        this.logger.d("setAge API has been deprecated.");
        return this;
    }

    public int getAge() {
        this.logger.d("getAge API has been deprecated.");
        return Integer.MIN_VALUE;
    }
}
