.class public Lcom/smartadserver/android/library/c/b;
.super Ljava/lang/Object;
.source "SASAdMobAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/c/b$b;,
        Lcom/smartadserver/android/library/c/b$c;,
        Lcom/smartadserver/android/library/c/b$a;
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/ads/AdLoader$Builder;

.field b:Lcom/google/android/gms/ads/AdLoader;

.field c:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field private d:Lcom/google/android/gms/ads/AdView;

.field private e:Lcom/google/android/gms/ads/NativeExpressAdView;

.field private f:Lcom/google/android/gms/ads/InterstitialAd;

.field private g:Lcom/google/android/gms/ads/AdListener;

.field private h:Lcom/google/android/gms/ads/AdListener;

.field private i:Lcom/google/android/gms/ads/AdListener;

.field private j:Lcom/google/android/gms/ads/AdListener;

.field private k:Landroid/view/View;

.field private l:Lcom/smartadserver/android/library/c/g;

.field private m:Lcom/smartadserver/android/library/c/g$a;

.field private n:Lcom/smartadserver/android/library/c/i$a;

.field private o:Lcom/smartadserver/android/library/ui/SASAdView;

.field private p:I

.field private q:I

.field private r:Z

.field private s:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/smartadserver/android/library/c/b$a;

    const-string v1, "Banner"

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/c/b$a;-><init>(Lcom/smartadserver/android/library/c/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->g:Lcom/google/android/gms/ads/AdListener;

    .line 64
    new-instance v0, Lcom/smartadserver/android/library/c/b$a;

    const-string v1, "Interstitial"

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/c/b$a;-><init>(Lcom/smartadserver/android/library/c/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->h:Lcom/google/android/gms/ads/AdListener;

    .line 65
    new-instance v0, Lcom/smartadserver/android/library/c/b$a;

    const-string v1, "Native Express"

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/c/b$a;-><init>(Lcom/smartadserver/android/library/c/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->i:Lcom/google/android/gms/ads/AdListener;

    .line 69
    new-instance v0, Lcom/smartadserver/android/library/c/b$1;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/c/b$1;-><init>(Lcom/smartadserver/android/library/c/b;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->j:Lcom/google/android/gms/ads/AdListener;

    .line 77
    iput-object v2, p0, Lcom/smartadserver/android/library/c/b;->k:Landroid/view/View;

    .line 78
    iput-object v2, p0, Lcom/smartadserver/android/library/c/b;->l:Lcom/smartadserver/android/library/c/g;

    .line 79
    iput-object v2, p0, Lcom/smartadserver/android/library/c/b;->m:Lcom/smartadserver/android/library/c/g$a;

    .line 83
    iput-object v2, p0, Lcom/smartadserver/android/library/c/b;->o:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/c/b;->r:Z

    .line 143
    new-instance v0, Lcom/smartadserver/android/library/c/b$c;

    invoke-direct {v0, p0, v2}, Lcom/smartadserver/android/library/c/b$c;-><init>(Lcom/smartadserver/android/library/c/b;Lcom/smartadserver/android/library/c/b$1;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->s:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    .line 209
    return-void
.end method

.method static synthetic a(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/smartadserver/android/library/c/b;->b(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/c/i$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->n:Lcom/smartadserver/android/library/c/i$a;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/ads/formats/NativeAd;)V
    .locals 2

    .prologue
    .line 637
    const-string v0, "SASAdMobAdapter"

    const-string v1, "AdMob native ad loaded"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->n:Lcom/smartadserver/android/library/c/i$a;

    if-eqz v0, :cond_1

    .line 640
    instance-of v0, p1, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    if-eqz v0, :cond_2

    .line 641
    new-instance v0, Lcom/smartadserver/android/library/c/b$b;

    check-cast p1, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/c/b$b;-><init>(Lcom/smartadserver/android/library/c/b;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->m:Lcom/smartadserver/android/library/c/g$a;

    .line 645
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->n:Lcom/smartadserver/android/library/c/i$a;

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    .line 647
    :cond_1
    return-void

    .line 642
    :cond_2
    instance-of v0, p1, Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz v0, :cond_0

    .line 643
    new-instance v0, Lcom/smartadserver/android/library/c/b$b;

    check-cast p1, Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/c/b$b;-><init>(Lcom/smartadserver/android/library/c/b;Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->m:Lcom/smartadserver/android/library/c/g$a;

    goto :goto_0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/b;Lcom/google/android/gms/ads/formats/NativeAd;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/c/b;->a(Lcom/google/android/gms/ads/formats/NativeAd;)V

    return-void
.end method

.method private static b(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .locals 3

    .prologue
    .line 456
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    :goto_0
    return-object p0

    .line 461
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 462
    check-cast p0, Landroid/view/ViewGroup;

    .line 463
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 464
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 465
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/smartadserver/android/library/c/b;->b(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    .line 466
    if-eqz v0, :cond_1

    move-object p0, v0

    .line 467
    goto :goto_0

    .line 464
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 471
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->o:Lcom/smartadserver/android/library/ui/SASAdView;

    return-object v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/c/b;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/smartadserver/android/library/c/b;->q:I

    return v0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/c/b;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/smartadserver/android/library/c/b;->p:I

    return v0
.end method

.method private d()Lcom/google/android/gms/ads/AdSize;
    .locals 3

    .prologue
    .line 650
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 651
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->o:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 652
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 654
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->o:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 655
    iget-object v2, p0, Lcom/smartadserver/android/library/c/b;->o:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v1

    float-to-int v1, v1

    .line 657
    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 658
    return-object v2
.end method

.method static synthetic e(Lcom/smartadserver/android/library/c/b;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->k:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 669
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->f:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->f:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 672
    :cond_0
    iput-object v1, p0, Lcom/smartadserver/android/library/c/b;->f:Lcom/google/android/gms/ads/InterstitialAd;

    .line 673
    return-void
.end method

.method static synthetic f(Lcom/smartadserver/android/library/c/b;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->f:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 677
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->d:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->d:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 679
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->d:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 681
    :cond_0
    iput-object v1, p0, Lcom/smartadserver/android/library/c/b;->d:Lcom/google/android/gms/ads/AdView;

    .line 682
    return-void
.end method

.method static synthetic g(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/c/g$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->m:Lcom/smartadserver/android/library/c/g$a;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 686
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->e:Lcom/google/android/gms/ads/NativeExpressAdView;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->e:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 688
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->e:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/NativeExpressAdView;->destroy()V

    .line 690
    :cond_0
    iput-object v1, p0, Lcom/smartadserver/android/library/c/b;->e:Lcom/google/android/gms/ads/NativeExpressAdView;

    .line 691
    return-void
.end method

.method private h()V
    .locals 0

    .prologue
    .line 695
    return-void
.end method


# virtual methods
.method public a()Lcom/smartadserver/android/library/c/g;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->l:Lcom/smartadserver/android/library/c/g;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V
    .locals 8
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
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v3, -0x1

    const v5, -0xff0001

    const/4 v4, 0x0

    .line 477
    iput-object v4, p0, Lcom/smartadserver/android/library/c/b;->k:Landroid/view/View;

    .line 478
    iput-object v4, p0, Lcom/smartadserver/android/library/c/b;->l:Lcom/smartadserver/android/library/c/g;

    .line 479
    iput-object v4, p0, Lcom/smartadserver/android/library/c/b;->m:Lcom/smartadserver/android/library/c/g$a;

    .line 480
    iput v3, p0, Lcom/smartadserver/android/library/c/b;->q:I

    iput v3, p0, Lcom/smartadserver/android/library/c/b;->p:I

    .line 482
    :try_start_0
    const-string v0, "nativeAdWidth"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/c/b;->p:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 486
    :goto_0
    :try_start_1
    const-string v0, "nativeAdHeight"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/c/b;->q:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 490
    :goto_1
    const-string v0, "applicationID"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 491
    const-string v1, "adUnitID"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 496
    :try_start_2
    const-string v2, "adType"

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 502
    :goto_2
    iput-object p4, p0, Lcom/smartadserver/android/library/c/b;->n:Lcom/smartadserver/android/library/c/i$a;

    .line 503
    iput-object p2, p0, Lcom/smartadserver/android/library/c/b;->o:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 506
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/b;->f()V

    .line 507
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/b;->e()V

    .line 508
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/b;->h()V

    .line 512
    new-instance v3, Lcom/smartadserver/android/library/c/b$2;

    invoke-direct {v3, p0}, Lcom/smartadserver/android/library/c/b$2;-><init>(Lcom/smartadserver/android/library/c/b;)V

    iput-object v3, p0, Lcom/smartadserver/android/library/c/b;->l:Lcom/smartadserver/android/library/c/g;

    .line 525
    iget-boolean v3, p0, Lcom/smartadserver/android/library/c/b;->r:Z

    if-nez v3, :cond_0

    .line 526
    invoke-static {p1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/c/b;->r:Z

    .line 529
    if-ne v2, v7, :cond_0

    instance-of v0, p2, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v0, :cond_0

    .line 530
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->c:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 531
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->c:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    iget-object v3, p0, Lcom/smartadserver/android/library/c/b;->s:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface {v0, v3}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 535
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    .line 539
    const/4 v0, 0x3

    if-ne v2, v0, :cond_7

    instance-of v0, p2, Lcom/smartadserver/android/library/SASBannerView;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v0, :cond_7

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->e:Lcom/google/android/gms/ads/NativeExpressAdView;

    if-nez v0, :cond_4

    .line 541
    new-instance v0, Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/NativeExpressAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->e:Lcom/google/android/gms/ads/NativeExpressAdView;

    .line 542
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->e:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 544
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/b;->d()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    .line 545
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    .line 546
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v1

    .line 549
    iget v2, p0, Lcom/smartadserver/android/library/c/b;->q:I

    if-lez v2, :cond_2

    .line 550
    iget v0, p0, Lcom/smartadserver/android/library/c/b;->q:I

    .line 552
    :cond_2
    iget v2, p0, Lcom/smartadserver/android/library/c/b;->p:I

    if-lez v2, :cond_3

    .line 553
    iget v1, p0, Lcom/smartadserver/android/library/c/b;->p:I

    .line 556
    :cond_3
    iget-object v2, p0, Lcom/smartadserver/android/library/c/b;->e:Lcom/google/android/gms/ads/NativeExpressAdView;

    new-instance v4, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v4, v1, v0}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 557
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->e:Lcom/google/android/gms/ads/NativeExpressAdView;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/b;->i:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 561
    :cond_4
    sget-boolean v0, Lcom/smartadserver/android/library/g/c;->a:Z

    if-eqz v0, :cond_5

    .line 562
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->e:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/NativeExpressAdView;->setBackgroundColor(I)V

    .line 565
    :cond_5
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->e:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/NativeExpressAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 566
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->e:Lcom/google/android/gms/ads/NativeExpressAdView;

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->k:Landroid/view/View;

    .line 634
    :cond_6
    :goto_3
    return-void

    .line 497
    :catch_0
    move-exception v2

    move v2, v3

    goto/16 :goto_2

    .line 569
    :cond_7
    instance-of v0, p2, Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v0, :cond_9

    .line 570
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->d:Lcom/google/android/gms/ads/AdView;

    if-nez v0, :cond_8

    .line 572
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->d:Lcom/google/android/gms/ads/AdView;

    .line 573
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->d:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->d:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0}, Lcom/smartadserver/android/library/c/b;->d()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 575
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->d:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/b;->g:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 577
    sget-boolean v0, Lcom/smartadserver/android/library/g/c;->a:Z

    if-eqz v0, :cond_8

    .line 578
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->d:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/AdView;->setBackgroundColor(I)V

    .line 581
    :cond_8
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->d:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 582
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->d:Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->k:Landroid/view/View;

    goto :goto_3

    .line 584
    :cond_9
    instance-of v0, p2, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v0, :cond_c

    .line 585
    if-ne v2, v7, :cond_a

    .line 586
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->c:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_6

    .line 587
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->c:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_3

    .line 590
    :cond_a
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->f:Lcom/google/android/gms/ads/InterstitialAd;

    if-nez v0, :cond_b

    .line 592
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->f:Lcom/google/android/gms/ads/InterstitialAd;

    .line 593
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->f:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->f:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/b;->h:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 597
    :cond_b
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->f:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 598
    iput-object v4, p0, Lcom/smartadserver/android/library/c/b;->k:Landroid/view/View;

    goto :goto_3

    .line 603
    :cond_c
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->a:Lcom/google/android/gms/ads/AdLoader$Builder;

    if-nez v0, :cond_d

    .line 604
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->a:Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 606
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->a:Lcom/google/android/gms/ads/AdLoader$Builder;

    new-instance v1, Lcom/smartadserver/android/library/c/b$3;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/b$3;-><init>(Lcom/smartadserver/android/library/c/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 613
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->a:Lcom/google/android/gms/ads/AdLoader$Builder;

    new-instance v1, Lcom/smartadserver/android/library/c/b$4;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/b$4;-><init>(Lcom/smartadserver/android/library/c/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 620
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->a:Lcom/google/android/gms/ads/AdLoader$Builder;

    new-instance v1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 626
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->a:Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/b;->j:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->b:Lcom/google/android/gms/ads/AdLoader;

    .line 629
    :cond_d
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b;->b:Lcom/google/android/gms/ads/AdLoader;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto/16 :goto_3

    .line 487
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 483
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/b;->o:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 700
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/b;->f()V

    .line 701
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/b;->e()V

    .line 702
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/b;->g()V

    .line 703
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 707
    const/4 v0, 0x1

    .line 710
    :try_start_0
    const-string v1, "com.google.android.gms.ads.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_0
    return v0

    .line 711
    :catch_0
    move-exception v0

    .line 712
    const/4 v0, 0x0

    goto :goto_0
.end method
