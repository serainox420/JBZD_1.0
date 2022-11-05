.class public Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;
.super Lcom/openx/view/tp/adapters/AdapterBase;
.source "MoPubBannerAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MoPubBannerAdapter"


# instance fields
.field private mBannerView:Lcom/mopub/mobileads/MoPubView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/openx/view/tp/adapters/AdapterBase;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    .line 24
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 30
    const-string v0, "MoPubBannerAdapter"

    const-string v1, "mopubView is getting destroyed on cleanup"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->mBannerView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->mBannerView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 35
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->mBannerView:Lcom/mopub/mobileads/MoPubView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 38
    :cond_0
    return-void
.end method

.method public loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->mBannerView:Lcom/mopub/mobileads/MoPubView;

    .line 45
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->mBannerView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 47
    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->mBannerView:Lcom/mopub/mobileads/MoPubView;

    iget-object v0, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    const-string v2, "adUnit"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->mBannerView:Lcom/mopub/mobileads/MoPubView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->mBannerView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    .line 51
    return-void
.end method

.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->MoPub:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClicked(Lcom/openx/view/tp/chain/SDK;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 3

    .prologue
    .line 78
    const-string v0, "MoPubBannerAdapter"

    const-string v1, "Mopub banner failed:"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->cleanUp()V

    .line 81
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->MoPub:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v1, v2, v0}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdFailedToLoad(Lcom/openx/view/tp/chain/SDK;Lcom/openx/errors/AdError;)V

    .line 87
    :cond_0
    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->MoPub:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1, p1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 97
    :cond_0
    return-void
.end method
