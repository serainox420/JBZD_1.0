.class public Lcom/applovin/impl/sdk/bc;
.super Lcom/applovin/impl/sdk/br;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/br;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method a(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/bw;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/applovin/impl/sdk/cp;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1, v2, p0}, Lcom/applovin/impl/sdk/cp;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;ILcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/cp;->a(Z)V

    return-object v0
.end method

.method a(Lcom/applovin/impl/sdk/az;)Lcom/applovin/impl/sdk/c;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/NativeAdImpl;->SPEC_NATIVE:Lcom/applovin/impl/sdk/c;

    return-object v0
.end method

.method a()Ljava/util/Map;
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Lcom/applovin/impl/sdk/bs;

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/bx;->aE:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/applovin/impl/sdk/bs;-><init>(I)V

    sget-object v0, Lcom/applovin/impl/sdk/NativeAdImpl;->SPEC_NATIVE:Lcom/applovin/impl/sdk/c;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public a(Lcom/applovin/impl/sdk/c;I)V
    .locals 0

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/impl/sdk/az;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/nativeAds/AppLovinNativeAd;

    const/4 v1, 0x0

    check-cast p2, Lcom/applovin/nativeAds/AppLovinNativeAd;

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {p1, v0}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsLoaded(Ljava/util/List;)V

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/impl/sdk/c;I)V
    .locals 0

    check-cast p1, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {p1, p3}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    return-void
.end method

.method public bridge synthetic a(Lcom/applovin/impl/sdk/c;Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/applovin/impl/sdk/br;->a(Lcom/applovin/impl/sdk/c;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic b(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/az;
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/br;->b(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/az;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Lcom/applovin/impl/sdk/c;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/applovin/impl/sdk/br;->b(Lcom/applovin/impl/sdk/c;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/applovin/impl/sdk/c;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/br;->c(Lcom/applovin/impl/sdk/c;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d(Lcom/applovin/impl/sdk/c;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/br;->d(Lcom/applovin/impl/sdk/c;)V

    return-void
.end method

.method public bridge synthetic e(Lcom/applovin/impl/sdk/c;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/br;->e(Lcom/applovin/impl/sdk/c;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f(Lcom/applovin/impl/sdk/c;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/br;->f(Lcom/applovin/impl/sdk/c;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 0

    return-void
.end method

.method public onNativeAdsFailedToLoad(I)V
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/NativeAdImpl;->SPEC_NATIVE:Lcom/applovin/impl/sdk/c;

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/bc;->b(Lcom/applovin/impl/sdk/c;I)V

    return-void
.end method

.method public onNativeAdsLoaded(Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/nativeAds/AppLovinNativeAd;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/bx;->bm:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getNativeAdService()Lcom/applovin/nativeAds/AppLovinNativeAdService;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/bd;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/bd;-><init>(Lcom/applovin/impl/sdk/bc;)V

    invoke-interface {v1, v0, v2}, Lcom/applovin/nativeAds/AppLovinNativeAdService;->precacheResources(Lcom/applovin/nativeAds/AppLovinNativeAd;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lcom/applovin/impl/sdk/az;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/bc;->c(Lcom/applovin/impl/sdk/az;)V

    goto :goto_0
.end method
