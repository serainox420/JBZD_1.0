.class Lcom/applovin/impl/sdk/cx;
.super Lcom/applovin/impl/sdk/bw;


# instance fields
.field private final a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .locals 1

    const-string v0, "TaskRenderNativeAd"

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/sdk/bw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object p3, p0, Lcom/applovin/impl/sdk/cx;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    iput-object p1, p0, Lcom/applovin/impl/sdk/cx;->b:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "simp_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No impression URL available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "{CLCODE}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "click_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No impression URL available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    const-string v1, "{CLCODE}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{EVENT_ID}"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 10

    const-string v0, "native_ads"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/ay;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    const-string v1, "native_settings"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/ay;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "clcode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v6, Lcom/applovin/impl/sdk/bb;

    invoke-direct {v6}, Lcom/applovin/impl/sdk/bb;-><init>()V

    const-string v2, "title"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/applovin/impl/sdk/bb;->e(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v6

    const-string v2, "description"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/applovin/impl/sdk/bb;->f(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v6

    const-string v2, "caption"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/applovin/impl/sdk/bb;->g(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v6

    const-string v2, "cta"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/applovin/impl/sdk/bb;->p(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v6

    const-string v2, "icon_url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/applovin/impl/sdk/bb;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v6

    const-string v2, "image_url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/applovin/impl/sdk/bb;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v6

    const-string v2, "video_url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/applovin/impl/sdk/bb;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v6

    const-string v2, "star_rating_url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/applovin/impl/sdk/bb;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v6

    const-string v2, "icon_url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/applovin/impl/sdk/bb;->h(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v6

    const-string v2, "image_url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/applovin/impl/sdk/bb;->i(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v6

    const-string v2, "video_url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/applovin/impl/sdk/bb;->j(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v6

    const-string v2, "star_rating"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v6, v2}, Lcom/applovin/impl/sdk/bb;->a(F)Lcom/applovin/impl/sdk/bb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/bb;->o(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v2

    invoke-direct {p0, v4, v1}, Lcom/applovin/impl/sdk/cx;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/applovin/impl/sdk/bb;->k(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v6

    const-string v2, "event_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v4, v1, v2}, Lcom/applovin/impl/sdk/cx;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/applovin/impl/sdk/bb;->l(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v2

    invoke-direct {p0, v4, v1}, Lcom/applovin/impl/sdk/cx;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/applovin/impl/sdk/bb;->m(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v2

    invoke-direct {p0, v4, v1}, Lcom/applovin/impl/sdk/cx;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/bb;->n(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;

    move-result-object v1

    const-string v2, "ad_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/applovin/impl/sdk/bb;->a(J)Lcom/applovin/impl/sdk/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cx;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bb;->a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Lcom/applovin/impl/sdk/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bb;->a()Lcom/applovin/impl/sdk/NativeAdImpl;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/applovin/impl/sdk/cx;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "TaskRenderNativeAd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Prepared slot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/NativeAdImpl;->getAdId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/cx;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/cx;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsLoaded(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "video_start_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "{CLCODE}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "video_end_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "{CLCODE}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/cx;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cx;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cx;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "TaskRenderNativeAd"

    const-string v3, "Unable to notify listener about failure."

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/cx;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cx;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, -0x2bc

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/cx;->a(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/cx;->b:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/cx;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cx;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "TaskRenderNativeAd"

    const-string v3, "Unable to render widget."

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, -0xc8

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/cx;->a(I)V

    goto :goto_0
.end method
