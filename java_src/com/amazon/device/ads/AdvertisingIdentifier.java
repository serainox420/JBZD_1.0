package com.amazon.device.ads;

import com.amazon.device.ads.GooglePlayServices;
/* loaded from: classes.dex */
class AdvertisingIdentifier {
    private static final String GPS_ADVERTISING_IDENTIFIER_SETTING = "gpsAdId";
    private static final String LOGTAG = AdvertisingIdentifier.class.getSimpleName();
    private static final String TRANSITION_MIGRATE = "migrate";
    private static final String TRANSITION_RESET = "reset";
    private static final String TRANSITION_REVERT = "revert";
    private static final String TRANSITION_SETTING = "adIdTransistion";
    private final DebugProperties debugProperties;
    private GooglePlayServices.AdvertisingInfo gpsAdvertisingInfo;
    private final MobileAdsInfoStore infoStore;
    private final MobileAdsLogger logger;
    private final Settings settings;
    private boolean shouldSetCurrentAdvertisingIdentifier;

    public AdvertisingIdentifier() {
        this(Settings.getInstance(), MobileAdsInfoStore.getInstance(), new MobileAdsLoggerFactory(), DebugProperties.getInstance());
    }

    AdvertisingIdentifier(Settings settings, MobileAdsInfoStore mobileAdsInfoStore, MobileAdsLoggerFactory mobileAdsLoggerFactory, DebugProperties debugProperties) {
        this.shouldSetCurrentAdvertisingIdentifier = true;
        this.settings = settings;
        this.infoStore = mobileAdsInfoStore;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        this.debugProperties = debugProperties;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getAndClearTransition() {
        String string = this.settings.getString(TRANSITION_SETTING, null);
        this.settings.remove(TRANSITION_SETTING);
        return string;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdvertisingIdentifier setShouldSetCurrentAdvertisingIdentifier(boolean z) {
        this.shouldSetCurrentAdvertisingIdentifier = z;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Info getAdvertisingIdentifierInfo() {
        if (ThreadUtils.isOnMainThread()) {
            this.logger.e("You must obtain the advertising indentifier information on a background thread.");
            return new Info(this.debugProperties).setCanDo(false);
        }
        fetchGooglePlayServicesAdvertisingIdentifierInfo();
        if (this.shouldSetCurrentAdvertisingIdentifier) {
            determineTransition();
        }
        Info info = new Info(this.debugProperties);
        if (getGPSAdvertisingInfo().hasAdvertisingIdentifier()) {
            info.setAdvertisingIdentifier(getGPSAdvertisingInfo().getAdvertisingIdentifier());
            info.setLimitAdTrackingEnabled(getGPSAdvertisingInfo().isLimitAdTrackingEnabled());
            if (this.shouldSetCurrentAdvertisingIdentifier) {
                setCurrentGPSAID(getGPSAdvertisingInfo().getAdvertisingIdentifier());
            }
        }
        RegistrationInfo registrationInfo = this.infoStore.getRegistrationInfo();
        if (registrationInfo.isAdIdCurrent(info)) {
            info.setSISDeviceIdentifier(registrationInfo.getAdId());
            return info;
        }
        registrationInfo.requestNewSISDeviceIdentifier();
        return info;
    }

    private void determineTransition() {
        String str = null;
        if (isTransitionMigrated()) {
            str = TRANSITION_MIGRATE;
        } else if (isTransitionReset()) {
            str = TRANSITION_RESET;
        } else if (isTransitionReverted()) {
            str = TRANSITION_REVERT;
        }
        if (str != null) {
            setTransition(str);
        } else {
            this.logger.d("No transition detected.");
        }
    }

    private void setTransition(String str) {
        this.logger.d("Transition: %s", str);
        this.settings.putString(TRANSITION_SETTING, str);
    }

    protected void fetchGooglePlayServicesAdvertisingIdentifierInfo() {
        this.gpsAdvertisingInfo = new GooglePlayServices().getAdvertisingIdentifierInfo();
    }

    protected GooglePlayServices.AdvertisingInfo getGPSAdvertisingInfo() {
        return this.gpsAdvertisingInfo;
    }

    private boolean isTransitionMigrated() {
        return this.infoStore.getRegistrationInfo().hasAdId() && RegistrationInfo.isAdIdOriginatedFromNonAdvertisingIdentifier() && !hasCurrentGPSAID() && getGPSAdvertisingInfo().hasAdvertisingIdentifier();
    }

    private boolean isTransitionReset() {
        return hasCurrentGPSAID() && getGPSAdvertisingInfo().hasAdvertisingIdentifier() && !getCurrentGPSAID().equals(getGPSAdvertisingInfo().getAdvertisingIdentifier());
    }

    private boolean isTransitionReverted() {
        return hasCurrentGPSAID() && !getGPSAdvertisingInfo().hasAdvertisingIdentifier();
    }

    private void setCurrentGPSAID(String str) {
        this.settings.putString(GPS_ADVERTISING_IDENTIFIER_SETTING, str);
    }

    private String getCurrentGPSAID() {
        return this.settings.getString(GPS_ADVERTISING_IDENTIFIER_SETTING, "");
    }

    private boolean hasCurrentGPSAID() {
        return !StringUtils.isNullOrEmpty(getCurrentGPSAID());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Info {
        private String advertisingIdentifier;
        private boolean canDo;
        private final DebugProperties debugProperties;
        private boolean limitAdTrackingEnabled;
        private String sisDeviceIdentifier;

        private Info(DebugProperties debugProperties) {
            this.debugProperties = debugProperties;
            this.canDo = true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean canDo() {
            return this.canDo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Info setCanDo(boolean z) {
            this.canDo = z;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getAdvertisingIdentifier() {
            return this.debugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_IDFA, this.advertisingIdentifier);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Info setAdvertisingIdentifier(String str) {
            this.advertisingIdentifier = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean hasAdvertisingIdentifier() {
            return !StringUtils.isNullOrEmpty(getAdvertisingIdentifier());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isLimitAdTrackingEnabled() {
            return this.debugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_OPT_OUT, Boolean.valueOf(this.limitAdTrackingEnabled)).booleanValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Info setLimitAdTrackingEnabled(boolean z) {
            this.limitAdTrackingEnabled = z;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getSISDeviceIdentifier() {
            return this.debugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_ADID, this.sisDeviceIdentifier);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean hasSISDeviceIdentifier() {
            return getSISDeviceIdentifier() != null;
        }

        Info setSISDeviceIdentifier(String str) {
            this.sisDeviceIdentifier = str;
            return this;
        }
    }
}
