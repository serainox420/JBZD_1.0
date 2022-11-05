.class Lcom/amazon/device/ads/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/Configuration$ConfigurationListener;,
        Lcom/amazon/device/ads/Configuration$ConfigOption;
    }
.end annotation


# static fields
.field private static final AAX_MSDK_CONFIG_ENDPOINT:Ljava/lang/String; = "/msdk/getConfig"

.field private static final AAX_PROD_US_HOSTNAME:Ljava/lang/String; = "mads.amazon-adsystem.com"

.field protected static final CONFIG_APP_DEFINED_MARKETPLACE:Ljava/lang/String; = "config-appDefinedMarketplace"

.field protected static final CONFIG_LASTFETCHTIME:Ljava/lang/String; = "config-lastFetchTime"

.field protected static final CONFIG_TTL:Ljava/lang/String; = "config-ttl"

.field protected static final CONFIG_VERSION_NAME:Ljava/lang/String; = "configVersion"

.field protected static final CURRENT_CONFIG_VERSION:I = 0x4

.field private static final LOGTAG:Ljava/lang/String;

.field protected static final MAX_CONFIG_TTL:I = 0xa4cb800

.field protected static final MAX_NO_RETRY_TTL:I = 0x493e0

.field private static instance:Lcom/amazon/device/ads/Configuration;


# instance fields
.field private appDefinedMarketplace:Ljava/lang/String;

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private isAppDefinedMarketplaceSet:Z

.field private final isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isFirstParty:Z

.field private lastTestModeValue:Ljava/lang/Boolean;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/ads/Configuration$ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final metrics:Lcom/amazon/device/ads/Metrics;

.field private final permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

.field private pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

.field private final settings:Lcom/amazon/device/ads/Settings;

.field private final systemTime:Lcom/amazon/device/ads/SystemTime;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private final webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

.field private final webRequestUserId:Lcom/amazon/device/ads/WebRequestUserId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/amazon/device/ads/Configuration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/Configuration;->LOGTAG:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/amazon/device/ads/Configuration;

    invoke-direct {v0}, Lcom/amazon/device/ads/Configuration;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/Configuration;->instance:Lcom/amazon/device/ads/Configuration;

    return-void
.end method

.method protected constructor <init>()V
    .locals 11

    .prologue
    .line 171
    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v2, Lcom/amazon/device/ads/PermissionChecker;

    invoke-direct {v2}, Lcom/amazon/device/ads/PermissionChecker;-><init>()V

    new-instance v3, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-direct {v3}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v4

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v5

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v6

    new-instance v7, Lcom/amazon/device/ads/SystemTime;

    invoke-direct {v7}, Lcom/amazon/device/ads/SystemTime;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v8

    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v9

    new-instance v10, Lcom/amazon/device/ads/WebRequestUserId;

    invoke-direct {v10}, Lcom/amazon/device/ads/WebRequestUserId;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/amazon/device/ads/Configuration;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/WebRequestUserId;)V

    .line 181
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/WebRequestUserId;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v3, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    .line 47
    iput-boolean v2, p0, Lcom/amazon/device/ads/Configuration;->isAppDefinedMarketplaceSet:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    iput-object v3, p0, Lcom/amazon/device/ads/Configuration;->lastTestModeValue:Ljava/lang/Boolean;

    .line 51
    iput-boolean v2, p0, Lcom/amazon/device/ads/Configuration;->isFirstParty:Z

    .line 52
    new-instance v0, Lcom/amazon/device/ads/PreferredMarketplaceRetriever$NullPreferredMarketplaceRetriever;

    invoke-direct {v0}, Lcom/amazon/device/ads/PreferredMarketplaceRetriever$NullPreferredMarketplaceRetriever;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    .line 194
    sget-object v0, Lcom/amazon/device/ads/Configuration;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 195
    iput-object p2, p0, Lcom/amazon/device/ads/Configuration;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    .line 196
    iput-object p3, p0, Lcom/amazon/device/ads/Configuration;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    .line 197
    iput-object p4, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 198
    iput-object p5, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    .line 199
    iput-object p6, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 200
    iput-object p7, p0, Lcom/amazon/device/ads/Configuration;->systemTime:Lcom/amazon/device/ads/SystemTime;

    .line 201
    iput-object p8, p0, Lcom/amazon/device/ads/Configuration;->metrics:Lcom/amazon/device/ads/Metrics;

    .line 202
    iput-object p9, p0, Lcom/amazon/device/ads/Configuration;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 203
    iput-object p10, p0, Lcom/amazon/device/ads/Configuration;->webRequestUserId:Lcom/amazon/device/ads/WebRequestUserId;

    .line 204
    return-void
.end method

.method public static final getInstance()Lcom/amazon/device/ads/Configuration;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/amazon/device/ads/Configuration;->instance:Lcom/amazon/device/ads/Configuration;

    return-object v0
.end method

.method private getPreferredMarketplace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/PreferredMarketplaceRetriever;->retrievePreferredMarketplace(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasAppDefinedMarketplaceChanged()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 408
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v3, "config-appDefinedMarketplace"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    iget-boolean v3, p0, Lcom/amazon/device/ads/Configuration;->isAppDefinedMarketplaceSet:Z

    if-eqz v3, :cond_1

    .line 413
    iput-boolean v1, p0, Lcom/amazon/device/ads/Configuration;->isAppDefinedMarketplaceSet:Z

    .line 415
    iget-object v3, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 417
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v2, "config-lastFetchTime"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/amazon/device/ads/Settings;->putLongWithNoFlush(Ljava/lang/String;J)V

    .line 418
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v2, "config-appDefinedMarketplace"

    iget-object v3, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {v1}, Lcom/amazon/device/ads/Settings;->flush()V

    .line 422
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->requestNewSISDeviceIdentifier()V

    .line 423
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "New application-defined marketplace set. A new configuration will be retrieved."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 436
    :goto_0
    return v0

    .line 426
    :cond_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 428
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v2, "config-appDefinedMarketplace"

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/Settings;->remove(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->requestNewSISDeviceIdentifier()V

    .line 432
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Application-defined marketplace removed. A new configuration will be retrieved."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private writeSettingFromConfigOption(Lcom/amazon/device/ads/Configuration$ConfigOption;Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 650
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getAllowEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The configuration value must not be empty or contain only white spaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :goto_0
    return-void

    .line 659
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 661
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 662
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/Settings;->putBooleanWithNoFlush(Ljava/lang/String;Z)V

    goto :goto_0

    .line 664
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 666
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 667
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/Settings;->putIntWithNoFlush(Ljava/lang/String;I)V

    goto :goto_0

    .line 669
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 671
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 672
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/device/ads/Settings;->putLongWithNoFlush(Ljava/lang/String;J)V

    goto :goto_0

    .line 674
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 676
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 677
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/Settings;->putJSONObjectWithNoFlush(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 683
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Undefined configuration option type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected beginFetch()V
    .locals 4

    .prologue
    .line 491
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/Configuration$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/Configuration$1;-><init>(Lcom/amazon/device/ads/Configuration;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 498
    return-void
.end method

.method protected createWebRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 693
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createJSONGetWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v1

    .line 694
    sget-object v2, Lcom/amazon/device/ads/Configuration;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/WebRequest;->setExternalLogTag(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v1, v5}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    .line 696
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v3, "debug.aaxConfigHostname"

    const-string v4, "mads.amazon-adsystem.com"

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/WebRequest;->setHost(Ljava/lang/String;)V

    .line 697
    const-string v2, "/msdk/getConfig"

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/WebRequest;->setPath(Ljava/lang/String;)V

    .line 698
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->metrics:Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v2}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/WebRequest;->setMetricsCollector(Lcom/amazon/device/ads/MetricsCollector;)V

    .line 699
    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/WebRequest;->setServiceCallLatencyMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 701
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v3, "debug.aaxConfigUseSecure"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/WebRequest;->setUseSecure(Z)V

    .line 703
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v2

    .line 704
    iget-object v3, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v3}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v3

    .line 705
    const-string v4, "appId"

    invoke-virtual {v2}, Lcom/amazon/device/ads/RegistrationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 706
    const-string v2, "dinfo"

    invoke-virtual {v3}, Lcom/amazon/device/ads/DeviceInfo;->getDInfoProperty()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 707
    const-string v2, "sdkVer"

    invoke-static {}, Lcom/amazon/device/ads/Version;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 708
    const-string v2, "fp"

    iget-boolean v3, p0, Lcom/amazon/device/ads/Configuration;->isFirstParty:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 709
    const-string v2, "mkt"

    iget-object v3, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v4, "config-appDefinedMarketplace"

    invoke-virtual {v3, v4, v0}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 710
    const-string v2, "pfm"

    invoke-direct {p0}, Lcom/amazon/device/ads/Configuration;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 711
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v3, "testingEnabled"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 712
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/Configuration;->setLastTestModeValue(Z)V

    .line 713
    if-eqz v2, :cond_0

    .line 715
    const-string v2, "testMode"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 717
    :cond_0
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v3, "debug.aaxConfigParams"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/WebRequest;->setAdditionalQueryParamsString(Ljava/lang/String;)V

    .line 718
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->webRequestUserId:Lcom/amazon/device/ads/WebRequestUserId;

    invoke-virtual {v2, v1}, Lcom/amazon/device/ads/WebRequestUserId;->populateWebRequestUserId(Lcom/amazon/device/ads/WebRequest;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 722
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected fetchConfigurationOnBackgroundThread()V
    .locals 10

    .prologue
    const-wide/32 v0, 0xa4cb800

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 552
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "In configuration fetcher background thread."

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 553
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v4}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/PermissionChecker;->hasInternetPermission(Landroid/content/Context;)Z

    move-result v2

    .line 555
    if-nez v2, :cond_0

    .line 557
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Network task cannot commence because the INTERNET permission is missing from the app\'s manifest."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    .line 645
    :goto_0
    return-void

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v2

    .line 563
    if-nez v2, :cond_1

    .line 565
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    goto :goto_0

    .line 572
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 580
    invoke-virtual {v2}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/ResponseReader;->readAsJSON()Lorg/json/JSONObject;

    move-result-object v4

    .line 592
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->getConfigOptions()[Lcom/amazon/device/ads/Configuration$ConfigOption;

    move-result-object v5

    array-length v6, v5

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_4

    aget-object v7, v5, v2

    .line 594
    invoke-virtual {v7}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 596
    invoke-virtual {v7}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getAllowEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 598
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The configuration value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be present and not null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 625
    :catch_0
    move-exception v0

    .line 627
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Unable to parse JSON response: %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    goto :goto_0

    .line 574
    :catch_1
    move-exception v0

    .line 576
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    goto :goto_0

    .line 602
    :cond_2
    :try_start_2
    iget-object v8, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {v7}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/amazon/device/ads/Settings;->removeWithNoFlush(Ljava/lang/String;)V

    .line 592
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 606
    :cond_3
    invoke-direct {p0, v7, v4}, Lcom/amazon/device/ads/Configuration;->writeSettingFromConfigOption(Lcom/amazon/device/ads/Configuration$ConfigOption;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 631
    :catch_2
    move-exception v0

    .line 633
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Unexpected error during parsing: %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    goto/16 :goto_0

    .line 609
    :cond_4
    :try_start_3
    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->DEBUG_PROPERTIES:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v2}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 611
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    sget-object v5, Lcom/amazon/device/ads/Configuration$ConfigOption;->DEBUG_PROPERTIES:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v5}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazon/device/ads/DebugProperties;->overwriteDebugProperties(Lorg/json/JSONObject;)V

    .line 619
    :goto_3
    const-string v2, "ttl"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 621
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "The configuration value must be present and not null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_5
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    sget-object v5, Lcom/amazon/device/ads/Configuration$ConfigOption;->DEBUG_PROPERTIES:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-static {v5}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazon/device/ads/Settings;->removeWithNoFlush(Ljava/lang/String;)V

    .line 616
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    invoke-virtual {v2}, Lcom/amazon/device/ads/DebugProperties;->clearDebugProperties()V

    goto :goto_3

    .line 623
    :cond_6
    const-string v2, "ttl"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Lcom/amazon/device/ads/NumberUtils;->convertToMillisecondsFromSeconds(J)J
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v2

    .line 638
    cmp-long v4, v2, v0

    if-lez v4, :cond_7

    .line 639
    :goto_4
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v3, "config-ttl"

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/device/ads/Settings;->putLongWithNoFlush(Ljava/lang/String;J)V

    .line 640
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "config-lastFetchTime"

    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->systemTime:Lcom/amazon/device/ads/SystemTime;

    invoke-virtual {v2}, Lcom/amazon/device/ads/SystemTime;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/Settings;->putLongWithNoFlush(Ljava/lang/String;J)V

    .line 641
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "configVersion"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->putIntWithNoFlush(Ljava/lang/String;I)V

    .line 642
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Settings;->flush()V

    .line 643
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Configuration fetched and saved."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchSuccess()V

    goto/16 :goto_0

    :cond_7
    move-wide v0, v2

    .line 638
    goto :goto_4
.end method

.method protected declared-synchronized getAndClearListeners()[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    .locals 2

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    .line 535
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    .line 536
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    monitor-exit p0

    return-object v0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBoolean(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/Configuration;->getBooleanWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Z)Z

    move-result v0

    return v0
.end method

.method public getBooleanWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Z)Z
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getConfigOptions()[Lcom/amazon/device/ads/Configuration$ConfigOption;
    .locals 1

    .prologue
    .line 542
    sget-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->configOptions:[Lcom/amazon/device/ads/Configuration$ConfigOption;

    return-object v0
.end method

.method public getInt(Lcom/amazon/device/ads/Configuration$ConfigOption;)I
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/Configuration;->getIntWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;I)I

    move-result v0

    return v0
.end method

.method public getIntWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;I)I
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/amazon/device/ads/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getJSONObject(Lcom/amazon/device/ads/Configuration$ConfigOption;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/Configuration;->getJSONObjectWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getJSONObjectWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/amazon/device/ads/Settings;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Lcom/amazon/device/ads/Configuration$ConfigOption;)J
    .locals 2

    .prologue
    .line 317
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/device/ads/Configuration;->getLongWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;J)J
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/amazon/device/ads/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method getPreferredMarketplaceRetriever()Lcom/amazon/device/ads/PreferredMarketplaceRetriever;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    return-object v0
.end method

.method public getString(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasValue(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/Configuration;->getString(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isFetching()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isFirstParty()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/amazon/device/ads/Configuration;->isFirstParty:Z

    return v0
.end method

.method protected declared-synchronized onFetchFailure()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 520
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->metrics:Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v1}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_CONFIG_DOWNLOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 521
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/Configuration;->setIsFetching(Z)V

    .line 522
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->getAndClearListeners()[Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    move-result-object v1

    .line 523
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 525
    invoke-interface {v3}, Lcom/amazon/device/ads/Configuration$ConfigurationListener;->onConfigurationFailure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_0
    monitor-exit p0

    return-void

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onFetchSuccess()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 508
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/Configuration;->setIsFetching(Z)V

    .line 509
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->getAndClearListeners()[Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    move-result-object v1

    .line 510
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 512
    invoke-interface {v3}, Lcom/amazon/device/ads/Configuration$ConfigurationListener;->onConfigurationReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    :cond_0
    monitor-exit p0

    return-void

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;)V
    .locals 1

    .prologue
    .line 456
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/Configuration;->queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit p0

    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;Z)V
    .locals 2

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 472
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->shouldFetch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    if-eqz p2, :cond_0

    .line 479
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Starting configuration fetching..."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 480
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Configuration;->setIsFetching(Z)V

    .line 481
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->beginFetch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 486
    :cond_2
    :try_start_2
    invoke-interface {p1}, Lcom/amazon/device/ads/Configuration$ConfigurationListener;->onConfigurationReady()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setAppDefinedMarketplace(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 222
    iput-object p1, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/Configuration;->isAppDefinedMarketplaceSet:Z

    .line 224
    return-void
.end method

.method protected setIsFetching(Z)V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 446
    return-void
.end method

.method public setIsFirstParty(Z)V
    .locals 0

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/amazon/device/ads/Configuration;->isFirstParty:Z

    .line 233
    return-void
.end method

.method protected setLastTestModeValue(Z)V
    .locals 1

    .prologue
    .line 547
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->lastTestModeValue:Ljava/lang/Boolean;

    .line 548
    return-void
.end method

.method public setPreferredMarketplaceRetriever(Lcom/amazon/device/ads/PreferredMarketplaceRetriever;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/amazon/device/ads/Configuration;->pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    .line 731
    return-void
.end method

.method protected shouldFetch()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 359
    invoke-direct {p0}, Lcom/amazon/device/ads/Configuration;->hasAppDefinedMarketplaceChanged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v0

    .line 364
    :cond_1
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v3, "configVersion"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/device/ads/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 369
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v3, "config-lastFetchTime"

    invoke-virtual {v2, v3, v10, v11}, Lcom/amazon/device/ads/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 371
    cmp-long v4, v2, v10

    if-nez v4, :cond_2

    .line 373
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "No configuration found. A new configuration will be retrieved."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_2
    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->systemTime:Lcom/amazon/device/ads/SystemTime;

    invoke-virtual {v4}, Lcom/amazon/device/ads/SystemTime;->currentTimeMillis()J

    move-result-wide v4

    .line 378
    iget-object v6, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v7, "config-ttl"

    const-wide/32 v8, 0xa4cb800

    invoke-virtual {v6, v7, v8, v9}, Lcom/amazon/device/ads/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 379
    sub-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 381
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "The configuration has expired. A new configuration will be retrieved."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_3
    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v5, "amzn-ad-iu-last-checkin"

    invoke-virtual {v4, v5, v10, v11}, Lcom/amazon/device/ads/Settings;->getWrittenLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 386
    sub-long v2, v4, v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_4

    .line 388
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "A new user has been identified. A new configuration will be retrieved."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_4
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->lastTestModeValue:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->lastTestModeValue:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v4, "testingEnabled"

    invoke-virtual {v3, v4, v1}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v2, v3, :cond_5

    .line 395
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "The testing mode has changed. A new configuration will be retrieved."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_5
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v3, "debug.shouldFetchConfig"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 403
    goto/16 :goto_0
.end method
