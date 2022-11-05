.class public Lcom/intentsoftware/addapptr/banners/MoPubBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "MoPubBanner.java"


# instance fields
.field private banner:Lcom/mopub/mobileads/MoPubView;

.field private clickReported:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/MoPubBanner;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/MoPubBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/MoPubBanner;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->clickReported:Z

    return v0
.end method

.method static synthetic access$202(Lcom/intentsoftware/addapptr/banners/MoPubBanner;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->clickReported:Z

    return p1
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/banners/MoPubBanner;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/banners/MoPubBanner;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->fallbackNotifyListenerThatAdWasDismissed()V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/banners/MoPubBanner;)V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createListener()Lcom/mopub/mobileads/MoPubView$BannerAdListener;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/intentsoftware/addapptr/banners/MoPubBanner$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/MoPubBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/MoPubBanner;)V

    return-object v0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 7

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 29
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 30
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 31
    invoke-static {v4}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "not enough arguments for MoPub config! Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :cond_0
    const-string v0, "adId doesn\'t have enough arguments."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 37
    :cond_1
    aget-object v1, v0, v3

    const-string v2, "Banner"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 39
    new-instance v1, Lcom/mopub/mobileads/MoPubView;

    invoke-direct {v1, p1}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    .line 40
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->createListener()Lcom/mopub/mobileads/MoPubView$BannerAdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 42
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, v3}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 44
    iput-boolean v3, p0, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->clickReported:Z

    .line 46
    if-eqz p4, :cond_4

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :cond_3
    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubView;->setKeywords(Ljava/lang/String;)V

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    goto/16 :goto_0

    .line 60
    :cond_5
    invoke-static {v4}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    const-string v0, "Wrong ad format provided for MoPub banner. Check your network key configuration."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    :cond_6
    const-string v0, "Wrong ad format provided for MoPub banner."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/MoPubBanner;->banner:Lcom/mopub/mobileads/MoPubView;

    .line 118
    :cond_0
    return-void
.end method
