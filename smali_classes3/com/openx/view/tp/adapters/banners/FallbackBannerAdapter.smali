.class public Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;
.super Lcom/openx/view/tp/adapters/AdapterBase;
.source "FallbackBannerAdapter.java"

# interfaces
.implements Lcom/openx/view/AdEventsListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FallbackBannerAdapter"


# instance fields
.field private adBanner:Lcom/openx/view/AdBanner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/openx/view/tp/adapters/AdapterBase;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    .line 26
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 98
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "FallbackBannerAdapter"

    const-string v1, "cleanUp: FallbackBannerAdapter "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    invoke-virtual {v0, v2}, Lcom/openx/view/AdBanner;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 102
    iput-object v2, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    .line 104
    :cond_0
    return-void
.end method

.method public loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 32
    new-instance v0, Lcom/openx/view/AdBanner;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/openx/view/AdBanner;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/parser/ChainItem;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    .line 34
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    invoke-virtual {v0, p0}, Lcom/openx/view/AdBanner;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 36
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openx/view/AdBanner;->setAutoRefreshInterval(I)V

    .line 38
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 39
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 40
    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    invoke-virtual {v1, v0}, Lcom/openx/view/AdBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    invoke-virtual {v0}, Lcom/openx/view/AdBanner;->loadFallback()V

    .line 44
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Fallback:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClicked(Lcom/openx/view/tp/chain/SDK;)V

    .line 92
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "FallbackBannerAdapter"

    const-string v1, " closing the ad in fallback banner adapter - so chainmanager can ask activity to disable the button"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Fallback:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClosed(Lcom/openx/view/tp/chain/SDK;)V

    .line 82
    :cond_0
    return-void
.end method

.method public onAdDidLoad()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->Fallback:Lcom/openx/view/tp/chain/SDK;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    invoke-interface {v0, v1, v2}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    invoke-virtual {v0}, Lcom/openx/view/AdBanner;->stoppedLoading()V

    .line 58
    :cond_1
    return-void
.end method

.method public onAdFailedToLoad(Lcom/openx/errors/AdError;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-virtual {p1}, Lcom/openx/errors/AdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->Fallback:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v1, v2, v0}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdFailedToLoad(Lcom/openx/view/tp/chain/SDK;Lcom/openx/errors/AdError;)V

    .line 70
    :cond_0
    return-void
.end method
