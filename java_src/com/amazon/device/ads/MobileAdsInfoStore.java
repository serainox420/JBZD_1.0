package com.amazon.device.ads;

import android.content.Context;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MobileAdsInfoStore {
    private static MobileAdsInfoStore instance = new MobileAdsInfoStore(Settings.getInstance(), DebugProperties.getInstance());
    private AppInfo appInfo;
    protected Context applicationContext;
    private boolean contextReceived;
    private final DebugProperties debugProperties;
    private DeviceInfo deviceInfo;
    private File filesDirectory;
    private boolean isRegistered;
    private long noRetryTtlExpiresMillis;
    private int noRetryTtlMillis;
    private final Settings settings;
    private SISRegistration sisRegistration;
    private boolean isAppDisabled = false;
    private RegistrationInfo registrationInfo = new RegistrationInfo();

    protected MobileAdsInfoStore(Settings settings, DebugProperties debugProperties) {
        this.settings = settings;
        this.debugProperties = debugProperties;
    }

    public static MobileAdsInfoStore getInstance() {
        return instance;
    }

    static void setMobileAdsInfoStore(MobileAdsInfoStore mobileAdsInfoStore) {
        instance = mobileAdsInfoStore;
    }

    public AppInfo getAppInfo() {
        return this.appInfo;
    }

    public DeviceInfo getDeviceInfo() {
        return this.deviceInfo;
    }

    public RegistrationInfo getRegistrationInfo() {
        return this.registrationInfo;
    }

    public synchronized void contextReceived(Context context) {
        if (!this.contextReceived) {
            this.contextReceived = true;
            setApplicationContextFromContext(context);
            setFilesDirectory(context);
            this.settings.contextReceived(context);
            createAppInfo(context);
            this.deviceInfo = createDeviceInfo(context);
            createSISRegistration();
        }
    }

    public boolean isContextReceived() {
        return this.contextReceived;
    }

    protected void setFilesDirectory(Context context) {
        this.filesDirectory = context.getFilesDir();
    }

    protected void createAppInfo(Context context) {
        this.appInfo = new AppInfo(context);
    }

    protected DeviceInfo createDeviceInfo(Context context) {
        return new DeviceInfo(context, new UserAgentManager());
    }

    public void register() {
        getSISRegistration().registerApp();
        this.isRegistered = true;
    }

    protected void createSISRegistration() {
        this.sisRegistration = new SISRegistration();
    }

    public SISRegistration getSISRegistration() {
        return this.sisRegistration;
    }

    public boolean isRegistered() {
        return this.isRegistered;
    }

    public int getNoRetryTtlRemainingMillis() {
        if (this.noRetryTtlMillis == 0 || this.noRetryTtlExpiresMillis == 0) {
            return 0;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis >= this.noRetryTtlExpiresMillis) {
            this.noRetryTtlMillis = 0;
            this.noRetryTtlExpiresMillis = 0L;
            return 0;
        }
        return (int) (this.noRetryTtlExpiresMillis - currentTimeMillis);
    }

    public void setNoRetryTtl(int i) {
        int intValue = this.debugProperties.getDebugPropertyAsInteger(DebugProperties.DEBUG_NORETRYTTL_MAX, 300000).intValue();
        if (intValue < i) {
            i = intValue;
        }
        if (i == 0) {
            this.noRetryTtlMillis = 0;
            this.noRetryTtlExpiresMillis = 0L;
            return;
        }
        this.noRetryTtlMillis = i * 1000;
        this.noRetryTtlExpiresMillis = System.currentTimeMillis() + this.noRetryTtlMillis;
    }

    public boolean getIsAppDisabled() {
        return this.isAppDisabled;
    }

    public void setIsAppDisabled(boolean z) {
        this.isAppDisabled = z;
    }

    public File getFilesDir() {
        return this.filesDirectory;
    }

    public Context getApplicationContext() {
        return this.applicationContext;
    }

    protected void setApplicationContextFromContext(Context context) {
        this.applicationContext = context.getApplicationContext();
    }
}
