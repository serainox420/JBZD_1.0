.class Lcom/amazon/device/ads/JavascriptInteractor;
.super Ljava/lang/Object;
.source "JavascriptInteractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;,
        Lcom/amazon/device/ads/JavascriptInteractor$Executor;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static executorMethodName:Ljava/lang/String;

.field private static final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# instance fields
.field private final executor:Lcom/amazon/device/ads/JavascriptInteractor$Executor;

.field private final methodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-class v0, Lcom/amazon/device/ads/JavascriptInteractor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/JavascriptInteractor;->LOGTAG:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/JavascriptInteractor;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/JavascriptInteractor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/JavascriptInteractor;->methodMap:Ljava/util/Map;

    .line 41
    new-instance v0, Lcom/amazon/device/ads/JavascriptInteractor$Executor;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/JavascriptInteractor$Executor;-><init>(Lcom/amazon/device/ads/JavascriptInteractor;)V

    iput-object v0, p0, Lcom/amazon/device/ads/JavascriptInteractor;->executor:Lcom/amazon/device/ads/JavascriptInteractor$Executor;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/JavascriptInteractor;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/JavascriptInteractor;->execute(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private execute(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 91
    .line 92
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 94
    invoke-static {p2}, Lcom/amazon/device/ads/JSONUtils;->getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    if-nez v0, :cond_1

    .line 97
    sget-object v0, Lcom/amazon/device/ads/JavascriptInteractor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "The javascript object \"%s\" could not be parsed for method \"%s\"."

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :goto_0
    return-object v1

    :cond_0
    move-object v0, v1

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/JavascriptInteractor;->execute(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0
.end method

.method private execute(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazon/device/ads/JavascriptInteractor;->methodMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/amazon/device/ads/JavascriptInteractor;->methodMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;

    .line 111
    invoke-virtual {v0, p2}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;->execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 115
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/JavascriptInteractor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "The method %s was not recongized by this javascript interface."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getExecutorMethodName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcom/amazon/device/ads/JavascriptInteractor;->executorMethodName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 52
    const-class v0, Lcom/amazon/device/ads/JavascriptInteractor$Executor;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 55
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/JavascriptInteractor;->executorMethodName:Ljava/lang/String;

    .line 63
    :cond_0
    :goto_0
    sget-object v0, Lcom/amazon/device/ads/JavascriptInteractor;->executorMethodName:Ljava/lang/String;

    return-object v0

    .line 59
    :cond_1
    sget-object v0, Lcom/amazon/device/ads/JavascriptInteractor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Could not obtain the method name for javascript interfacing."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazon/device/ads/JavascriptInteractor;->methodMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There is another executor with that method name already added."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/JavascriptInteractor;->methodMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public getExecutor()Lcom/amazon/device/ads/JavascriptInteractor$Executor;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/amazon/device/ads/JavascriptInteractor;->executor:Lcom/amazon/device/ads/JavascriptInteractor$Executor;

    return-object v0
.end method
