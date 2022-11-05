.class public Lcom/smartadserver/android/library/c/l;
.super Ljava/lang/Object;
.source "SASMoPubAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/c/l$f;,
        Lcom/smartadserver/android/library/c/l$e;,
        Lcom/smartadserver/android/library/c/l$d;,
        Lcom/smartadserver/android/library/c/l$c;,
        Lcom/smartadserver/android/library/c/l$b;,
        Lcom/smartadserver/android/library/c/l$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mopub/mobileads/MoPubView;

.field private b:Lcom/smartadserver/android/library/c/l$a;

.field private c:Lcom/mopub/mobileads/MoPubInterstitial;

.field private d:Lcom/mopub/nativeads/MoPubNative;

.field private e:Lcom/smartadserver/android/library/c/l$c;

.field private f:Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;

.field private g:Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;

.field private h:Landroid/view/View;

.field private i:Lcom/smartadserver/android/library/c/g;

.field private j:Lcom/smartadserver/android/library/c/g$a;

.field private k:Lcom/smartadserver/android/library/c/l$b;

.field private l:Lcom/smartadserver/android/library/c/l$d;

.field private m:Lcom/smartadserver/android/library/c/i$a;

.field private n:Lcom/smartadserver/android/library/ui/SASAdView;

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/smartadserver/android/library/c/l;->h:Landroid/view/View;

    .line 66
    iput-object v0, p0, Lcom/smartadserver/android/library/c/l;->i:Lcom/smartadserver/android/library/c/g;

    .line 67
    iput-object v0, p0, Lcom/smartadserver/android/library/c/l;->j:Lcom/smartadserver/android/library/c/g$a;

    .line 72
    iput-object v0, p0, Lcom/smartadserver/android/library/c/l;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 74
    iput-boolean v1, p0, Lcom/smartadserver/android/library/c/l;->o:Z

    .line 75
    iput-boolean v1, p0, Lcom/smartadserver/android/library/c/l;->p:Z

    .line 380
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/l;Lcom/smartadserver/android/library/c/g$a;)Lcom/smartadserver/android/library/c/g$a;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/smartadserver/android/library/c/l;->j:Lcom/smartadserver/android/library/c/g$a;

    return-object p1
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->m:Lcom/smartadserver/android/library/c/i$a;

    return-object v0
.end method

.method private a(Lcom/mopub/nativeads/BaseNativeAd;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 533
    :try_start_0
    const-class v0, Lcom/mopub/nativeads/BaseNativeAd;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 534
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 535
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 543
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 538
    :catch_1
    move-exception v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 540
    :catch_2
    move-exception v0

    .line 541
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/l;Lcom/mopub/nativeads/BaseNativeAd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/smartadserver/android/library/c/l;->a(Lcom/mopub/nativeads/BaseNativeAd;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    return-object v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/c/l;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/g$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->j:Lcom/smartadserver/android/library/c/g$a;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 690
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 692
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->a:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 699
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l;->a:Lcom/mopub/mobileads/MoPubView;

    .line 700
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->d:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->d:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->destroy()V

    .line 707
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l;->d:Lcom/mopub/nativeads/MoPubNative;

    .line 708
    return-void
.end method


# virtual methods
.method public a()Lcom/smartadserver/android/library/c/g;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->i:Lcom/smartadserver/android/library/c/g;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 550
    new-instance v0, Lcom/smartadserver/android/library/c/l$a;

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/c/l$a;-><init>(Lcom/smartadserver/android/library/c/l;Lcom/smartadserver/android/library/c/l$1;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l;->b:Lcom/smartadserver/android/library/c/l$a;

    .line 551
    new-instance v0, Lcom/smartadserver/android/library/c/l$b;

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/c/l$b;-><init>(Lcom/smartadserver/android/library/c/l;Lcom/smartadserver/android/library/c/l$1;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l;->k:Lcom/smartadserver/android/library/c/l$b;

    .line 552
    new-instance v0, Lcom/smartadserver/android/library/c/l$c;

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/c/l$c;-><init>(Lcom/smartadserver/android/library/c/l;Lcom/smartadserver/android/library/c/l$1;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l;->e:Lcom/smartadserver/android/library/c/l$c;

    .line 553
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V
    .locals 7
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
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 559
    iput-object v5, p0, Lcom/smartadserver/android/library/c/l;->h:Landroid/view/View;

    .line 562
    iput-object p4, p0, Lcom/smartadserver/android/library/c/l;->m:Lcom/smartadserver/android/library/c/i$a;

    .line 563
    iput-object p2, p0, Lcom/smartadserver/android/library/c/l;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 566
    const-string v0, "adUnitID"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 567
    const/4 v2, -0x1

    .line 569
    :try_start_0
    const-string v1, "adType"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 581
    :goto_0
    iget-boolean v1, p0, Lcom/smartadserver/android/library/c/l;->o:Z

    if-nez v1, :cond_0

    .line 582
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/c/l;->a(Landroid/content/Context;)V

    .line 583
    iput-boolean v3, p0, Lcom/smartadserver/android/library/c/l;->o:Z

    .line 587
    :cond_0
    iget-boolean v1, p0, Lcom/smartadserver/android/library/c/l;->p:Z

    if-nez v1, :cond_1

    if-ne v2, v6, :cond_1

    instance-of v1, p2, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v1, :cond_1

    .line 588
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_5

    .line 589
    iput-boolean v3, p0, Lcom/smartadserver/android/library/c/l;->p:Z

    .line 590
    new-instance v1, Lcom/smartadserver/android/library/c/l$d;

    invoke-direct {v1, p0, v5}, Lcom/smartadserver/android/library/c/l$d;-><init>(Lcom/smartadserver/android/library/c/l;Lcom/smartadserver/android/library/c/l$1;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/l;->l:Lcom/smartadserver/android/library/c/l$d;

    move-object v1, p1

    .line 591
    check-cast v1, Landroid/app/Activity;

    new-array v3, v4, [Lcom/mopub/common/MediationSettings;

    invoke-static {v1, v3}, Lcom/mopub/mobileads/MoPubRewardedVideos;->initializeRewardedVideo(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V

    .line 592
    iget-object v1, p0, Lcom/smartadserver/android/library/c/l;->l:Lcom/smartadserver/android/library/c/l$d;

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideos;->setRewardedVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V

    .line 600
    :cond_1
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/mopub/common/MoPub$LocationAwareness;->NORMAL:Lcom/mopub/common/MoPub$LocationAwareness;

    :goto_1
    invoke-static {v1}, Lcom/mopub/common/MoPub;->setLocationAwareness(Lcom/mopub/common/MoPub$LocationAwareness;)V

    .line 605
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/l;->e()V

    .line 606
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/l;->d()V

    .line 607
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/l;->f()V

    .line 611
    new-instance v1, Lcom/smartadserver/android/library/c/l$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/l$1;-><init>(Lcom/smartadserver/android/library/c/l;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/l;->i:Lcom/smartadserver/android/library/c/g;

    .line 626
    instance-of v1, p2, Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v1, :cond_7

    .line 627
    iget-object v1, p0, Lcom/smartadserver/android/library/c/l;->a:Lcom/mopub/mobileads/MoPubView;

    if-nez v1, :cond_3

    .line 629
    new-instance v1, Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/l;->a:Lcom/mopub/mobileads/MoPubView;

    .line 630
    iget-object v1, p0, Lcom/smartadserver/android/library/c/l;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 632
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 633
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 634
    iget-object v1, p0, Lcom/smartadserver/android/library/c/l;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    sget-boolean v0, Lcom/smartadserver/android/library/g/c;->a:Z

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->a:Lcom/mopub/mobileads/MoPubView;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setBackgroundColor(I)V

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->a:Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/l;->b:Lcom/smartadserver/android/library/c/l$a;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 643
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 647
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    .line 648
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->a:Lcom/mopub/mobileads/MoPubView;

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l;->h:Landroid/view/View;

    .line 677
    :cond_4
    :goto_2
    return-void

    .line 594
    :cond_5
    const-string v0, "Can not get a MoPub rewarded video on this SASInterstitialView because its creation Context is not an Activity"

    invoke-interface {p4, v0}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 600
    :cond_6
    sget-object v1, Lcom/mopub/common/MoPub$LocationAwareness;->DISABLED:Lcom/mopub/common/MoPub$LocationAwareness;

    goto :goto_1

    .line 650
    :cond_7
    instance-of v1, p2, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v1, :cond_a

    .line 652
    if-ne v2, v6, :cond_8

    .line 653
    new-array v1, v4, [Lcom/mopub/common/MediationSettings;

    invoke-static {v0, v5, v1}, Lcom/mopub/mobileads/MoPubRewardedVideos;->loadRewardedVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V

    goto :goto_2

    .line 656
    :cond_8
    iget-object v1, p0, Lcom/smartadserver/android/library/c/l;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    if-nez v1, :cond_9

    .line 657
    new-instance v2, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v2, v1, v0}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/smartadserver/android/library/c/l;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 658
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/l;->k:Lcom/smartadserver/android/library/c/l$b;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 660
    :cond_9
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->c:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    goto :goto_2

    .line 665
    :cond_a
    iget-object v1, p0, Lcom/smartadserver/android/library/c/l;->d:Lcom/mopub/nativeads/MoPubNative;

    if-nez v1, :cond_4

    .line 666
    new-instance v1, Lcom/mopub/nativeads/MoPubNative;

    iget-object v2, p0, Lcom/smartadserver/android/library/c/l;->e:Lcom/smartadserver/android/library/c/l$c;

    invoke-direct {v1, p1, v0, v2}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/l;->d:Lcom/mopub/nativeads/MoPubNative;

    .line 668
    new-instance v0, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;

    new-instance v1, Lcom/mopub/nativeads/ViewBinder$Builder;

    invoke-direct {v1, v4}, Lcom/mopub/nativeads/ViewBinder$Builder;-><init>(I)V

    invoke-virtual {v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->build()Lcom/mopub/nativeads/ViewBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l;->f:Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;

    .line 669
    new-instance v0, Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;

    new-instance v1, Lcom/mopub/nativeads/MediaViewBinder$Builder;

    invoke-direct {v1, v4}, Lcom/mopub/nativeads/MediaViewBinder$Builder;-><init>(I)V

    invoke-virtual {v1}, Lcom/mopub/nativeads/MediaViewBinder$Builder;->build()Lcom/mopub/nativeads/MediaViewBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;-><init>(Lcom/mopub/nativeads/MediaViewBinder;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/l;->g:Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;

    .line 671
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->d:Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/l;->f:Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 672
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->d:Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/l;->g:Lcom/mopub/nativeads/MoPubVideoNativeAdRenderer;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 674
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l;->d:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->makeRequest()V

    goto :goto_2

    .line 570
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 713
    iput-object v0, p0, Lcom/smartadserver/android/library/c/l;->m:Lcom/smartadserver/android/library/c/i$a;

    .line 714
    iput-object v0, p0, Lcom/smartadserver/android/library/c/l;->n:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 715
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/l;->e()V

    .line 716
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/l;->d()V

    .line 717
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/l;->f()V

    .line 718
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 722
    const/4 v0, 0x1

    .line 725
    :try_start_0
    const-string v1, "com.mopub.mobileads.MoPubView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :goto_0
    return v0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    const/4 v0, 0x0

    goto :goto_0
.end method
