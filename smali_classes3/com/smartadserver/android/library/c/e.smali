.class public Lcom/smartadserver/android/library/c/e;
.super Ljava/lang/Object;
.source "SASFacebookAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/c/e$b;,
        Lcom/smartadserver/android/library/c/e$c;,
        Lcom/smartadserver/android/library/c/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/ads/AdView;

.field private b:Lcom/facebook/ads/InterstitialAd;

.field private c:Lcom/facebook/ads/InterstitialAdListener;

.field private d:Lcom/facebook/ads/NativeAd;

.field private e:Lcom/facebook/ads/AdListener;

.field private f:Landroid/view/View;

.field private g:Lcom/smartadserver/android/library/c/g;

.field private h:Lcom/smartadserver/android/library/c/g$a;

.field private i:Lcom/smartadserver/android/library/c/i$a;

.field private j:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/smartadserver/android/library/c/e;->g:Lcom/smartadserver/android/library/c/g;

    .line 50
    iput-object v0, p0, Lcom/smartadserver/android/library/c/e;->h:Lcom/smartadserver/android/library/c/g$a;

    .line 53
    iput-object v0, p0, Lcom/smartadserver/android/library/c/e;->j:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/e;Lcom/smartadserver/android/library/c/g$a;)Lcom/smartadserver/android/library/c/g$a;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/smartadserver/android/library/c/e;->h:Lcom/smartadserver/android/library/c/g$a;

    return-object p1
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/c/i$a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->i:Lcom/smartadserver/android/library/c/i$a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 339
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 340
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->j:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 341
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 343
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->j:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 344
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->j:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v1, v0

    .line 346
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    .line 349
    sget-object v2, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    invoke-virtual {v2}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 350
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    .line 355
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/smartadserver/android/library/c/e;->j:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 356
    new-instance v2, Lcom/facebook/ads/AdView;

    invoke-direct {v2, v1, p1, v0}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v2, p0, Lcom/smartadserver/android/library/c/e;->a:Lcom/facebook/ads/AdView;

    .line 358
    return-void

    .line 351
    :cond_1
    sget-object v2, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    invoke-virtual {v2}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 352
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    goto :goto_0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/ui/SASAdView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->j:Lcom/smartadserver/android/library/ui/SASAdView;

    return-object v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/c/e;)Lcom/facebook/ads/InterstitialAd;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->b:Lcom/facebook/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/c/e;)Lcom/facebook/ads/NativeAd;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->d:Lcom/facebook/ads/NativeAd;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->b:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->b:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 365
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->b:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    .line 367
    :cond_0
    iput-object v1, p0, Lcom/smartadserver/android/library/c/e;->b:Lcom/facebook/ads/InterstitialAd;

    .line 368
    return-void
.end method

.method static synthetic e(Lcom/smartadserver/android/library/c/e;)Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->f:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->a:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->a:Lcom/facebook/ads/AdView;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 374
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->a:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 376
    :cond_0
    iput-object v1, p0, Lcom/smartadserver/android/library/c/e;->a:Lcom/facebook/ads/AdView;

    .line 377
    return-void
.end method

.method static synthetic f(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/c/g$a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->h:Lcom/smartadserver/android/library/c/g$a;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->d:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->d:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->destroy()V

    .line 384
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/e;->d:Lcom/facebook/ads/NativeAd;

    .line 385
    return-void
.end method


# virtual methods
.method public a()Lcom/smartadserver/android/library/c/g;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->g:Lcom/smartadserver/android/library/c/g;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/smartadserver/android/library/ui/SASAdView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/smartadserver/android/library/c/i$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 250
    iput-object v3, p0, Lcom/smartadserver/android/library/c/e;->f:Landroid/view/View;

    .line 252
    const-string v0, "PLACEMENT_ID"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    const-string v1, "Smart AdServer"

    invoke-static {v1}, Lcom/facebook/ads/AdSettings;->setMediationService(Ljava/lang/String;)V

    .line 258
    iput-object p4, p0, Lcom/smartadserver/android/library/c/e;->i:Lcom/smartadserver/android/library/c/i$a;

    .line 259
    iput-object p2, p0, Lcom/smartadserver/android/library/c/e;->j:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 262
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/e;->e()V

    .line 263
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/e;->d()V

    .line 264
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/e;->f()V

    .line 267
    iget-object v1, p0, Lcom/smartadserver/android/library/c/e;->c:Lcom/facebook/ads/InterstitialAdListener;

    if-nez v1, :cond_0

    .line 268
    new-instance v1, Lcom/smartadserver/android/library/c/e$a;

    invoke-direct {v1, p0, v3}, Lcom/smartadserver/android/library/c/e$a;-><init>(Lcom/smartadserver/android/library/c/e;Lcom/smartadserver/android/library/c/e$1;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/e;->c:Lcom/facebook/ads/InterstitialAdListener;

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/smartadserver/android/library/c/e;->e:Lcom/facebook/ads/AdListener;

    if-nez v1, :cond_1

    .line 273
    new-instance v1, Lcom/smartadserver/android/library/c/e$c;

    invoke-direct {v1, p0, v3}, Lcom/smartadserver/android/library/c/e$c;-><init>(Lcom/smartadserver/android/library/c/e;Lcom/smartadserver/android/library/c/e$1;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/e;->e:Lcom/facebook/ads/AdListener;

    .line 277
    :cond_1
    new-instance v1, Lcom/smartadserver/android/library/c/e$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/e$1;-><init>(Lcom/smartadserver/android/library/c/e;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/e;->g:Lcom/smartadserver/android/library/c/g;

    .line 292
    instance-of v1, p2, Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v1, :cond_4

    .line 294
    iget-object v1, p0, Lcom/smartadserver/android/library/c/e;->a:Lcom/facebook/ads/AdView;

    if-nez v1, :cond_2

    .line 296
    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/c/e;->a(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->a:Lcom/facebook/ads/AdView;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/e;->c:Lcom/facebook/ads/InterstitialAdListener;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->a:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->loadAd()V

    .line 306
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->a:Lcom/facebook/ads/AdView;

    iput-object v0, p0, Lcom/smartadserver/android/library/c/e;->f:Landroid/view/View;

    .line 330
    :cond_3
    :goto_0
    return-void

    .line 307
    :cond_4
    instance-of v1, p2, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v1, :cond_7

    .line 309
    iget-object v1, p0, Lcom/smartadserver/android/library/c/e;->b:Lcom/facebook/ads/InterstitialAd;

    if-nez v1, :cond_5

    .line 312
    new-instance v1, Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/e;->b:Lcom/facebook/ads/InterstitialAd;

    .line 313
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->b:Lcom/facebook/ads/InterstitialAd;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/e;->c:Lcom/facebook/ads/InterstitialAdListener;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 317
    :cond_5
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->b:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 318
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->c:Lcom/facebook/ads/InterstitialAdListener;

    invoke-interface {v0, v3}, Lcom/facebook/ads/InterstitialAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    goto :goto_0

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->b:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    goto :goto_0

    .line 324
    :cond_7
    iget-object v1, p0, Lcom/smartadserver/android/library/c/e;->d:Lcom/facebook/ads/NativeAd;

    if-nez v1, :cond_3

    .line 325
    new-instance v1, Lcom/facebook/ads/NativeAd;

    invoke-direct {v1, p1, v0}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/e;->d:Lcom/facebook/ads/NativeAd;

    .line 326
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->d:Lcom/facebook/ads/NativeAd;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/e;->e:Lcom/facebook/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAd;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 327
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e;->d:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->loadAd()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/e;->j:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 391
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/e;->e()V

    .line 392
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/e;->d()V

    .line 393
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 397
    const/4 v0, 0x1

    .line 400
    :try_start_0
    const-string v1, "com.facebook.ads.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    return v0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    const/4 v0, 0x0

    goto :goto_0
.end method
