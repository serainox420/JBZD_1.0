.class Lcom/smartadserver/android/library/c/b$b;
.super Ljava/lang/Object;
.source "SASAdMobAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/b;

.field private b:Lcom/google/android/gms/ads/formats/NativeAd;

.field private c:Lcom/google/android/gms/ads/formats/MediaView;

.field private d:Lcom/google/android/gms/ads/formats/NativeAd$Image;

.field private e:Lcom/google/android/gms/ads/formats/NativeAd$Image;

.field private f:Lcom/google/android/gms/ads/formats/NativeAdView;

.field private g:Landroid/widget/ImageView;

.field private h:Ljava/lang/String;

.field private i:F

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/view/View$OnClickListener;

.field private n:[Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/c/b;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V
    .locals 2

    .prologue
    .line 253
    iput-object p1, p0, Lcom/smartadserver/android/library/c/b$b;->a:Lcom/smartadserver/android/library/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->h:Ljava/lang/String;

    .line 220
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/smartadserver/android/library/c/b$b;->i:F

    .line 223
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->l:Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/b$b;->o()V

    .line 256
    iput-object p2, p0, Lcom/smartadserver/android/library/c/b$b;->b:Lcom/google/android/gms/ads/formats/NativeAd;

    .line 257
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->d:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    .line 258
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->e:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    .line 262
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->h:Ljava/lang/String;

    .line 263
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->j:Ljava/lang/String;

    .line 264
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->k:Ljava/lang/String;

    .line 265
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/c/b$b;->i:F

    .line 266
    return-void
.end method

.method public constructor <init>(Lcom/smartadserver/android/library/c/b;Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .locals 2

    .prologue
    .line 228
    iput-object p1, p0, Lcom/smartadserver/android/library/c/b$b;->a:Lcom/smartadserver/android/library/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->h:Ljava/lang/String;

    .line 220
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/smartadserver/android/library/c/b$b;->i:F

    .line 223
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->l:Ljava/lang/String;

    .line 230
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/b$b;->o()V

    .line 231
    iput-object p2, p0, Lcom/smartadserver/android/library/c/b$b;->b:Lcom/google/android/gms/ads/formats/NativeAd;

    .line 232
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->d:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    .line 233
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 234
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->e:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    .line 236
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->h:Ljava/lang/String;

    .line 237
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->j:Ljava/lang/String;

    .line 238
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->k:Ljava/lang/String;

    .line 240
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/b$b;)Lcom/google/android/gms/ads/formats/NativeAdView;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->f:Lcom/google/android/gms/ads/formats/NativeAdView;

    return-object v0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/c/b$b;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lcom/smartadserver/android/library/c/b$b$1;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/c/b$b$1;-><init>(Lcom/smartadserver/android/library/c/b$b;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->m:Landroid/view/View$OnClickListener;

    .line 250
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->c:Lcom/google/android/gms/ads/formats/MediaView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->b:Lcom/google/android/gms/ads/formats/NativeAd;

    instance-of v0, v0, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    if-eqz v0, :cond_0

    .line 339
    new-instance v0, Lcom/google/android/gms/ads/formats/MediaView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/formats/MediaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->c:Lcom/google/android/gms/ads/formats/MediaView;

    .line 340
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->c:Lcom/google/android/gms/ads/formats/MediaView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/MediaView;->setBackgroundColor(I)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->c:Lcom/google/android/gms/ads/formats/MediaView;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->n:[Landroid/view/View;

    if-eqz v0, :cond_0

    .line 370
    iget-object v2, p0, Lcom/smartadserver/android/library/c/b$b;->n:[Landroid/view/View;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 371
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    invoke-virtual {v4, v1}, Landroid/view/View;->setClickable(Z)V

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    const-class v0, Lcom/smartadserver/android/library/ui/SASAdChoicesView;

    invoke-static {p1, v0}, Lcom/smartadserver/android/library/c/b;->a(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/SASAdChoicesView;

    .line 380
    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdChoicesView;->a()V

    .line 384
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;[Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 388
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->f:Lcom/google/android/gms/ads/formats/NativeAdView;

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->b:Lcom/google/android/gms/ads/formats/NativeAd;

    instance-of v0, v0, Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz v0, :cond_2

    .line 390
    new-instance v0, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/formats/NativeContentAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->f:Lcom/google/android/gms/ads/formats/NativeAdView;

    .line 391
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->f:Lcom/google/android/gms/ads/formats/NativeAdView;

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    iget-object v2, p0, Lcom/smartadserver/android/library/c/b$b;->f:Lcom/google/android/gms/ads/formats/NativeAdView;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setImageView(Landroid/view/View;)V

    .line 401
    :cond_0
    :goto_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->f:Lcom/google/android/gms/ads/formats/NativeAdView;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/NativeAdView;->setBackgroundColor(I)V

    move-object v0, p1

    .line 406
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/smartadserver/android/library/c/b$b;->f:Lcom/google/android/gms/ads/formats/NativeAdView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0x64

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->f:Lcom/google/android/gms/ads/formats/NativeAdView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/NativeAdView;->setVisibility(I)V

    .line 411
    :cond_1
    if-eqz p2, :cond_3

    .line 412
    iput-object p2, p0, Lcom/smartadserver/android/library/c/b$b;->n:[Landroid/view/View;

    .line 413
    array-length v2, p2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, p2, v0

    .line 414
    iget-object v4, p0, Lcom/smartadserver/android/library/c/b$b;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->b:Lcom/google/android/gms/ads/formats/NativeAd;

    instance-of v0, v0, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->f:Lcom/google/android/gms/ads/formats/NativeAdView;

    .line 394
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->f:Lcom/google/android/gms/ads/formats/NativeAdView;

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    iget-object v2, p0, Lcom/smartadserver/android/library/c/b$b;->f:Lcom/google/android/gms/ads/formats/NativeAdView;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setImageView(Landroid/view/View;)V

    .line 395
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->f:Lcom/google/android/gms/ads/formats/NativeAdView;

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    iget-object v2, p0, Lcom/smartadserver/android/library/c/b$b;->c:Lcom/google/android/gms/ads/formats/MediaView;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setMediaView(Lcom/google/android/gms/ads/formats/MediaView;)V

    goto :goto_0

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->f:Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v2, p0, Lcom/smartadserver/android/library/c/b$b;->b:Lcom/google/android/gms/ads/formats/NativeAd;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    .line 421
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->f:Lcom/google/android/gms/ads/formats/NativeAdView;

    const-class v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/c/b;->a(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->g:Landroid/widget/ImageView;

    .line 424
    const-class v0, Lcom/smartadserver/android/library/ui/SASAdChoicesView;

    invoke-static {p1, v0}, Lcom/smartadserver/android/library/c/b;->a(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/SASAdChoicesView;

    .line 425
    iget-object v2, p0, Lcom/smartadserver/android/library/c/b$b;->g:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 426
    new-instance v1, Lcom/smartadserver/android/library/c/b$b$2;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/b$b$2;-><init>(Lcom/smartadserver/android/library/c/b$b;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdChoicesView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    :goto_2
    return-void

    .line 436
    :cond_4
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->f:Lcom/google/android/gms/ads/formats/NativeAdView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdView;->setVisibility(I)V

    goto :goto_2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, ""

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    const-string v0, ""

    .line 286
    iget-object v1, p0, Lcom/smartadserver/android/library/c/b$b;->d:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    if-eqz v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->d:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_0
    return-object v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 294
    const/4 v0, -0x1

    .line 295
    iget-object v1, p0, Lcom/smartadserver/android/library/c/b$b;->d:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartadserver/android/library/c/b$b;->d:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->d:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 298
    :cond_0
    return v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 303
    const/4 v0, -0x1

    .line 304
    iget-object v1, p0, Lcom/smartadserver/android/library/c/b$b;->d:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartadserver/android/library/c/b$b;->d:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->d:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 307
    :cond_0
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    const-string v0, ""

    .line 313
    iget-object v1, p0, Lcom/smartadserver/android/library/c/b$b;->e:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    if-eqz v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->e:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_0
    return-object v0
.end method

.method public h()I
    .locals 2

    .prologue
    .line 321
    const/4 v0, -0x1

    .line 322
    iget-object v1, p0, Lcom/smartadserver/android/library/c/b$b;->e:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartadserver/android/library/c/b$b;->e:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->e:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 325
    :cond_0
    return v0
.end method

.method public i()I
    .locals 2

    .prologue
    .line 330
    const/4 v0, -0x1

    .line 331
    iget-object v1, p0, Lcom/smartadserver/android/library/c/b$b;->e:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartadserver/android/library/c/b$b;->e:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->e:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 334
    :cond_0
    return v0
.end method

.method public j()F
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/smartadserver/android/library/c/b$b;->i:F

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;
    .locals 2

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    iget-object v1, p0, Lcom/smartadserver/android/library/c/b$b;->b:Lcom/google/android/gms/ads/formats/NativeAd;

    instance-of v1, v1, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    if-eqz v1, :cond_0

    .line 359
    new-instance v0, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-direct {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;-><init>()V

    .line 360
    invoke-virtual {p0}, Lcom/smartadserver/android/library/c/b$b;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setMediaWidth(I)V

    .line 361
    invoke-virtual {p0}, Lcom/smartadserver/android/library/c/b$b;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setMediaHeight(I)V

    .line 363
    :cond_0
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    const-string v0, ""

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$b;->l:Ljava/lang/String;

    return-object v0
.end method
