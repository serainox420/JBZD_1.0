.class public Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;
.super Lcom/openx/view/tp/adapters/AdapterBase;
.source "AdMobBannerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdMobBannerAdapter"


# instance fields
.field adListener:Lcom/google/android/gms/ads/AdListener;

.field private mAdView:Lcom/google/android/gms/ads/AdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/openx/view/tp/adapters/AdapterBase;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    .line 75
    new-instance v0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter$1;

    invoke-direct {v0, p0}, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter$1;-><init>(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->adListener:Lcom/google/android/gms/ads/AdListener;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)Lcom/google/android/gms/ads/AdView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->mAdView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 35
    const-string v0, "AdMobBannerAdapter"

    const-string v1, " AdMobBannerAdapter\'s  cleanup to call pause & destroy of AdmobView"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->mAdView:Lcom/google/android/gms/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 39
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 40
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 43
    :cond_0
    return-void
.end method

.method public loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 3

    .prologue
    .line 48
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 49
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->mAdView:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 51
    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->mAdView:Lcom/google/android/gms/ads/AdView;

    iget-object v0, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    const-string v2, "adUnit"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->mAdView:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->adListener:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 58
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 60
    sget-object v0, Lcom/openx/view/tp/chain/ChainManager;->testDeviceIds:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/openx/view/tp/chain/ChainManager;->testDeviceIds:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 64
    sget-object v2, Lcom/openx/view/tp/chain/ChainManager;->testDeviceIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 73
    return-void
.end method
