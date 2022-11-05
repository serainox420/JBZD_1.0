.class Lcom/applovin/impl/sdk/be;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/nativeAds/AppLovinNativeAdService;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/be;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-void
.end method

.method private a(Lcom/applovin/nativeAds/AppLovinNativeAd;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Lcom/applovin/impl/sdk/NativeAdImpl;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/be;Lcom/applovin/nativeAds/AppLovinNativeAd;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/nativeAds/AppLovinNativeAd;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/be;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/be;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/be;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;Lcom/applovin/nativeAds/AppLovinNativeAd;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;Lcom/applovin/nativeAds/AppLovinNativeAd;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/be;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;Lcom/applovin/nativeAds/AppLovinNativeAd;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;Lcom/applovin/nativeAds/AppLovinNativeAd;Z)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/be;Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/be;->c(Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    return-void
.end method

.method private a(Lcom/applovin/nativeAds/AppLovinNativeAd;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V
    .locals 4

    invoke-interface {p1}, Lcom/applovin/nativeAds/AppLovinNativeAd;->isVideoPrecached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;->onNativeAdVideoPreceached(Lcom/applovin/nativeAds/AppLovinNativeAd;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/nativeAds/AppLovinNativeAd;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/ci;

    iget-object v2, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    new-instance v3, Lcom/applovin/impl/sdk/bh;

    invoke-direct {v3, p0, p2}, Lcom/applovin/impl/sdk/bh;-><init>(Lcom/applovin/impl/sdk/be;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/ci;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cr;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cs;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/bw;Lcom/applovin/impl/sdk/cs;)V

    goto :goto_0
.end method

.method private a(Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;I)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, p2}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "WidgetServiceImpl"

    const-string v3, "Encountered exception whilst notifying user callback"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, p2}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsLoaded(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "WidgetServiceImpl"

    const-string v3, "Encountered exception whilst notifying user callback"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;Lcom/applovin/nativeAds/AppLovinNativeAd;IZ)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p4, :cond_1

    :try_start_0
    invoke-interface {p1, p2, p3}, Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;->onNativeAdVideoPrecachingFailed(Lcom/applovin/nativeAds/AppLovinNativeAd;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, p2, p3}, Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;->onNativeAdImagePrecachingFailed(Lcom/applovin/nativeAds/AppLovinNativeAd;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "WidgetServiceImpl"

    const-string v3, "Encountered exception whilst notifying user callback"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;Lcom/applovin/nativeAds/AppLovinNativeAd;Z)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface {p1, p2}, Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;->onNativeAdVideoPreceached(Lcom/applovin/nativeAds/AppLovinNativeAd;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, p2}, Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;->onNativeAdImagesPrecached(Lcom/applovin/nativeAds/AppLovinNativeAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "WidgetServiceImpl"

    const-string v3, "Encountered exception whilst notifying user callback"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/cg;

    iget-object v1, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    new-instance v2, Lcom/applovin/impl/sdk/bk;

    invoke-direct {v2, p0, p2}, Lcom/applovin/impl/sdk/bk;-><init>(Lcom/applovin/impl/sdk/be;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/applovin/impl/sdk/cg;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cr;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cs;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/bw;Lcom/applovin/impl/sdk/cs;)V

    return-void
.end method

.method private c(Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/ci;

    iget-object v1, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    new-instance v2, Lcom/applovin/impl/sdk/bl;

    invoke-direct {v2, p0, p2}, Lcom/applovin/impl/sdk/bl;-><init>(Lcom/applovin/impl/sdk/be;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/applovin/impl/sdk/ci;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cr;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cs;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/bw;Lcom/applovin/impl/sdk/cs;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aL:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsLoaded(Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    const/16 v0, -0x2bc

    invoke-interface {p2, v0}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/bi;

    invoke-direct {v1, p0, v2, p2, v0}, Lcom/applovin/impl/sdk/bi;-><init>(Lcom/applovin/impl/sdk/be;Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;Ljava/util/List;)V

    invoke-direct {p0, v2, v1}, Lcom/applovin/impl/sdk/be;->b(Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    goto :goto_0
.end method

.method public loadNativeAds(ILcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/applovin/impl/sdk/be;->b:Ljava/lang/Object;

    monitor-enter v1

    if-ne p1, v4, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->d()Lcom/applovin/impl/sdk/bc;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/NativeAdImpl;->SPEC_NATIVE:Lcom/applovin/impl/sdk/c;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/bc;->e(Lcom/applovin/impl/sdk/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->d()Lcom/applovin/impl/sdk/bc;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/NativeAdImpl;->SPEC_NATIVE:Lcom/applovin/impl/sdk/c;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/bc;->b(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/az;

    move-result-object v0

    check-cast v0, Lcom/applovin/nativeAds/AppLovinNativeAd;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    new-array v1, v4, [Lcom/applovin/nativeAds/AppLovinNativeAd;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;Ljava/util/List;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    new-instance v0, Lcom/applovin/impl/sdk/cp;

    iget-object v1, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    new-instance v2, Lcom/applovin/impl/sdk/bf;

    invoke-direct {v2, p0, p2}, Lcom/applovin/impl/sdk/bf;-><init>(Lcom/applovin/impl/sdk/be;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/applovin/impl/sdk/cp;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;ILcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cr;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cs;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/bw;Lcom/applovin/impl/sdk/cs;)V

    goto :goto_0
.end method

.method public precacheResources(Lcom/applovin/nativeAds/AppLovinNativeAd;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V
    .locals 4

    invoke-interface {p1}, Lcom/applovin/nativeAds/AppLovinNativeAd;->isImagePrecached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;->onNativeAdImagesPrecached(Lcom/applovin/nativeAds/AppLovinNativeAd;)V

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/nativeAds/AppLovinNativeAd;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/nativeAds/AppLovinNativeAd;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/cg;

    iget-object v2, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    new-instance v3, Lcom/applovin/impl/sdk/bg;

    invoke-direct {v3, p0, p2}, Lcom/applovin/impl/sdk/bg;-><init>(Lcom/applovin/impl/sdk/be;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/cg;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/be;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cr;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cs;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/bw;Lcom/applovin/impl/sdk/cs;)V

    goto :goto_0
.end method
