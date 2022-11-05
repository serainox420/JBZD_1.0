.class Lcom/applovin/impl/sdk/cp;
.super Lcom/applovin/impl/sdk/cn;


# instance fields
.field private a:I

.field private final b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;ILcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .locals 3

    sget-object v0, Lcom/applovin/impl/sdk/NativeAdImpl;->SIZE_NATIVE:Lcom/applovin/sdk/AppLovinAdSize;

    sget-object v1, Lcom/applovin/impl/sdk/NativeAdImpl;->TYPE_NATIVE:Lcom/applovin/sdk/AppLovinAdType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/applovin/impl/sdk/cn;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object p3, p0, Lcom/applovin/impl/sdk/cp;->b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    iput p2, p0, Lcom/applovin/impl/sdk/cp;->a:I

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/bw;
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/cx;

    iget-object v1, p0, Lcom/applovin/impl/sdk/cp;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iget-object v2, p0, Lcom/applovin/impl/sdk/cp;->b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-direct {v0, p1, v1, v2}, Lcom/applovin/impl/sdk/cx;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    return-object v0
.end method

.method protected a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cp;->b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cp;->b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method protected b(Ljava/util/Map;)V
    .locals 2

    const-string v0, "slot_count"

    iget v1, p0, Lcom/applovin/impl/sdk/cp;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c(Ljava/util/Map;)V
    .locals 4

    invoke-static {}, Lcom/applovin/impl/sdk/dc;->a()Lcom/applovin/impl/sdk/dc;

    move-result-object v0

    const-string v1, "tFNW"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/dc;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/de;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "etfw"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/de;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ntfw"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/de;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    const-string v0, "nad"

    iget-object v1, p0, Lcom/applovin/impl/sdk/cp;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "tFNW"

    return-object v0
.end method
