.class public Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;
.super Lcom/intentsoftware/addapptr/ad/NativeAd;
.source "MoPubNativeAd.java"


# instance fields
.field private adData:Lcom/mopub/nativeads/BaseNativeAd;

.field private brandingLogo:Landroid/widget/ImageView;

.field private moPubNative:Lcom/mopub/nativeads/MoPubNative;

.field private privacyInformationIconClickThroughUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Lcom/mopub/nativeads/BaseNativeAd;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->adData:Lcom/mopub/nativeads/BaseNativeAd;

    return-object v0
.end method

.method static synthetic access$002(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Lcom/mopub/nativeads/BaseNativeAd;)Lcom/mopub/nativeads/BaseNativeAd;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->adData:Lcom/mopub/nativeads/BaseNativeAd;

    return-object p1
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->notifyListenerThatAdIsShown()V

    return-void
.end method

.method static synthetic access$1400(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->setRating(Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V

    return-void
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->privacyInformationIconClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->privacyInformationIconClickThroughUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->brandingLogo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->brandingLogo:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method private createEventListener()Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$3;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$3;-><init>(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)V

    return-object v0
.end method

.method private createLoadListener()Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$1;-><init>(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)V

    return-object v0
.end method


# virtual methods
.method public attachToLayout(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->adData:Lcom/mopub/nativeads/BaseNativeAd;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->createEventListener()Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/BaseNativeAd;->setNativeEventListener(Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;)V

    .line 139
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->adData:Lcom/mopub/nativeads/BaseNativeAd;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/BaseNativeAd;->prepare(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->brandingLogo:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->privacyInformationIconClickThroughUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->brandingLogo:Landroid/widget/ImageView;

    new-instance v1, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$2;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$2;-><init>(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_0
    return-void
.end method

.method public getBrandingLogo()Landroid/view/View;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->brandingLogo:Landroid/widget/ImageView;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->adData:Lcom/mopub/nativeads/BaseNativeAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 8

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/NativeAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 45
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 47
    invoke-static {v4}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "not enough arguments for MoPub config! Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    :cond_0
    const-string v0, "adId doesn\'t have enough arguments."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 53
    :cond_1
    aget-object v1, v0, v3

    const-string v2, "Native"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 55
    new-instance v1, Lcom/mopub/nativeads/MoPubNative;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->createLoadListener()Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->moPubNative:Lcom/mopub/nativeads/MoPubNative;

    .line 56
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->brandingLogo:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->brandingLogo:Landroid/widget/ImageView;

    sget-object v1, Lcom/mopub/common/util/Drawables;->NATIVE_PRIVACY_INFORMATION_ICON:Lcom/mopub/common/util/Drawables;

    invoke-virtual {v1, p1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    new-instance v0, Lcom/mopub/nativeads/ViewBinder$Builder;

    invoke-direct {v0, v3}, Lcom/mopub/nativeads/ViewBinder$Builder;-><init>(I)V

    invoke-virtual {v0}, Lcom/mopub/nativeads/ViewBinder$Builder;->build()Lcom/mopub/nativeads/ViewBinder;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;

    invoke-direct {v1, v0}, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;)V

    .line 61
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->moPubNative:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 64
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 65
    if-nez v0, :cond_2

    if-eqz p4, :cond_7

    .line 66
    :cond_2
    new-instance v3, Lcom/mopub/nativeads/RequestParameters$Builder;

    invoke-direct {v3}, Lcom/mopub/nativeads/RequestParameters$Builder;-><init>()V

    .line 67
    if-eqz v0, :cond_3

    .line 68
    invoke-virtual {v3, v0}, Lcom/mopub/nativeads/RequestParameters$Builder;->location(Landroid/location/Location;)Lcom/mopub/nativeads/RequestParameters$Builder;

    .line 70
    :cond_3
    if-eqz p4, :cond_6

    .line 71
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :cond_5
    const-string v0, ","

    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v3, v0}, Lcom/mopub/nativeads/RequestParameters$Builder;->keywords(Ljava/lang/String;)Lcom/mopub/nativeads/RequestParameters$Builder;

    .line 81
    :cond_6
    invoke-virtual {v3}, Lcom/mopub/nativeads/RequestParameters$Builder;->build()Lcom/mopub/nativeads/RequestParameters;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->moPubNative:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;)V

    goto/16 :goto_0

    .line 84
    :cond_7
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->moPubNative:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->makeRequest()V

    goto/16 :goto_0

    .line 88
    :cond_8
    invoke-static {v4}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 89
    const-string v0, "Wrong ad format provided for MoPub fullscreen. Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    :cond_9
    const-string v0, "Wrong ad format provided for MoPub native."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-super {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->unload()V

    .line 180
    iput-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->brandingLogo:Landroid/widget/ImageView;

    .line 181
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->adData:Lcom/mopub/nativeads/BaseNativeAd;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->adData:Lcom/mopub/nativeads/BaseNativeAd;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/BaseNativeAd;->setNativeEventListener(Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;)V

    .line 183
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->adData:Lcom/mopub/nativeads/BaseNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/BaseNativeAd;->destroy()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->moPubNative:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->moPubNative:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->destroy()V

    .line 188
    :cond_1
    return-void
.end method
