.class public Lcom/amazon/device/ads/DefaultAdListener;
.super Ljava/lang/Object;
.source "DefaultAdListener.java"

# interfaces
.implements Lcom/amazon/device/ads/ExtendedAdListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/amazon/device/ads/DefaultAdListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DefaultAdListener;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/amazon/device/ads/DefaultAdListener;->LOGTAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DefaultAdListener;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 36
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazon/device/ads/DefaultAdListener;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method getLogger()Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Default ad listener called - Ad Collapsed."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Default ad listener called - Ad Dismissed."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Default ad listener called - Ad Will Expand."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onAdExpired(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Default ad listener called - Ad Expired."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Default ad listener called - Ad Failed to Load. Error code: %s, Error Message: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Default ad listener called - AdLoaded."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Default ad listener called - Ad Resized."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 95
    return-void
.end method
