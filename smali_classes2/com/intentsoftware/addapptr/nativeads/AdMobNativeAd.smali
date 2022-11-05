.class public Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;
.super Lcom/intentsoftware/addapptr/ad/NativeAd;
.source "AdMobNativeAd.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/c/d$a;


# instance fields
.field private adType:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

.field private appInstallAd:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

.field private contentAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

.field private impressionTracker:Lcom/intentsoftware/addapptr/c/d;

.field private nativeAdView:Lcom/google/android/gms/ads/formats/NativeAdView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;-><init>()V

    .line 28
    sget-object v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->UNKNOWN:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    iput-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->adType:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->setRating(Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)Lcom/google/android/gms/ads/formats/NativeAppInstallAd;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->appInstallAd:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->trySetTextAsset(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Lcom/intentsoftware/addapptr/ad/NativeAd$Type;)Lcom/intentsoftware/addapptr/ad/NativeAd$Type;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->adType:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    return-object p1
.end method

.method static synthetic access$602(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Lcom/google/android/gms/ads/formats/NativeContentAd;)Lcom/google/android/gms/ads/formats/NativeContentAd;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->contentAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    return-object p1
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$800(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private trySetTextAsset(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 119
    if-eqz p2, :cond_0

    .line 120
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public attachToLayout(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 127
    instance-of v0, p1, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz v0, :cond_4

    .line 128
    check-cast p1, Lcom/google/android/gms/ads/formats/NativeAdView;

    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->nativeAdView:Lcom/google/android/gms/ads/formats/NativeAdView;

    .line 130
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->adType:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    sget-object v1, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->CONTENT:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->contentAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->nativeAdView:Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->contentAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    .line 140
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->impressionTracker:Lcom/intentsoftware/addapptr/c/d;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->nativeAdView:Lcom/google/android/gms/ads/formats/NativeAdView;

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/c/d;->attachToView(Landroid/view/View;)V

    .line 146
    :cond_1
    :goto_1
    return-void

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->adType:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    sget-object v1, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->APP_INSTALL:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->appInstallAd:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->nativeAdView:Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->appInstallAd:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    goto :goto_0

    .line 135
    :cond_3
    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "Cannot attach ad to layout - loaded ad type mismatch!"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_4
    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "Cannot attach ad to layout - provided layout is not instance of NativeAdView!"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAdType()Lcom/intentsoftware/addapptr/ad/NativeAd$Type;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->adType:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    return-object v0
.end method

.method public getBrandingLogo()Landroid/view/View;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->contentAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->appInstallAd:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/NativeAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 38
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$3;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$3;-><init>(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$2;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$2;-><init>(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$1;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$1;-><init>(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    const/4 v2, 0x1

    .line 94
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v1

    .line 97
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 98
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v3, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    .line 99
    const-string v3, "AddApptr"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 103
    :cond_0
    if-eqz p4, :cond_2

    .line 104
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 112
    new-instance v2, Lcom/intentsoftware/addapptr/c/d;

    invoke-direct {v2, v5, v5, p0}, Lcom/intentsoftware/addapptr/c/d;-><init>(IILcom/intentsoftware/addapptr/c/d$a;)V

    iput-object v2, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->impressionTracker:Lcom/intentsoftware/addapptr/c/d;

    .line 114
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 116
    return-void
.end method

.method public onImpressionDetected()V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->notifyListenerThatAdIsShown()V

    .line 186
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->impressionTracker:Lcom/intentsoftware/addapptr/c/d;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/d;->pause()V

    .line 179
    invoke-super {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->pause()V

    .line 180
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/NativeAd;->resume(Landroid/app/Activity;)V

    .line 173
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->impressionTracker:Lcom/intentsoftware/addapptr/c/d;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/d;->resume()V

    .line 174
    return-void
.end method

.method public unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-super {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->unload()V

    .line 151
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->contentAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->contentAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeContentAd;->destroy()V

    .line 153
    iput-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->contentAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->appInstallAd:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->appInstallAd:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->destroy()V

    .line 157
    iput-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->appInstallAd:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->nativeAdView:Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->nativeAdView:Lcom/google/android/gms/ads/formats/NativeAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->destroy()V

    .line 162
    iput-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->nativeAdView:Lcom/google/android/gms/ads/formats/NativeAdView;

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->impressionTracker:Lcom/intentsoftware/addapptr/c/d;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/d;->destroy()V

    .line 166
    iput-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->impressionTracker:Lcom/intentsoftware/addapptr/c/d;

    .line 167
    return-void
.end method
