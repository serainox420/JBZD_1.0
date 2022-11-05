.class Lcom/amazon/device/ads/AdControllerFactory;
.super Ljava/lang/Object;
.source "AdControllerFactory.java"


# static fields
.field private static cachedAdControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

.field private static cachedAdController:Lcom/amazon/device/ads/AdController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdController:Lcom/amazon/device/ads/AdController;

    .line 13
    sput-object v0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheAdControlAccessor(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 0

    .prologue
    .line 21
    sput-object p0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    .line 22
    return-void
.end method

.method public static cacheAdController(Lcom/amazon/device/ads/AdController;)V
    .locals 0

    .prologue
    .line 17
    sput-object p0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdController:Lcom/amazon/device/ads/AdController;

    .line 18
    return-void
.end method

.method public static getCachedAdControlAccessor()Lcom/amazon/device/ads/AdControlAccessor;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    return-object v0
.end method

.method public static getCachedAdController()Lcom/amazon/device/ads/AdController;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdController:Lcom/amazon/device/ads/AdController;

    return-object v0
.end method

.method public static removeCachedAdControlAccessor()Lcom/amazon/device/ads/AdControlAccessor;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    .line 42
    const/4 v1, 0x0

    sput-object v1, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    .line 43
    return-object v0
.end method

.method public static removeCachedAdController()Lcom/amazon/device/ads/AdController;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdController:Lcom/amazon/device/ads/AdController;

    .line 36
    const/4 v1, 0x0

    sput-object v1, Lcom/amazon/device/ads/AdControllerFactory;->cachedAdController:Lcom/amazon/device/ads/AdController;

    .line 37
    return-object v0
.end method


# virtual methods
.method public buildAdController(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)Lcom/amazon/device/ads/AdController;
    .locals 1

    .prologue
    .line 48
    .line 51
    :try_start_0
    new-instance v0, Lcom/amazon/device/ads/AdController;

    invoke-direct {v0, p1, p2}, Lcom/amazon/device/ads/AdController;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 55
    const/4 v0, 0x0

    goto :goto_0
.end method
