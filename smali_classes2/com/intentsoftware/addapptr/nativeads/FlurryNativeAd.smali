.class public Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;
.super Lcom/intentsoftware/addapptr/ad/NativeAd;
.source "FlurryNativeAd.java"


# instance fields
.field private brandingLogo:Landroid/widget/ImageView;

.field private nativeAd:Lcom/flurry/android/ads/FlurryAdNative;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;Lcom/flurry/android/ads/FlurryAdNative;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->trySetFlurryAsset(Lcom/flurry/android/ads/FlurryAdNative;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->brandingLogo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->brandingLogo:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->setRating(Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method private createListener()Lcom/flurry/android/ads/FlurryAdNativeListener;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;-><init>(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;)V

    return-object v0
.end method

.method private trySetFlurryAsset(Lcom/flurry/android/ads/FlurryAdNative;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p1, p3}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public attachToLayout(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->nativeAd:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0, p1}, Lcom/flurry/android/ads/FlurryAdNative;->setTrackingView(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method public getAdType()Lcom/intentsoftware/addapptr/ad/NativeAd$Type;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->nativeAd:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNative;->isVideoAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->VIDEO:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    .line 158
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->getAdType()Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    move-result-object v0

    goto :goto_0
.end method

.method public getBrandingLogo()Landroid/view/View;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->brandingLogo:Landroid/widget/ImageView;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->nativeAd:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNative;->isExpired()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->nativeAd:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNative;->isReady()Z

    move-result v0

    return v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/NativeAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 30
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 33
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 34
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 35
    aget-object v0, v0, v2

    .line 41
    invoke-static {p1, v1}, Lcom/flurry/android/FlurryAgent;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/flurry/android/ads/FlurryAdNative;

    invoke-direct {v1, p1, v0}, Lcom/flurry/android/ads/FlurryAdNative;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->nativeAd:Lcom/flurry/android/ads/FlurryAdNative;

    .line 43
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->nativeAd:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->createListener()Lcom/flurry/android/ads/FlurryAdNativeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ads/FlurryAdNative;->setListener(Lcom/flurry/android/ads/FlurryAdNativeListener;)V

    .line 44
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->nativeAd:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNative;->fetchAd()V

    .line 45
    :goto_0
    return-void

    .line 37
    :cond_0
    const-string v0, "Not enough ad id parts for Flurry Native Ad"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->unload()V

    .line 138
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->nativeAd:Lcom/flurry/android/ads/FlurryAdNative;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->nativeAd:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNative;->destroy()V

    .line 141
    :cond_0
    return-void
.end method
