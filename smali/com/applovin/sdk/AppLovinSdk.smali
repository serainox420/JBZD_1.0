.class public abstract Lcom/applovin/sdk/AppLovinSdk;
.super Ljava/lang/Object;


# static fields
.field public static final CIS_BUILD_TAG:Ljava/lang/String; = "{BUILD_NUMBER}"

.field public static final URI_HOST:Ljava/lang/String; = "com.applovin.sdk"

.field public static final URI_SCHEME:Ljava/lang/String; = "applovin"

.field public static final VERSION:Ljava/lang/String; = "6.2.4"

.field public static final VERSION_CODE:I = 0x270

.field private static a:[Lcom/applovin/sdk/AppLovinSdk;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/applovin/sdk/AppLovinSdk;

    sput-object v0, Lcom/applovin/sdk/AppLovinSdk;->a:[Lcom/applovin/sdk/AppLovinSdk;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/sdk/AppLovinSdk;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->retrieveSdkKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdkUtils;->retrieveUserSettings(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->retrieveSdkKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 7

    const/4 v0, 0x0

    sget-object v2, Lcom/applovin/sdk/AppLovinSdk;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/applovin/sdk/AppLovinSdk;->a:[Lcom/applovin/sdk/AppLovinSdk;

    array-length v1, v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    sget-object v1, Lcom/applovin/sdk/AppLovinSdk;->a:[Lcom/applovin/sdk/AppLovinSdk;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdk;->getSdkKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/applovin/sdk/AppLovinSdk;->a:[Lcom/applovin/sdk/AppLovinSdk;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    sget-object v3, Lcom/applovin/sdk/AppLovinSdk;->a:[Lcom/applovin/sdk/AppLovinSdk;

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getSdkKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->initialize(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->checkCorrectInitialization(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->setInitializedInMainActivity(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/applovin/sdk/AppLovinSdk;->a:[Lcom/applovin/sdk/AppLovinSdk;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/applovin/sdk/AppLovinSdk;

    sget-object v3, Lcom/applovin/sdk/AppLovinSdk;->a:[Lcom/applovin/sdk/AppLovinSdk;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/applovin/sdk/AppLovinSdk;->a:[Lcom/applovin/sdk/AppLovinSdk;

    array-length v6, v6

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v3, Lcom/applovin/sdk/AppLovinSdk;->a:[Lcom/applovin/sdk/AppLovinSdk;

    array-length v3, v3

    aput-object v0, v1, v3

    sput-object v1, Lcom/applovin/sdk/AppLovinSdk;->a:[Lcom/applovin/sdk/AppLovinSdk;

    monitor-exit v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppLovinSdk"

    const-string v3, "Failed to build AppLovin SDK. Try cleaning application data and starting the application again."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to build AppLovin SDK"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static initializeSdk(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "AppLovinSdk"

    const-string v1, "Unable to initialize AppLovin SDK: SDK object not created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public abstract getAdService()Lcom/applovin/sdk/AppLovinAdService;
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getEventService()Lcom/applovin/sdk/AppLovinEventService;
.end method

.method public abstract getLogger()Lcom/applovin/sdk/AppLovinLogger;
.end method

.method public abstract getNativeAdService()Lcom/applovin/nativeAds/AppLovinNativeAdService;
.end method

.method public abstract getPostbackService()Lcom/applovin/sdk/AppLovinPostbackService;
.end method

.method public abstract getSdkKey()Ljava/lang/String;
.end method

.method public abstract getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;
.end method

.method public abstract getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;
.end method

.method public abstract hasCriticalErrors()Z
.end method

.method public abstract initialize(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)V
.end method

.method public abstract initializeSdk()V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract setPluginVersion(Ljava/lang/String;)V
.end method
