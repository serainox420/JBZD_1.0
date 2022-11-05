.class Lcom/smartadserver/android/library/c/c$a;
.super Ljava/lang/Object;
.source "SASAppLovinAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/applovin/nativeAds/AppLovinNativeAd;

.field b:Landroid/view/View$OnClickListener;

.field c:[Landroid/view/View;

.field d:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

.field final synthetic e:Lcom/smartadserver/android/library/c/c;


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/c/c;Lcom/applovin/nativeAds/AppLovinNativeAd;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 373
    iput-object p1, p0, Lcom/smartadserver/android/library/c/c$a;->e:Lcom/smartadserver/android/library/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p2, p0, Lcom/smartadserver/android/library/c/c$a;->a:Lcom/applovin/nativeAds/AppLovinNativeAd;

    .line 376
    new-instance v0, Lcom/smartadserver/android/library/c/c$a$1;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/c/c$a$1;-><init>(Lcom/smartadserver/android/library/c/c$a;Lcom/smartadserver/android/library/c/c;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->b:Landroid/view/View$OnClickListener;

    .line 387
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->a:Lcom/applovin/nativeAds/AppLovinNativeAd;

    invoke-interface {v0}, Lcom/applovin/nativeAds/AppLovinNativeAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_1

    .line 389
    new-instance v1, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-direct {v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;-><init>()V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/c$a;->d:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    .line 390
    iget-object v1, p0, Lcom/smartadserver/android/library/c/c$a;->d:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setVideoUrl(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->d:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0, v4}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setAutoplay(Z)V

    .line 392
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->d:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setBackgroundColor(I)V

    .line 393
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->d:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-virtual {v0, v4}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setVideoVerticalPosition(I)V

    .line 394
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->a:Lcom/applovin/nativeAds/AppLovinNativeAd;

    invoke-interface {v0}, Lcom/applovin/nativeAds/AppLovinNativeAd;->getVideoStartTrackingUrl()Ljava/lang/String;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/smartadserver/android/library/c/c$a;->d:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    const-string v2, "start"

    new-array v3, v4, [Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setEventTrackingURLs(Ljava/lang/String;[Ljava/lang/String;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->a:Lcom/applovin/nativeAds/AppLovinNativeAd;

    const/16 v1, 0x64

    invoke-interface {v0, v1, v4}, Lcom/applovin/nativeAds/AppLovinNativeAd;->getVideoEndTrackingUrl(IZ)Ljava/lang/String;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/smartadserver/android/library/c/c$a;->d:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    const-string v2, "complete"

    new-array v3, v4, [Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setEventTrackingURLs(Ljava/lang/String;[Ljava/lang/String;)V

    .line 404
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->a:Lcom/applovin/nativeAds/AppLovinNativeAd;

    invoke-interface {v0}, Lcom/applovin/nativeAds/AppLovinNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 478
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->c:[Landroid/view/View;

    if-eqz v0, :cond_0

    .line 480
    iget-object v2, p0, Lcom/smartadserver/android/library/c/c$a;->c:[Landroid/view/View;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 481
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    invoke-virtual {v4, v1}, Landroid/view/View;->setClickable(Z)V

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;[Landroid/view/View;)V
    .locals 4

    .prologue
    .line 491
    if-eqz p2, :cond_0

    .line 492
    iput-object p2, p0, Lcom/smartadserver/android/library/c/c$a;->c:[Landroid/view/View;

    .line 493
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 494
    iget-object v3, p0, Lcom/smartadserver/android/library/c/c$a;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->a:Lcom/applovin/nativeAds/AppLovinNativeAd;

    invoke-interface {v0}, Lcom/applovin/nativeAds/AppLovinNativeAd;->getImpressionTrackingUrl()Ljava/lang/String;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/smartadserver/android/library/c/c$a;->e:Lcom/smartadserver/android/library/c/c;

    invoke-static {v1, v0}, Lcom/smartadserver/android/library/c/c;->a(Lcom/smartadserver/android/library/c/c;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->a:Lcom/applovin/nativeAds/AppLovinNativeAd;

    invoke-interface {v0}, Lcom/applovin/nativeAds/AppLovinNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    const-string v0, ""

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->a:Lcom/applovin/nativeAds/AppLovinNativeAd;

    invoke-interface {v0}, Lcom/applovin/nativeAds/AppLovinNativeAd;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 428
    const/4 v0, -0x1

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 433
    const/4 v0, -0x1

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->a:Lcom/applovin/nativeAds/AppLovinNativeAd;

    invoke-interface {v0}, Lcom/applovin/nativeAds/AppLovinNativeAd;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 443
    const/4 v0, -0x1

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 448
    const/4 v0, -0x1

    return v0
.end method

.method public j()F
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->a:Lcom/applovin/nativeAds/AppLovinNativeAd;

    invoke-interface {v0}, Lcom/applovin/nativeAds/AppLovinNativeAd;->getStarRating()F

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->a:Lcom/applovin/nativeAds/AppLovinNativeAd;

    invoke-interface {v0}, Lcom/applovin/nativeAds/AppLovinNativeAd;->getCtaText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a;->d:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    const-string v0, "http://applovin.com/optoutmobile"

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    const-string v0, ""

    return-object v0
.end method
