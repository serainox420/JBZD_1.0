package com.amazon.device.ads;

import com.amazon.device.ads.AdvertisingIdentifier;
import com.amazon.device.ads.Configuration;
import com.amazon.device.ads.SISRequest;
import com.amazon.device.ads.SISRequestor;
import com.amazon.device.ads.ThreadUtils;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SISRegistration {
    protected static final long DEFAULT_SIS_CHECKIN_INTERVAL = 86400000;
    private static final String SIS_LAST_CHECKIN_PREF_NAME = "amzn-ad-sis-last-checkin";
    private final AdvertisingIdentifier advertisingIdentifier;
    private final AppEventRegistrationHandler appEventRegistrationHandler;
    private final Configuration configuration;
    private final DebugProperties debugProperties;
    private final ThreadUtils.RunnableExecutor executor;
    private final MobileAdsInfoStore infoStore;
    private final MobileAdsLogger logger;
    private final Settings settings;
    private final SISRequest.SISRequestFactory sisRequestFactory;
    private final SISRequestor.SISRequestorFactory sisRequestorFactory;
    private final SystemTime systemTime;
    private final ThreadUtils.ThreadVerify threadVerify;
    private static final String LOGTAG = SISRegistration.class.getSimpleName();
    private static final ThreadUtils.SingleThreadScheduler singleThreadScheduler = new ThreadUtils.SingleThreadScheduler();

    public SISRegistration() {
        this(new SISRequest.SISRequestFactory(), new SISRequestor.SISRequestorFactory(), new AdvertisingIdentifier(), MobileAdsInfoStore.getInstance(), Configuration.getInstance(), Settings.getInstance(), AppEventRegistrationHandler.getInstance(), new SystemTime(), singleThreadScheduler, new ThreadUtils.ThreadVerify(), new MobileAdsLoggerFactory(), DebugProperties.getInstance());
    }

    SISRegistration(SISRequest.SISRequestFactory sISRequestFactory, SISRequestor.SISRequestorFactory sISRequestorFactory, AdvertisingIdentifier advertisingIdentifier, MobileAdsInfoStore mobileAdsInfoStore, Configuration configuration, Settings settings, AppEventRegistrationHandler appEventRegistrationHandler, SystemTime systemTime, ThreadUtils.RunnableExecutor runnableExecutor, ThreadUtils.ThreadVerify threadVerify, MobileAdsLoggerFactory mobileAdsLoggerFactory, DebugProperties debugProperties) {
        this.sisRequestFactory = sISRequestFactory;
        this.sisRequestorFactory = sISRequestorFactory;
        this.advertisingIdentifier = advertisingIdentifier;
        this.infoStore = mobileAdsInfoStore;
        this.configuration = configuration;
        this.settings = settings;
        this.appEventRegistrationHandler = appEventRegistrationHandler;
        this.systemTime = systemTime;
        this.executor = runnableExecutor;
        this.threadVerify = threadVerify;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        this.debugProperties = debugProperties;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MobileAdsLogger getLogger() {
        return this.logger;
    }

    protected boolean canRegister(long j) {
        RegistrationInfo registrationInfo = this.infoStore.getRegistrationInfo();
        return exceededCheckinInterval(j) || registrationInfo.shouldGetNewSISDeviceIdentifer() || registrationInfo.shouldGetNewSISRegistration() || this.debugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_SHOULD_REGISTER_SIS, false).booleanValue();
    }

    protected boolean shouldUpdateDeviceInfo() {
        return this.infoStore.getRegistrationInfo().isRegisteredWithSIS();
    }

    public void registerApp() {
        this.executor.execute(new Runnable() { // from class: com.amazon.device.ads.SISRegistration.1
            @Override // java.lang.Runnable
            public void run() {
                SISRegistration.this.waitForConfigurationThenBeginRegistration();
            }
        });
    }

    void waitForConfigurationThenBeginRegistration() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.configuration.queueConfigurationListener(new Configuration.ConfigurationListener() { // from class: com.amazon.device.ads.SISRegistration.2
            @Override // com.amazon.device.ads.Configuration.ConfigurationListener
            public void onConfigurationReady() {
                atomicBoolean.set(true);
                countDownLatch.countDown();
            }

            @Override // com.amazon.device.ads.Configuration.ConfigurationListener
            public void onConfigurationFailure() {
                SISRegistration.this.getLogger().w("Configuration fetching failed so device registration will not proceed.");
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
        }
        if (atomicBoolean.get()) {
            registerAppWorker();
        }
    }

    void registerAppWorker() {
        long currentTimeMillis = this.systemTime.currentTimeMillis();
        if (this.advertisingIdentifier.getAdvertisingIdentifierInfo().canDo() && canRegister(currentTimeMillis)) {
            putLastSISCheckin(currentTimeMillis);
            if (shouldUpdateDeviceInfo()) {
                updateDeviceInfo(this.advertisingIdentifier);
            } else {
                register(this.advertisingIdentifier);
            }
        }
    }

    protected boolean exceededCheckinInterval(long j) {
        return j - getLastSISCheckin() > this.debugProperties.getDebugPropertyAsLong(DebugProperties.DEBUG_SIS_CHECKIN_INTERVAL, Long.valueOf((long) DEFAULT_SIS_CHECKIN_INTERVAL)).longValue();
    }

    protected void register(AdvertisingIdentifier advertisingIdentifier) {
        SISDeviceRequest createDeviceRequest = this.sisRequestFactory.createDeviceRequest(SISRequest.SISDeviceRequestType.GENERATE_DID, advertisingIdentifier);
        this.sisRequestorFactory.createSISRequestor(new RegisterEventsSISRequestorCallback(this), createDeviceRequest).startCallSIS();
    }

    protected void updateDeviceInfo(AdvertisingIdentifier advertisingIdentifier) {
        SISDeviceRequest createDeviceRequest = this.sisRequestFactory.createDeviceRequest(SISRequest.SISDeviceRequestType.UPDATE_DEVICE_INFO, advertisingIdentifier);
        this.sisRequestorFactory.createSISRequestor(new RegisterEventsSISRequestorCallback(this), createDeviceRequest).startCallSIS();
    }

    protected long getLastSISCheckin() {
        return this.settings.getLong(SIS_LAST_CHECKIN_PREF_NAME, 0L);
    }

    private void putLastSISCheckin(long j) {
        this.settings.putLong(SIS_LAST_CHECKIN_PREF_NAME, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void registerEvents() {
        JSONArray appEventsJSONArray;
        if (this.threadVerify.isOnMainThread()) {
            getLogger().e("Registering events must be done on a background thread.");
            return;
        }
        AdvertisingIdentifier.Info advertisingIdentifierInfo = this.advertisingIdentifier.getAdvertisingIdentifierInfo();
        if (advertisingIdentifierInfo.hasSISDeviceIdentifier() && (appEventsJSONArray = this.appEventRegistrationHandler.getAppEventsJSONArray()) != null) {
            this.sisRequestorFactory.createSISRequestor(this.sisRequestFactory.createRegisterEventRequest(advertisingIdentifierInfo, appEventsJSONArray)).startCallSIS();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class RegisterEventsSISRequestorCallback implements SISRequestorCallback {
        private final SISRegistration sisRegistration;

        public RegisterEventsSISRequestorCallback(SISRegistration sISRegistration) {
            this.sisRegistration = sISRegistration;
        }

        @Override // com.amazon.device.ads.SISRequestorCallback
        public void onSISCallComplete() {
            this.sisRegistration.registerEvents();
        }
    }
}
