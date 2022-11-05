.class Lcom/amazon/device/ads/SISRegistration;
.super Ljava/lang/Object;
.source "SISRegistration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/SISRegistration$RegisterEventsSISRequestorCallback;
    }
.end annotation


# static fields
.field protected static final DEFAULT_SIS_CHECKIN_INTERVAL:J = 0x5265c00L

.field private static final LOGTAG:Ljava/lang/String;

.field private static final SIS_LAST_CHECKIN_PREF_NAME:Ljava/lang/String; = "amzn-ad-sis-last-checkin"

.field private static final singleThreadScheduler:Lcom/amazon/device/ads/ThreadUtils$SingleThreadScheduler;


# instance fields
.field private final advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

.field private final appEventRegistrationHandler:Lcom/amazon/device/ads/AppEventRegistrationHandler;

.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final executor:Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final settings:Lcom/amazon/device/ads/Settings;

.field private final sisRequestFactory:Lcom/amazon/device/ads/SISRequest$SISRequestFactory;

.field private final sisRequestorFactory:Lcom/amazon/device/ads/SISRequestor$SISRequestorFactory;

.field private final systemTime:Lcom/amazon/device/ads/SystemTime;

.field private final threadVerify:Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/amazon/device/ads/SISRegistration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/SISRegistration;->LOGTAG:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/amazon/device/ads/ThreadUtils$SingleThreadScheduler;

    invoke-direct {v0}, Lcom/amazon/device/ads/ThreadUtils$SingleThreadScheduler;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/SISRegistration;->singleThreadScheduler:Lcom/amazon/device/ads/ThreadUtils$SingleThreadScheduler;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .prologue
    .line 46
    new-instance v1, Lcom/amazon/device/ads/SISRequest$SISRequestFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/SISRequest$SISRequestFactory;-><init>()V

    new-instance v2, Lcom/amazon/device/ads/SISRequestor$SISRequestorFactory;

    invoke-direct {v2}, Lcom/amazon/device/ads/SISRequestor$SISRequestorFactory;-><init>()V

    new-instance v3, Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-direct {v3}, Lcom/amazon/device/ads/AdvertisingIdentifier;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v4

    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v5

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v6

    invoke-static {}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->getInstance()Lcom/amazon/device/ads/AppEventRegistrationHandler;

    move-result-object v7

    new-instance v8, Lcom/amazon/device/ads/SystemTime;

    invoke-direct {v8}, Lcom/amazon/device/ads/SystemTime;-><init>()V

    sget-object v9, Lcom/amazon/device/ads/SISRegistration;->singleThreadScheduler:Lcom/amazon/device/ads/ThreadUtils$SingleThreadScheduler;

    new-instance v10, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;

    invoke-direct {v10}, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;-><init>()V

    new-instance v11, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v11}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v12

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/amazon/device/ads/SISRegistration;-><init>(Lcom/amazon/device/ads/SISRequest$SISRequestFactory;Lcom/amazon/device/ads/SISRequestor$SISRequestorFactory;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/AppEventRegistrationHandler;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/DebugProperties;)V

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/SISRequest$SISRequestFactory;Lcom/amazon/device/ads/SISRequestor$SISRequestorFactory;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/AppEventRegistrationHandler;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/DebugProperties;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/amazon/device/ads/SISRegistration;->sisRequestFactory:Lcom/amazon/device/ads/SISRequest$SISRequestFactory;

    .line 73
    iput-object p2, p0, Lcom/amazon/device/ads/SISRegistration;->sisRequestorFactory:Lcom/amazon/device/ads/SISRequestor$SISRequestorFactory;

    .line 74
    iput-object p3, p0, Lcom/amazon/device/ads/SISRegistration;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    .line 75
    iput-object p4, p0, Lcom/amazon/device/ads/SISRegistration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 76
    iput-object p5, p0, Lcom/amazon/device/ads/SISRegistration;->configuration:Lcom/amazon/device/ads/Configuration;

    .line 77
    iput-object p6, p0, Lcom/amazon/device/ads/SISRegistration;->settings:Lcom/amazon/device/ads/Settings;

    .line 78
    iput-object p7, p0, Lcom/amazon/device/ads/SISRegistration;->appEventRegistrationHandler:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    .line 79
    iput-object p8, p0, Lcom/amazon/device/ads/SISRegistration;->systemTime:Lcom/amazon/device/ads/SystemTime;

    .line 80
    iput-object p9, p0, Lcom/amazon/device/ads/SISRegistration;->executor:Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;

    .line 81
    iput-object p10, p0, Lcom/amazon/device/ads/SISRegistration;->threadVerify:Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;

    .line 82
    sget-object v0, Lcom/amazon/device/ads/SISRegistration;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p11, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/SISRegistration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 83
    iput-object p12, p0, Lcom/amazon/device/ads/SISRegistration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/SISRegistration;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/amazon/device/ads/SISRegistration;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    return-object v0
.end method

.method private getLogger()Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method private putLastSISCheckin(J)V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "amzn-ad-sis-last-checkin"

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/device/ads/Settings;->putLong(Ljava/lang/String;J)V

    .line 224
    return-void
.end method


# virtual methods
.method protected canRegister(J)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/amazon/device/ads/SISRegistration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v1

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/SISRegistration;->exceededCheckinInterval(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->shouldGetNewSISDeviceIdentifer()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->shouldGetNewSISRegistration()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/device/ads/SISRegistration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v2, "debug.shouldRegisterSIS"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected exceededCheckinInterval(J)Z
    .locals 7

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/amazon/device/ads/SISRegistration;->getLastSISCheckin()J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/amazon/device/ads/SISRegistration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v3, "debug.sisCheckinInterval"

    const-wide/32 v4, 0x5265c00

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLastSISCheckin()J
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "amzn-ad-sis-last-checkin"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected register(Lcom/amazon/device/ads/AdvertisingIdentifier;)V
    .locals 5

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration;->sisRequestFactory:Lcom/amazon/device/ads/SISRequest$SISRequestFactory;

    sget-object v1, Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;->GENERATE_DID:Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/SISRequest$SISRequestFactory;->createDeviceRequest(Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;Lcom/amazon/device/ads/AdvertisingIdentifier;)Lcom/amazon/device/ads/SISDeviceRequest;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/amazon/device/ads/SISRegistration$RegisterEventsSISRequestorCallback;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/SISRegistration$RegisterEventsSISRequestorCallback;-><init>(Lcom/amazon/device/ads/SISRegistration;)V

    .line 206
    iget-object v2, p0, Lcom/amazon/device/ads/SISRegistration;->sisRequestorFactory:Lcom/amazon/device/ads/SISRequestor$SISRequestorFactory;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/amazon/device/ads/SISRequest;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/amazon/device/ads/SISRequestor$SISRequestorFactory;->createSISRequestor(Lcom/amazon/device/ads/SISRequestorCallback;[Lcom/amazon/device/ads/SISRequest;)Lcom/amazon/device/ads/SISRequestor;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/amazon/device/ads/SISRequestor;->startCallSIS()V

    .line 208
    return-void
.end method

.method public registerApp()V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/amazon/device/ads/SISRegistration$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/SISRegistration$1;-><init>(Lcom/amazon/device/ads/SISRegistration;)V

    .line 121
    iget-object v1, p0, Lcom/amazon/device/ads/SISRegistration;->executor:Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/ThreadUtils$RunnableExecutor;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method registerAppWorker()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration;->systemTime:Lcom/amazon/device/ads/SystemTime;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SystemTime;->currentTimeMillis()J

    move-result-wide v0

    .line 168
    iget-object v2, p0, Lcom/amazon/device/ads/SISRegistration;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/SISRegistration;->canRegister(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/SISRegistration;->putLastSISCheckin(J)V

    .line 181
    invoke-virtual {p0}, Lcom/amazon/device/ads/SISRegistration;->shouldUpdateDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/SISRegistration;->updateDeviceInfo(Lcom/amazon/device/ads/AdvertisingIdentifier;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/SISRegistration;->register(Lcom/amazon/device/ads/AdvertisingIdentifier;)V

    goto :goto_0
.end method

.method protected registerEvents()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration;->threadVerify:Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ThreadUtils$ThreadVerify;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/amazon/device/ads/SISRegistration;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "Registering events must be done on a background thread."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->hasSISDeviceIdentifier()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/amazon/device/ads/SISRegistration;->appEventRegistrationHandler:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->getAppEventsJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    .line 239
    if-eqz v1, :cond_0

    .line 241
    iget-object v2, p0, Lcom/amazon/device/ads/SISRegistration;->sisRequestFactory:Lcom/amazon/device/ads/SISRequest$SISRequestFactory;

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/ads/SISRequest$SISRequestFactory;->createRegisterEventRequest(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Lorg/json/JSONArray;)Lcom/amazon/device/ads/SISRegisterEventRequest;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/amazon/device/ads/SISRegistration;->sisRequestorFactory:Lcom/amazon/device/ads/SISRequestor$SISRequestorFactory;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/device/ads/SISRequest;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/SISRequestor$SISRequestorFactory;->createSISRequestor([Lcom/amazon/device/ads/SISRequest;)Lcom/amazon/device/ads/SISRequestor;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/amazon/device/ads/SISRequestor;->startCallSIS()V

    goto :goto_0
.end method

.method protected shouldUpdateDeviceInfo()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/RegistrationInfo;->isRegisteredWithSIS()Z

    move-result v0

    return v0
.end method

.method protected updateDeviceInfo(Lcom/amazon/device/ads/AdvertisingIdentifier;)V
    .locals 5

    .prologue
    .line 211
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration;->sisRequestFactory:Lcom/amazon/device/ads/SISRequest$SISRequestFactory;

    sget-object v1, Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;->UPDATE_DEVICE_INFO:Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/SISRequest$SISRequestFactory;->createDeviceRequest(Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;Lcom/amazon/device/ads/AdvertisingIdentifier;)Lcom/amazon/device/ads/SISDeviceRequest;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/amazon/device/ads/SISRegistration$RegisterEventsSISRequestorCallback;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/SISRegistration$RegisterEventsSISRequestorCallback;-><init>(Lcom/amazon/device/ads/SISRegistration;)V

    .line 213
    iget-object v2, p0, Lcom/amazon/device/ads/SISRegistration;->sisRequestorFactory:Lcom/amazon/device/ads/SISRequestor$SISRequestorFactory;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/amazon/device/ads/SISRequest;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/amazon/device/ads/SISRequestor$SISRequestorFactory;->createSISRequestor(Lcom/amazon/device/ads/SISRequestorCallback;[Lcom/amazon/device/ads/SISRequest;)Lcom/amazon/device/ads/SISRequestor;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/amazon/device/ads/SISRequestor;->startCallSIS()V

    .line 215
    return-void
.end method

.method waitForConfigurationThenBeginRegistration()V
    .locals 4

    .prologue
    .line 126
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 127
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 128
    iget-object v2, p0, Lcom/amazon/device/ads/SISRegistration;->configuration:Lcom/amazon/device/ads/Configuration;

    new-instance v3, Lcom/amazon/device/ads/SISRegistration$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/amazon/device/ads/SISRegistration$2;-><init>(Lcom/amazon/device/ads/SISRegistration;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/Configuration;->queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;)V

    .line 147
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/amazon/device/ads/SISRegistration;->registerAppWorker()V

    .line 155
    :cond_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method
