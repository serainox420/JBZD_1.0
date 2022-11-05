.class Lcom/applovin/impl/sdk/bj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/bi;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bj;->a:Lcom/applovin/impl/sdk/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdsFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bj;->a:Lcom/applovin/impl/sdk/bi;

    iget-object v0, v0, Lcom/applovin/impl/sdk/bi;->b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bj;->a:Lcom/applovin/impl/sdk/bi;

    iget-object v0, v0, Lcom/applovin/impl/sdk/bi;->b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method public onNativeAdsLoaded(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bj;->a:Lcom/applovin/impl/sdk/bi;

    iget-object v0, v0, Lcom/applovin/impl/sdk/bi;->b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/bj;->a:Lcom/applovin/impl/sdk/bi;

    iget-object v1, v1, Lcom/applovin/impl/sdk/bi;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/applovin/impl/sdk/bj;->a:Lcom/applovin/impl/sdk/bi;

    iget-object v1, v1, Lcom/applovin/impl/sdk/bi;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/applovin/impl/sdk/bj;->a:Lcom/applovin/impl/sdk/bi;

    iget-object v1, v1, Lcom/applovin/impl/sdk/bi;->b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {v1, v0}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsLoaded(Ljava/util/List;)V

    :cond_0
    return-void
.end method
