.class public Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;
.super Lcom/intentsoftware/addapptr/ad/NativeAd;
.source "InMobiNativeAd.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/c/d$a;


# static fields
.field private static final REQUIRED_PERCENTAGE:I = 0x32

.field private static final REQUIRED_TIME:I = 0x3e8


# instance fields
.field private clickUrl:Ljava/lang/String;

.field private impressionTracker:Lcom/intentsoftware/addapptr/c/d;

.field private layout:Landroid/view/ViewGroup;

.field private loadedNativeAd:Lcom/inmobi/monetization/IMNative;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;)Lcom/inmobi/monetization/IMNative;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->loadedNativeAd:Lcom/inmobi/monetization/IMNative;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Lcom/inmobi/monetization/IMNative;)Lcom/inmobi/monetization/IMNative;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->loadedNativeAd:Lcom/inmobi/monetization/IMNative;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->setRating(Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->setAsset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->clickUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method private createListener()Lcom/inmobi/monetization/IMNativeListener;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;-><init>(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;)V

    return-object v0
.end method


# virtual methods
.method public attachToLayout(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->layout:Landroid/view/ViewGroup;

    .line 115
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->loadedNativeAd:Lcom/inmobi/monetization/IMNative;

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/IMNative;->attachToView(Landroid/view/ViewGroup;)V

    .line 117
    new-instance v0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$2;-><init>(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->impressionTracker:Lcom/intentsoftware/addapptr/c/d;

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/c/d;->attachToView(Landroid/view/View;)V

    .line 132
    :cond_0
    return-void
.end method

.method public getBrandingLogo()Landroid/view/View;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 4

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/NativeAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 40
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 41
    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 42
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "Wrong number of arguments for InMobi config! Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    :cond_0
    const-string v0, "wrong number of arguments in adId"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 49
    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 51
    invoke-static {p1, v0}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setCurrentLocation(Landroid/location/Location;)V

    .line 57
    :cond_2
    new-instance v1, Lcom/inmobi/monetization/IMNative;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->createListener()Lcom/inmobi/monetization/IMNativeListener;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/inmobi/monetization/IMNative;-><init>(Ljava/lang/String;Lcom/inmobi/monetization/IMNativeListener;)V

    .line 58
    new-instance v0, Lcom/intentsoftware/addapptr/c/d;

    const/16 v2, 0x3e8

    const/16 v3, 0x32

    invoke-direct {v0, v2, v3, p0}, Lcom/intentsoftware/addapptr/c/d;-><init>(IILcom/intentsoftware/addapptr/c/d$a;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->impressionTracker:Lcom/intentsoftware/addapptr/c/d;

    .line 59
    invoke-virtual {v1}, Lcom/inmobi/monetization/IMNative;->loadAd()V

    goto :goto_0
.end method

.method public onImpressionDetected()V
    .locals 0

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->notifyListenerThatAdIsShown()V

    .line 179
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->impressionTracker:Lcom/intentsoftware/addapptr/c/d;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/d;->pause()V

    .line 143
    invoke-super {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->pause()V

    .line 144
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/NativeAd;->resume(Landroid/app/Activity;)V

    .line 137
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->impressionTracker:Lcom/intentsoftware/addapptr/c/d;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/d;->resume()V

    .line 138
    return-void
.end method

.method public unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-super {p0}, Lcom/intentsoftware/addapptr/ad/NativeAd;->unload()V

    .line 149
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->layout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->impressionTracker:Lcom/intentsoftware/addapptr/c/d;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/d;->destroy()V

    .line 153
    iput-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->impressionTracker:Lcom/intentsoftware/addapptr/c/d;

    .line 154
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->loadedNativeAd:Lcom/inmobi/monetization/IMNative;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->loadedNativeAd:Lcom/inmobi/monetization/IMNative;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMNative;->detachFromView()V

    .line 156
    iput-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->loadedNativeAd:Lcom/inmobi/monetization/IMNative;

    .line 159
    :cond_1
    return-void
.end method
