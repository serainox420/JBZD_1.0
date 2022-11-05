.class Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;
.super Ljava/lang/Object;
.source "ViewabilityJavascriptFetcherListener.java"

# interfaces
.implements Lcom/amazon/device/ads/Configuration$ConfigurationListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private viewabilityJavascriptFetcher:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    invoke-direct {v0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;-><init>()V

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;-><init>(Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 13
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;->viewabilityJavascriptFetcher:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    .line 17
    sget-object v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 18
    return-void
.end method


# virtual methods
.method public onConfigurationFailure()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Configuration fetching failed so Viewability Javascript fetch will not proceed."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public onConfigurationReady()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;->viewabilityJavascriptFetcher:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->fetchJavascript()V

    .line 24
    return-void
.end method
