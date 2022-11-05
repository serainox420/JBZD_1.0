.class public Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;
.super Lcom/openx/view/tp/adapters/AdapterBase;
.source "FacebookBannerAdapter.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# static fields
.field private static final IAB_LEADERBOARD_WIDTH:I = 0x2d8

.field private static final TAG:Ljava/lang/String; = "FacebookBannerAdapter"


# instance fields
.field private adViewBanner:Lcom/facebook/ads/AdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/openx/view/tp/adapters/AdapterBase;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected canFit(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 72
    int-to-float v1, p1

    iget-object v2, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 73
    iget-object v2, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 74
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 38
    const-string v0, "FacebookBannerAdapter"

    const-string v1, "FacebookBannerView cleanup"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->adViewBanner:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->adViewBanner:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->adViewBanner:Lcom/facebook/ads/AdView;

    .line 46
    :cond_0
    return-void
.end method

.method public loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 4

    .prologue
    .line 51
    new-instance v2, Lcom/facebook/ads/AdView;

    iget-object v3, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->context:Landroid/content/Context;

    iget-object v0, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    const-string v1, "ex_placement_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2d8

    invoke-virtual {p0, v1}, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->canFit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    :goto_0
    invoke-direct {v2, v3, v0, v1}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v2, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->adViewBanner:Lcom/facebook/ads/AdView;

    .line 54
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->adViewBanner:Lcom/facebook/ads/AdView;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 57
    sget-object v0, Lcom/openx/view/tp/chain/ChainManager;->testDeviceIds:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 59
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/openx/view/tp/chain/ChainManager;->testDeviceIds:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 61
    sget-object v1, Lcom/openx/view/tp/chain/ChainManager;->testDeviceIds:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/facebook/ads/AdSettings;->addTestDevice(Ljava/lang/String;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_0
    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->adViewBanner:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->loadAd()V

    .line 68
    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 110
    const-string v0, "FB"

    const-string v1, "ad clicked"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Facebook:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClicked(Lcom/openx/view/tp/chain/SDK;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3

    .prologue
    .line 97
    const-string v0, "FB"

    const-string v1, "ad loaded"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->adViewBanner:Lcom/facebook/ads/AdView;

    if-ne p1, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Facebook:Lcom/openx/view/tp/chain/SDK;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->adViewBanner:Lcom/facebook/ads/AdView;

    invoke-interface {v0, v1, v2}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    .prologue
    .line 80
    const-string v0, "FB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->cleanUp()V

    .line 84
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->adViewBanner:Lcom/facebook/ads/AdView;

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->Facebook:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v1, v2, v0}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdFailedToLoad(Lcom/openx/view/tp/chain/SDK;Lcom/openx/errors/AdError;)V

    .line 92
    :cond_0
    return-void
.end method
