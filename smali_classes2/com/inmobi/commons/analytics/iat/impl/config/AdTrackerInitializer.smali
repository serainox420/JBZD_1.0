.class public Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;
.super Ljava/lang/Object;
.source "AdTrackerInitializer.java"


# static fields
.field public static final PRODUCT_IAT:Ljava/lang/String; = "iat"

.field private static a:Landroid/content/Context;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

.field private static d:Lcom/inmobi/commons/metric/Logger;

.field private static e:Lcom/inmobi/commons/cache/CacheController$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->a:Landroid/content/Context;

    .line 22
    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->c:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    .line 23
    new-instance v0, Lcom/inmobi/commons/metric/Logger;

    const/4 v1, 0x2

    const-string v2, "iat"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/metric/Logger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->d:Lcom/inmobi/commons/metric/Logger;

    .line 25
    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer$1;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer$1;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->e:Lcom/inmobi/commons/cache/CacheController$Validator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 46
    if-eqz p0, :cond_2

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 47
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->a:Landroid/content/Context;

    .line 51
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getDeviceIdMaskMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/uid/UID;->getMapForEncryption(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->b:Ljava/util/Map;

    .line 54
    :try_start_0
    const-string v0, "iat"

    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->e:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductConfig;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->b(Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 57
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v1, "Exception while retreiving configs."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 61
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/Map;)Z
    .locals 1

    .prologue
    .line 16
    invoke-static {p0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->b(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 66
    invoke-static {p0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->a(Landroid/content/Context;)V

    .line 69
    :try_start_0
    const-string v0, "iat"

    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->e:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 83
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getUidMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->b:Ljava/util/Map;

    .line 84
    const-string v0, "AND"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "common"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populateToNewMap(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    .line 88
    :try_start_0
    new-instance v1, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    invoke-direct {v1}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;-><init>()V

    .line 89
    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->setFromMap(Ljava/util/Map;)V

    .line 90
    sput-object v1, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->c:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 94
    :goto_0
    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->b(Landroid/content/Context;)V

    .line 37
    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->d:Lcom/inmobi/commons/metric/Logger;

    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->c:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getMetric()Lcom/inmobi/commons/metric/MetricConfigParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->setMetricConfigParams(Lcom/inmobi/commons/metric/MetricConfigParams;)V

    .line 38
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->c:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    return-object v0
.end method

.method public static getLogger()Lcom/inmobi/commons/metric/Logger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->d:Lcom/inmobi/commons/metric/Logger;

    return-object v0
.end method

.method public static getUidMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getDeviceIdMaskMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/uid/UID;->getMapForEncryption(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
