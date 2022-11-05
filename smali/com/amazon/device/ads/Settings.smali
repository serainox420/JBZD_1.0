.class Lcom/amazon/device/ads/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/Settings$SettingsStatics;,
        Lcom/amazon/device/ads/Settings$SettingsListener;,
        Lcom/amazon/device/ads/Settings$TransientValue;,
        Lcom/amazon/device/ads/Settings$Value;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final PREFS_NAME:Ljava/lang/String; = "AmazonMobileAds"

.field public static final SETTING_ENABLE_WEBVIEW_PAUSE_LOGIC:Ljava/lang/String; = "shouldPauseWebViewTimersInWebViewRelatedActivities"

.field protected static final SETTING_TESTING_ENABLED:Ljava/lang/String; = "testingEnabled"

.field protected static final SETTING_TLS_ENABLED:Ljava/lang/String; = "tlsEnabled"

.field private static instance:Lcom/amazon/device/ads/Settings;


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/Settings$Value;",
            ">;"
        }
    .end annotation
.end field

.field private debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

.field private listeners:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/amazon/device/ads/Settings$SettingsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final settingsLoadedLatch:Ljava/util/concurrent/CountDownLatch;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private final writeToSharedPreferencesLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/amazon/device/ads/Settings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/Settings;->LOGTAG:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/amazon/device/ads/Settings;

    invoke-direct {v0}, Lcom/amazon/device/ads/Settings;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/Settings;->instance:Lcom/amazon/device/ads/Settings;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-direct {v0}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/Settings;-><init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;Lcom/amazon/device/ads/DebugProperties;)V

    .line 48
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/JSONUtils$JSONUtilities;Lcom/amazon/device/ads/DebugProperties;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/Settings;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 52
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 53
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->writeToSharedPreferencesLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 54
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->settingsLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    iput-object p1, p0, Lcom/amazon/device/ads/Settings;->jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    .line 57
    iput-object p2, p0, Lcom/amazon/device/ads/Settings;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/Settings;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->writeToSharedPreferencesLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/Settings;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/Settings;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/Settings;->commit(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private commit(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 549
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 550
    return-void
.end method

.method public static getInstance()Lcom/amazon/device/ads/Settings;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/amazon/device/ads/Settings;->instance:Lcom/amazon/device/ads/Settings;

    return-object v0
.end method

.method private putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p2, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Could not set null value for setting: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 164
    iget-boolean v0, p2, Lcom/amazon/device/ads/Settings$Value;->isTransientData:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->flush()V

    goto :goto_0
.end method

.method private putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p2, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Could not set null value for setting: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private writeCacheToSharedPreferences()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Settings;->writeCacheToSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 221
    return-void
.end method


# virtual methods
.method beginFetch(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/amazon/device/ads/Settings$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/Settings$1;-><init>(Lcom/amazon/device/ads/Settings;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method cacheAdditionalEntries(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 196
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 198
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_1

    .line 206
    iget-object v3, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Lcom/amazon/device/ads/Settings$Value;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Could not cache null value for SharedPreferences setting: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_2
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method contextReceived(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/Settings;->beginFetch(Landroid/content/Context;)V

    goto :goto_0
.end method

.method fetchSharedPreferences(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/Settings;->getSharedPreferencesFromContext(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 612
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Settings;->readSharedPreferencesIntoCache(Landroid/content/SharedPreferences;)V

    .line 616
    iput-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 617
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Settings;->writeCacheToSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->settingsLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 621
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->notifySettingsListeners()V

    .line 622
    return-void
.end method

.method flush()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/amazon/device/ads/Settings;->writeCacheToSharedPreferences()V

    .line 276
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 466
    if-nez v0, :cond_0

    .line 472
    :goto_0
    return-object p2

    :cond_0
    iget-object v0, v0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    move-object p2, v0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 454
    if-nez v0, :cond_0

    .line 460
    :goto_0
    return p2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method getCache()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/Settings$Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 376
    if-nez v0, :cond_0

    .line 382
    :goto_0
    return p2

    :cond_0
    iget-object v0, v0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 286
    if-nez v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-object p2

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/Settings;->jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    iget-object v0, v0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 295
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 415
    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-wide p2

    :cond_0
    iget-object v0, v0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 523
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    invoke-virtual {p3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    iget-object p2, v0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    .line 527
    :cond_0
    return-object p2
.end method

.method getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method getSharedPreferencesFromContext(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 128
    const-string v0, "AmazonMobileAds"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 337
    if-nez v0, :cond_0

    .line 343
    :goto_0
    return-object p2

    :cond_0
    iget-object v0, v0, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    goto :goto_0
.end method

.method public getWrittenBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 499
    :cond_0
    return p2
.end method

.method public getWrittenInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 409
    :cond_0
    return p2
.end method

.method public getWrittenJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/amazon/device/ads/Settings;->jsonUtilities:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 331
    :cond_0
    return-object p2
.end method

.method public getWrittenLong(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    .line 448
    :cond_0
    return-wide p2
.end method

.method public getWrittenString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 370
    :cond_0
    return-object p2
.end method

.method public isSettingsLoaded()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listenForSettings(Lcom/amazon/device/ads/Settings$SettingsListener;)V
    .locals 5

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {p1}, Lcom/amazon/device/ads/Settings$SettingsListener;->settingsLoaded()V

    .line 124
    :goto_0
    return-void

    .line 117
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    iget-object v1, p0, Lcom/amazon/device/ads/Settings;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Interrupted exception while adding listener: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method notifySettingsListeners()V
    .locals 1

    .prologue
    .line 558
    .line 559
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->listeners:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$SettingsListener;

    if-eqz v0, :cond_0

    .line 561
    invoke-interface {v0}, Lcom/amazon/device/ads/Settings$SettingsListener;->settingsLoaded()V

    goto :goto_0

    .line 563
    :cond_0
    return-void
.end method

.method putBoolean(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 477
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 478
    return-void
.end method

.method putBooleanWithNoFlush(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 481
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 482
    return-void
.end method

.method putInt(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 387
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 388
    return-void
.end method

.method putIntWithNoFlush(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 391
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 392
    return-void
.end method

.method public putJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 305
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 306
    return-void
.end method

.method public putJSONObjectWithNoFlush(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 310
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 311
    return-void
.end method

.method putLong(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 426
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 427
    return-void
.end method

.method putLongWithNoFlush(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 430
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 431
    return-void
.end method

.method putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 348
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSetting(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 349
    return-void
.end method

.method putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 352
    new-instance v0, Lcom/amazon/device/ads/Settings$Value;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 353
    return-void
.end method

.method putTransientBoolean(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 485
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 486
    return-void
.end method

.method putTransientInt(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 395
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 396
    return-void
.end method

.method public putTransientJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 315
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    const-class v1, Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 316
    return-void
.end method

.method putTransientLong(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 434
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    const-class v1, Ljava/lang/Long;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 435
    return-void
.end method

.method public putTransientObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 509
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 510
    return-void
.end method

.method putTransientString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 356
    new-instance v0, Lcom/amazon/device/ads/Settings$TransientValue;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p0, v1, p2}, Lcom/amazon/device/ads/Settings$TransientValue;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/Settings;->putSettingWithNoFlush(Ljava/lang/String;Lcom/amazon/device/ads/Settings$Value;)V

    .line 357
    return-void
.end method

.method readSharedPreferencesIntoCache(Landroid/content/SharedPreferences;)V
    .locals 1

    .prologue
    .line 186
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Settings;->cacheAdditionalEntries(Ljava/util/Map;)V

    .line 188
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/Settings$Value;

    .line 533
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/amazon/device/ads/Settings$Value;->isTransientData:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->isSettingsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/amazon/device/ads/Settings;->flush()V

    .line 537
    :cond_0
    return-void
.end method

.method removeWithNoFlush(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    return-void
.end method

.method writeCacheToSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/amazon/device/ads/Settings$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/Settings$2;-><init>(Lcom/amazon/device/ads/Settings;Landroid/content/SharedPreferences;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method
