.class public Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;
.super Lcom/openx/view/tp/adapters/AdapterBase;
.source "AdNetworkBannerAdapter.java"

# interfaces
.implements Lcom/openx/view/AdEventsListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdNetworkBannerAdapter"


# instance fields
.field private adBanner:Lcom/openx/view/AdBanner;

.field private adContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p3}, Lcom/openx/view/tp/adapters/AdapterBase;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    .line 29
    iput-object p2, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->adContainer:Landroid/view/ViewGroup;

    .line 31
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 103
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "AdNetworkBannerAdapter"

    const-string v1, "SSM clean up"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    invoke-virtual {v0, v2}, Lcom/openx/view/AdBanner;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 107
    iput-object v2, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    .line 110
    :cond_0
    return-void
.end method

.method public loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    new-instance v0, Lcom/openx/view/AdBanner;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->mediationUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/openx/view/AdBanner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/openx/view/tp/chain/parser/ChainItem;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    .line 51
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    invoke-virtual {v0, p0}, Lcom/openx/view/AdBanner;->setAdEventsListener(Lcom/openx/view/AdEventsListener;)V

    .line 53
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    invoke-virtual {v0, v4}, Lcom/openx/view/AdBanner;->setAutoRefreshInterval(I)V

    .line 55
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->adContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 56
    new-instance v0, Lcom/openx/core/network/OXAdRequest;

    invoke-direct {v0}, Lcom/openx/core/network/OXAdRequest;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    invoke-virtual {v1, v0}, Lcom/openx/view/AdBanner;->load(Lcom/openx/core/network/OXAdRequest;)V

    .line 61
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->AdNetwork:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v0, v1}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdClicked(Lcom/openx/view/tp/chain/SDK;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onAdDidLoad()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->AdNetwork:Lcom/openx/view/tp/chain/SDK;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->adBanner:Lcom/openx/view/AdBanner;

    invoke-interface {v0, v1, v2}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/openx/errors/AdError;)V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/openx/errors/UnknownError;

    invoke-virtual {p1}, Lcom/openx/errors/AdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openx/errors/UnknownError;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    sget-object v2, Lcom/openx/view/tp/chain/SDK;->AdNetwork:Lcom/openx/view/tp/chain/SDK;

    invoke-interface {v1, v2, v0}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdFailedToLoad(Lcom/openx/view/tp/chain/SDK;Lcom/openx/errors/AdError;)V

    .line 81
    :cond_0
    return-void
.end method
