.class abstract Lcom/applovin/impl/sdk/ch;
.super Lcom/applovin/impl/sdk/bw;


# instance fields
.field protected a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

.field protected b:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

.field private c:Ljava/util/List;

.field private d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/bw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/impl/sdk/ch;->d:I

    iput-object p4, p0, Lcom/applovin/impl/sdk/ch;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    iput-object p3, p0, Lcom/applovin/impl/sdk/ch;->c:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/bw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/impl/sdk/ch;->d:I

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slots cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p3, p0, Lcom/applovin/impl/sdk/ch;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/applovin/impl/sdk/ch;->b:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ch;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ch;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ch;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ch;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsLoaded(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/applovin/impl/sdk/z;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/applovin/impl/sdk/di;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ch;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ch;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Asked to cache file with null/empty URL, nothing to do."

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/ch;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/di;->a(Lcom/applovin/sdk/AppLovinSdk;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/ch;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ch;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Domain is not whitelisted, skipping precache for URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/ch;->h:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p2, v1, p1, v2}, Lcom/applovin/impl/sdk/z;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/ch;->g:Lcom/applovin/sdk/AppLovinLogger;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ch;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to cache icon resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/ch;->g:Lcom/applovin/sdk/AppLovinLogger;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ch;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to cache icon resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected abstract a(Lcom/applovin/impl/sdk/NativeAdImpl;)V
.end method

.method protected abstract a(Lcom/applovin/impl/sdk/NativeAdImpl;Lcom/applovin/impl/sdk/z;)Z
.end method

.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/ch;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/NativeAdImpl;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ch;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getFileManager()Lcom/applovin/impl/sdk/z;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/ch;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ch;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Beginning resource caching phase..."

    invoke-interface {v3, v4, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/applovin/impl/sdk/ch;->a(Lcom/applovin/impl/sdk/NativeAdImpl;Lcom/applovin/impl/sdk/z;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/applovin/impl/sdk/ch;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/applovin/impl/sdk/ch;->d:I

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/ch;->a(Lcom/applovin/impl/sdk/NativeAdImpl;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ch;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ch;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to cache resources"

    invoke-interface {v0, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget v0, p0, Lcom/applovin/impl/sdk/ch;->d:I

    iget-object v1, p0, Lcom/applovin/impl/sdk/ch;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ch;->c:Ljava/util/List;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/ch;->a(Ljava/util/List;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/ch;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aA:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ch;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ch;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mismatch between successful populations and requested size"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/ch;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ch;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ch;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Encountered exception while notifying publisher code"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/ch;->c:Ljava/util/List;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/ch;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
