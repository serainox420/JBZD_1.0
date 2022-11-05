package com.amazon.device.ads;
/* loaded from: classes.dex */
class GooglePlayServices {
    private static final String GPS_AVAILABLE_SETTING = "gps-available";
    private static final String LOGTAG = GooglePlayServices.class.getSimpleName();
    private final MobileAdsLogger logger;
    private final ReflectionUtils reflectionUtils;

    public GooglePlayServices() {
        this(new MobileAdsLoggerFactory(), new ReflectionUtils());
    }

    GooglePlayServices(MobileAdsLoggerFactory mobileAdsLoggerFactory, ReflectionUtils reflectionUtils) {
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        this.reflectionUtils = reflectionUtils;
    }

    public AdvertisingInfo getAdvertisingIdentifierInfo() {
        if (!isGPSAvailable()) {
            this.logger.v("The Google Play Services Advertising Identifier feature is not available.");
            return AdvertisingInfo.createNotAvailable();
        } else if (!isGPSAvailableSet() && !this.reflectionUtils.isClassAvailable("com.google.android.gms.ads.identifier.AdvertisingIdClient")) {
            this.logger.v("The Google Play Services Advertising Identifier feature is not available.");
            setGooglePlayServicesAvailable(false);
            return AdvertisingInfo.createNotAvailable();
        } else {
            AdvertisingInfo advertisingIdentifierInfo = createGooglePlayServicesAdapter().getAdvertisingIdentifierInfo();
            setGooglePlayServicesAvailable(advertisingIdentifierInfo.isGPSAvailable());
            return advertisingIdentifierInfo;
        }
    }

    protected GooglePlayServicesAdapter createGooglePlayServicesAdapter() {
        return new GooglePlayServicesAdapter();
    }

    private boolean isGPSAvailable() {
        return Settings.getInstance().getBoolean(GPS_AVAILABLE_SETTING, true);
    }

    private boolean isGPSAvailableSet() {
        return Settings.getInstance().containsKey(GPS_AVAILABLE_SETTING);
    }

    private void setGooglePlayServicesAvailable(boolean z) {
        Settings.getInstance().putTransientBoolean(GPS_AVAILABLE_SETTING, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class AdvertisingInfo {
        private String advertisingIdentifier;
        private boolean gpsAvailable = true;
        private boolean limitAdTrackingEnabled;

        /* JADX INFO: Access modifiers changed from: package-private */
        public static AdvertisingInfo createNotAvailable() {
            return new AdvertisingInfo().setGPSAvailable(false);
        }

        boolean isGPSAvailable() {
            return this.gpsAvailable;
        }

        private AdvertisingInfo setGPSAvailable(boolean z) {
            this.gpsAvailable = z;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getAdvertisingIdentifier() {
            return this.advertisingIdentifier;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public AdvertisingInfo setAdvertisingIdentifier(String str) {
            this.advertisingIdentifier = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean hasAdvertisingIdentifier() {
            return getAdvertisingIdentifier() != null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isLimitAdTrackingEnabled() {
            return this.limitAdTrackingEnabled;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public AdvertisingInfo setLimitAdTrackingEnabled(boolean z) {
            this.limitAdTrackingEnabled = z;
            return this;
        }
    }
}
