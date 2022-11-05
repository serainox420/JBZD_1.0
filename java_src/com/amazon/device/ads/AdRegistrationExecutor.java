package com.amazon.device.ads;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AdRegistrationExecutor {
    private final MobileAdsInfoStore infoStore;
    private volatile boolean isInitialized;
    private final MobileAdsLogger logger;
    private final MobileAdsLoggerFactory loggerFactory;
    private final PermissionChecker permissionChecker;
    private final Settings settings;

    public AdRegistrationExecutor(String str) {
        this(str, MobileAdsInfoStore.getInstance(), Settings.getInstance(), new MobileAdsLoggerFactory(), new PermissionChecker());
    }

    AdRegistrationExecutor(String str, MobileAdsInfoStore mobileAdsInfoStore, Settings settings, MobileAdsLoggerFactory mobileAdsLoggerFactory, PermissionChecker permissionChecker) {
        this.isInitialized = false;
        this.infoStore = mobileAdsInfoStore;
        this.settings = settings;
        this.loggerFactory = mobileAdsLoggerFactory;
        this.logger = this.loggerFactory.createMobileAdsLogger(str);
        this.permissionChecker = permissionChecker;
    }

    public void setAppKey(String str) throws IllegalArgumentException {
        this.infoStore.getRegistrationInfo().putAppKey(str);
    }

    public void enableLogging(boolean z) {
        this.logger.enableLoggingWithSetterNotification(z);
    }

    public void enableTesting(boolean z) {
        this.settings.putTransientBoolean("testingEnabled", z);
        this.logger.logSetterNotification("Test mode", Boolean.valueOf(z));
    }

    public String getVersion() {
        return Version.getSDKVersion();
    }

    public void registerApp(Context context) {
        if (!this.permissionChecker.hasInternetPermission(context)) {
            this.logger.e("Network task cannot commence because the INTERNET permission is missing from the app's manifest.");
            return;
        }
        initializeAds(context);
        this.infoStore.register();
    }

    public void initializeAds(Context context) {
        if (!this.isInitialized) {
            this.infoStore.contextReceived(context);
            this.infoStore.getDeviceInfo().setUserAgentManager(new UserAgentManager());
            this.isInitialized = true;
        }
    }

    MobileAdsInfoStore getMobileAdsInfoStore() {
        return this.infoStore;
    }

    Settings getSettings() {
        return this.settings;
    }

    PermissionChecker getPermissionChecker() {
        return this.permissionChecker;
    }

    MobileAdsLogger getLogger() {
        return this.logger;
    }

    MobileAdsLoggerFactory getLoggerFactory() {
        return this.loggerFactory;
    }
}
