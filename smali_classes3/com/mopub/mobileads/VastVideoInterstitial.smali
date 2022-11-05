.class Lcom/mopub/mobileads/VastVideoInterstitial;
.super Lcom/mopub/mobileads/ResponseBodyInterstitial;
.source "VastVideoInterstitial.java"

# interfaces
.implements Lcom/mopub/mobileads/VastManager$VastManagerListener;


# instance fields
.field private d:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private e:Ljava/lang/String;

.field private f:Lcom/mopub/mobileads/VastManager;

.field private g:Lcom/mopub/mobileads/VastVideoConfig;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 4

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->d:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 24
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/CacheService;->initializeDiskCache(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->d:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 32
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/mobileads/factories/VastManagerFactory;->create(Landroid/content/Context;)Lcom/mopub/mobileads/VastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->f:Lcom/mopub/mobileads/VastManager;

    .line 30
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->f:Lcom/mopub/mobileads/VastManager;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->b:Lcom/mopub/common/AdReport;

    invoke-virtual {v2}, Lcom/mopub/common/AdReport;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/mopub/mobileads/VastManager;->prepareVastVideoConfiguration(Ljava/lang/String;Lcom/mopub/mobileads/VastManager$VastManagerListener;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->e:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public onInvalidate()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->f:Lcom/mopub/mobileads/VastManager;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->f:Lcom/mopub/mobileads/VastManager;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastManager;->cancel()V

    .line 45
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;->onInvalidate()V

    .line 46
    return-void
.end method

.method public onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 2

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->d:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->g:Lcom/mopub/mobileads/VastVideoConfig;

    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->d:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->g:Lcom/mopub/mobileads/VastVideoConfig;

    iget-wide v2, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;J)V

    .line 37
    return-void
.end method
