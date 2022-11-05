.class Lcom/amazon/device/ads/AdLoader;
.super Ljava/lang/Object;
.source "AdLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;,
        Lcom/amazon/device/ads/AdLoader$AdFetchException;
    }
.end annotation


# static fields
.field public static final AD_FAILED:I = -0x1

.field public static final AD_LOAD_DEFERRED:I = 0x1

.field public static final AD_READY_TO_LOAD:I = 0x0

.field public static final DISABLED_APP_SERVER_MESSAGE:Ljava/lang/String; = "DISABLED_APP"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final adRequest:Lcom/amazon/device/ads/AdRequest;

.field private final assets:Lcom/amazon/device/ads/Assets;

.field private compositeMetricsCollector:Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private error:Lcom/amazon/device/ads/AdError;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final slots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/device/ads/AdSlot;",
            ">;"
        }
    .end annotation
.end field

.field private final systemTime:Lcom/amazon/device/ads/SystemTime;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/amazon/device/ads/AdLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdLoader;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdRequest;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/AdRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/device/ads/AdSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v3

    new-instance v4, Lcom/amazon/device/ads/SystemTime;

    invoke-direct {v4}, Lcom/amazon/device/ads/SystemTime;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/Assets;->getInstance()Lcom/amazon/device/ads/Assets;

    move-result-object v5

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v6

    new-instance v7, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v7}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/amazon/device/ads/AdLoader;-><init>(Lcom/amazon/device/ads/AdRequest;Ljava/util/Map;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/Assets;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/DebugProperties;)V

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdRequest;Ljava/util/Map;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/Assets;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/DebugProperties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/AdRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/device/ads/AdSlot;",
            ">;",
            "Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;",
            "Lcom/amazon/device/ads/SystemTime;",
            "Lcom/amazon/device/ads/Assets;",
            "Lcom/amazon/device/ads/MobileAdsInfoStore;",
            "Lcom/amazon/device/ads/MobileAdsLoggerFactory;",
            "Lcom/amazon/device/ads/DebugProperties;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/amazon/device/ads/AdLoader;->timeout:I

    .line 40
    iput-object v1, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    .line 41
    iput-object v1, p0, Lcom/amazon/device/ads/AdLoader;->compositeMetricsCollector:Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;

    .line 70
    iput-object p1, p0, Lcom/amazon/device/ads/AdLoader;->adRequest:Lcom/amazon/device/ads/AdRequest;

    .line 71
    iput-object p2, p0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    .line 72
    iput-object p3, p0, Lcom/amazon/device/ads/AdLoader;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 73
    iput-object p4, p0, Lcom/amazon/device/ads/AdLoader;->systemTime:Lcom/amazon/device/ads/SystemTime;

    .line 74
    iput-object p5, p0, Lcom/amazon/device/ads/AdLoader;->assets:Lcom/amazon/device/ads/Assets;

    .line 75
    iput-object p6, p0, Lcom/amazon/device/ads/AdLoader;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 76
    sget-object v0, Lcom/amazon/device/ads/AdLoader;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p7, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 77
    iput-object p8, p0, Lcom/amazon/device/ads/AdLoader;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AdLoader;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->beginFinalizeFetchAd()V

    return-void
.end method

.method private beginFinalizeFetchAd()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/AdLoader$2;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/AdLoader$2;-><init>(Lcom/amazon/device/ads/AdLoader;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 118
    return-void
.end method

.method private getAdRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/AdLoader$AdFetchException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 180
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->adRequest:Lcom/amazon/device/ads/AdRequest;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdRequest;->getWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 181
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 182
    return-object v0
.end method

.method private getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->compositeMetricsCollector:Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;

    if-nez v0, :cond_1

    .line 476
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 477
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 479
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdSlot;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSlot;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 481
    :cond_0
    new-instance v0, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLoader;->compositeMetricsCollector:Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->compositeMetricsCollector:Lcom/amazon/device/ads/MetricsCollector$CompositeMetricsCollector;

    return-object v0
.end method

.method private parseResponse(Lorg/json/JSONObject;)V
    .locals 22

    .prologue
    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amazon/device/ads/AdLoader;->systemTime:Lcom/amazon/device/ads/SystemTime;

    invoke-virtual {v2}, Lcom/amazon/device/ads/SystemTime;->currentTimeMillis()J

    move-result-wide v8

    .line 206
    const-string v2, "status"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    new-instance v10, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 209
    invoke-virtual/range {p0 .. p1}, Lcom/amazon/device/ads/AdLoader;->getAdError(Lorg/json/JSONObject;)Lcom/amazon/device/ads/AdError;

    move-result-object v11

    .line 210
    const-string v3, "errorCode"

    const-string v4, "No Ad Received"

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazon/device/ads/AdLoader;->adRequest:Lcom/amazon/device/ads/AdRequest;

    const-string v4, "instrPixelURL"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/AdRequest;->setInstrumentationPixelURL(Ljava/lang/String;)V

    .line 213
    if-eqz v2, :cond_d

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 215
    const-string v2, "ads"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/amazon/device/ads/JSONUtils;->getJSONArrayFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 216
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_d

    .line 218
    invoke-static {v13, v3}, Lcom/amazon/device/ads/JSONUtils;->getJSONObjectFromJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v14

    .line 219
    if-nez v14, :cond_1

    .line 216
    :cond_0
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 223
    :cond_1
    const-string v2, "slotId"

    const/4 v4, -0x1

    invoke-static {v14, v2, v4}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/ads/AdSlot;

    .line 225
    if-eqz v2, :cond_0

    .line 227
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 228
    const-string v4, "instrPixelURL"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/device/ads/AdLoader;->adRequest:Lcom/amazon/device/ads/AdRequest;

    invoke-virtual {v5}, Lcom/amazon/device/ads/AdRequest;->getInstrumentationPixelURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v4, v5}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 229
    new-instance v15, Lcom/amazon/device/ads/AdData;

    invoke-direct {v15}, Lcom/amazon/device/ads/AdData;-><init>()V

    .line 230
    invoke-virtual {v15, v4}, Lcom/amazon/device/ads/AdData;->setInstrumentationPixelUrl(Ljava/lang/String;)V

    .line 231
    const-string v4, "impPixelURL"

    const/4 v5, 0x0

    invoke-static {v14, v4, v5}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-virtual {v15, v4}, Lcom/amazon/device/ads/AdData;->setImpressionPixelUrl(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSlot;->getRequestedAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdSize;->isAuto()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 235
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSlot;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/ads/Metrics$MetricType;->AD_COUNTER_AUTO_AD_SIZE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 237
    :cond_2
    const-string v4, "html"

    const-string v5, ""

    invoke-static {v14, v4, v5}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 239
    const-string v4, "creativeTypes"

    invoke-static {v14, v4}, Lcom/amazon/device/ads/JSONUtils;->getJSONArrayFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 241
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 242
    if-eqz v17, :cond_4

    .line 244
    const/4 v4, 0x0

    :goto_2
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 246
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSONArray(Lorg/json/JSONArray;II)I

    move-result v5

    .line 247
    invoke-static {v5}, Lcom/amazon/device/ads/AAXCreative;->getCreativeType(I)Lcom/amazon/device/ads/AAXCreative;

    move-result-object v6

    .line 251
    if-eqz v6, :cond_3

    .line 253
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 244
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 257
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v7, "%d is not a recognized creative type."

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v6, v7, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 262
    :cond_4
    invoke-static/range {v18 .. v18}, Lcom/amazon/device/ads/AAXCreative;->containsPrimaryCreativeType(Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 265
    const-string v4, "No valid creative types found"

    .line 266
    new-instance v4, Lcom/amazon/device/ads/AdError;

    sget-object v5, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v6, "No valid creative types found"

    invoke-direct {v4, v5, v6}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/AdSlot;->setAdError(Lcom/amazon/device/ads/AdError;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "No valid creative types found"

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 271
    :cond_5
    const-string v4, "size"

    const-string v5, ""

    invoke-static {v14, v4, v5}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 273
    if-eqz v7, :cond_7

    const-string v4, "9999x9999"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "interstitial"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    sget-object v4, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 275
    sget-object v4, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_7
    const/4 v5, 0x0

    .line 278
    const/4 v4, 0x0

    .line 279
    sget-object v6, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 281
    const/4 v6, 0x0

    .line 282
    if-eqz v7, :cond_9

    const-string v19, "x"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 283
    :goto_4
    if-eqz v7, :cond_8

    array-length v0, v7

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 285
    :cond_8
    const/4 v6, 0x1

    .line 299
    :goto_5
    if-eqz v6, :cond_b

    .line 302
    const-string v4, "Server returned an invalid ad size"

    .line 303
    new-instance v4, Lcom/amazon/device/ads/AdError;

    sget-object v5, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v6, "Server returned an invalid ad size"

    invoke-direct {v4, v5, v6}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/AdSlot;->setAdError(Lcom/amazon/device/ads/AdError;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "Server returned an invalid ad size"

    invoke-virtual {v2, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 282
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    .line 291
    :cond_a
    const/16 v19, 0x0

    :try_start_0
    aget-object v19, v7, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 292
    const/16 v19, 0x1

    aget-object v7, v7, v19

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_5

    .line 294
    :catch_0
    move-exception v6

    .line 296
    const/4 v6, 0x1

    goto :goto_5

    .line 308
    :cond_b
    const-string v6, "cacheTTL"

    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    invoke-static {v14, v6, v0, v1}, Lcom/amazon/device/ads/JSONUtils;->getLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v6

    .line 309
    const-wide/16 v20, -0x1

    cmp-long v14, v6, v20

    if-lez v14, :cond_c

    .line 311
    const-wide/16 v20, 0x3e8

    mul-long v6, v6, v20

    add-long/2addr v6, v8

    .line 312
    invoke-virtual {v15, v6, v7}, Lcom/amazon/device/ads/AdData;->setExpirationTimeMillis(J)V

    .line 315
    :cond_c
    new-instance v6, Lcom/amazon/device/ads/AdProperties;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/amazon/device/ads/AdProperties;-><init>(Lorg/json/JSONArray;)V

    .line 317
    invoke-virtual {v15, v4}, Lcom/amazon/device/ads/AdData;->setHeight(I)V

    .line 318
    invoke-virtual {v15, v5}, Lcom/amazon/device/ads/AdData;->setWidth(I)V

    .line 319
    invoke-virtual/range {v15 .. v16}, Lcom/amazon/device/ads/AdData;->setCreative(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/amazon/device/ads/AdData;->setCreativeTypes(Ljava/util/Set;)V

    .line 321
    invoke-virtual {v15, v6}, Lcom/amazon/device/ads/AdData;->setProperties(Lcom/amazon/device/ads/AdProperties;)V

    .line 322
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lcom/amazon/device/ads/AdData;->setFetched(Z)V

    .line 323
    invoke-virtual {v2, v15}, Lcom/amazon/device/ads/AdSlot;->setAdData(Lcom/amazon/device/ads/AdData;)V

    goto/16 :goto_1

    .line 327
    :cond_d
    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/ads/AdSlot;

    invoke-virtual {v3, v11}, Lcom/amazon/device/ads/AdSlot;->setAdError(Lcom/amazon/device/ads/AdError;)V

    .line 330
    new-instance v3, Lcom/amazon/device/ads/AdData;

    invoke-direct {v3}, Lcom/amazon/device/ads/AdData;-><init>()V

    .line 331
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/device/ads/AdLoader;->adRequest:Lcom/amazon/device/ads/AdRequest;

    invoke-virtual {v5}, Lcom/amazon/device/ads/AdRequest;->getInstrumentationPixelURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amazon/device/ads/AdData;->setInstrumentationPixelUrl(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/ads/AdSlot;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdSlot;->setAdData(Lcom/amazon/device/ads/AdData;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "%s; code: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v11}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v12, v5, v6

    invoke-virtual {v2, v3, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 335
    :cond_e
    return-void
.end method

.method private setErrorForAllSlots(Lcom/amazon/device/ads/AdError;)V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdSlot;

    .line 375
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdSlot;->setAdError(Lcom/amazon/device/ads/AdError;)V

    goto :goto_0

    .line 377
    :cond_0
    return-void
.end method


# virtual methods
.method public beginFetchAd()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 91
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 92
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLoader;->startFetchAdThread()V

    .line 93
    return-void
.end method

.method protected fetchAd()V
    .locals 3

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 126
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 130
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->assets:Lcom/amazon/device/ads/Assets;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Assets;->ensureAssetsCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const-string v0, "Unable to create the assets needed to display ads"

    .line 134
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->REQUEST_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v2, "Unable to create the assets needed to display ads"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    .line 135
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Unable to create the assets needed to display ads"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLoader;->setErrorForAllSlots(Lcom/amazon/device/ads/AdError;)V

    .line 175
    :goto_0
    return-void

    .line 143
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLoader;->fetchResponseFromNetwork()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/AdLoader$AdFetchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->isHttpStatusCodeOK()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getHttpStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getHttpStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/amazon/device/ads/AdError;

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    .line 157
    iget-object v1, p0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLoader;->setErrorForAllSlots(Lcom/amazon/device/ads/AdError;)V

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLoader$AdFetchException;->getAdError()Lcom/amazon/device/ads/AdError;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    .line 148
    iget-object v1, p0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLoader$AdFetchException;->getAdError()Lcom/amazon/device/ads/AdError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLoader;->setErrorForAllSlots(Lcom/amazon/device/ads/AdError;)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResponseReader;->readAsJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 163
    if-nez v0, :cond_2

    .line 165
    const-string v0, "Unable to parse response"

    .line 166
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v2, "Unable to parse response"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    .line 167
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Unable to parse response"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->error:Lcom/amazon/device/ads/AdError;

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLoader;->setErrorForAllSlots(Lcom/amazon/device/ads/AdError;)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLoader;->parseResponse(Lorg/json/JSONObject;)V

    .line 173
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 174
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    goto/16 :goto_0
.end method

.method protected fetchResponseFromNetwork()Lcom/amazon/device/ads/WebRequest$WebResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/AdLoader$AdFetchException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getAdRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 437
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setMetricsCollector(Lcom/amazon/device/ads/MetricsCollector;)V

    .line 438
    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_LATENCY_GET_AD:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setServiceCallLatencyMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 439
    iget v1, p0, Lcom/amazon/device/ads/AdLoader;->timeout:I

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setTimeout(I)V

    .line 442
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setDisconnectEnabled(Z)V

    .line 444
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 446
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->TLS_ENABLED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 449
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 468
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 469
    return-object v0

    .line 451
    :catch_0
    move-exception v1

    .line 454
    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getStatus()Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    move-result-object v0

    sget-object v2, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    if-ne v0, v2, :cond_0

    .line 456
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v2, "Could not contact Ad Server"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    .line 466
    :goto_0
    new-instance v1, Lcom/amazon/device/ads/AdLoader$AdFetchException;

    invoke-direct {v1, p0, v0}, Lcom/amazon/device/ads/AdLoader$AdFetchException;-><init>(Lcom/amazon/device/ads/AdLoader;Lcom/amazon/device/ads/AdError;)V

    throw v1

    .line 458
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getStatus()Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    move-result-object v0

    sget-object v2, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    if-ne v0, v2, :cond_1

    .line 460
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v2, "Connection to Ad Server timed out"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_1
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected finalizeFetchAd()V
    .locals 5

    .prologue
    .line 397
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->slots:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 399
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdSlot;

    .line 401
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSlot;->canBeUsed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Ad object was destroyed before ad fetching could be finalized. Ad fetching has been aborted."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSlot;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 408
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSlot;->isFetched()Z

    move-result v2

    if-nez v2, :cond_2

    .line 410
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSlot;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 411
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSlot;->getAdError()Lcom/amazon/device/ads/AdError;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 413
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSlot;->getAdError()Lcom/amazon/device/ads/AdError;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/AdSlot;->adFailed(Lcom/amazon/device/ads/AdError;)V

    goto :goto_0

    .line 418
    :cond_1
    new-instance v2, Lcom/amazon/device/ads/AdError;

    sget-object v3, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v4, "Unknown error occurred."

    invoke-direct {v2, v3, v4}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/AdSlot;->adFailed(Lcom/amazon/device/ads/AdError;)V

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSlot;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 424
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSlot;->initializeAd()V

    goto :goto_0

    .line 427
    :cond_3
    return-void
.end method

.method protected getAdError(Lorg/json/JSONObject;)Lcom/amazon/device/ads/AdError;
    .locals 8

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdLoader;->retrieveNoRetryTtlSeconds(Lorg/json/JSONObject;)I

    move-result v0

    .line 341
    iget-object v1, p0, Lcom/amazon/device/ads/AdLoader;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->setNoRetryTtl(I)V

    .line 343
    const-string v1, "errorMessage"

    const-string v2, "No Ad Received"

    invoke-static {p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    iget-object v2, p0, Lcom/amazon/device/ads/AdLoader;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    const-string v3, "DISABLED_APP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsInfoStore;->setIsAppDisabled(Z)V

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    if-lez v0, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLoader;->getCompositeMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v3

    sget-object v4, Lcom/amazon/device/ads/Metrics$MetricType;->AD_NO_RETRY_TTL_RECEIVED:Lcom/amazon/device/ads/Metrics$MetricType;

    mul-int/lit16 v5, v0, 0x3e8

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/amazon/device/ads/MetricsCollector;->publishMetricInMilliseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 353
    :cond_0
    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/amazon/device/ads/AdLoader;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v3}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getIsAppDisabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Try again in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    .line 368
    :goto_0
    return-object v0

    .line 358
    :cond_1
    const-string v0, "no results"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_2
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected retrieveNoRetryTtlSeconds(Lorg/json/JSONObject;)I
    .locals 3

    .prologue
    .line 387
    const-string v0, "noretryTTL"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 388
    iget-object v1, p0, Lcom/amazon/device/ads/AdLoader;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v2, "debug.noRetryTTL"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 389
    return v0
.end method

.method public setTimeout(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/amazon/device/ads/AdLoader;->timeout:I

    .line 83
    return-void
.end method

.method protected startFetchAdThread()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/AdLoader$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/AdLoader$1;-><init>(Lcom/amazon/device/ads/AdLoader;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 106
    return-void
.end method
