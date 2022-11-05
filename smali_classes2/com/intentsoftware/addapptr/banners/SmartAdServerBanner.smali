.class public Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "SmartAdServerBanner.java"


# static fields
.field private static final MAX_TIME_AFTER_CLICK:I = 0xdac


# instance fields
.field private bannerView:Lcom/smartadserver/android/library/SASBannerView;

.field private clickTime:J

.field private customSize:Lcom/intentsoftware/addapptr/ad/BannerAd$a;

.field private lastActivity:Landroid/app/Activity;

.field private shouldNotifyResume:Z

.field private usesMultipleSizes:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->shouldNotifyResume:Z

    return v0
.end method

.method static synthetic access$002(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->shouldNotifyResume:Z

    return p1
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->clickTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;Lcom/intentsoftware/addapptr/ad/BannerAd$a;)Lcom/intentsoftware/addapptr/ad/BannerAd$a;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->customSize:Lcom/intentsoftware/addapptr/ad/BannerAd$a;

    return-object p1
.end method

.method static synthetic access$102(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;J)J
    .locals 1

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->clickTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)Lcom/smartadserver/android/library/SASBannerView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->fallbackNotifyListenerThatAdWasDismissed()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->fallbackNotifyListenerThatAdWasDismissed()V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->usesMultipleSizes:Z

    return v0
.end method

.method static synthetic access$800(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method private createResponseHandler()Lcom/smartadserver/android/library/ui/SASAdView$a;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$3;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$3;-><init>(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)V

    return-object v0
.end method

.method private createStateChangeListener()Lcom/smartadserver/android/library/ui/SASAdView$d;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$2;-><init>(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)V

    return-object v0
.end method

.method private createTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)V

    return-object v0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    return-object v0
.end method

.method public getCustomSize()Lcom/intentsoftware/addapptr/ad/BannerAd$a;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->customSize:Lcom/intentsoftware/addapptr/ad/BannerAd$a;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 11

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 48
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->lastActivity:Landroid/app/Activity;

    .line 49
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    array-length v1, v0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 51
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "not enough arguments for SmartAdServer config"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    :cond_0
    const-string v0, "not enough arguments in adId."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 65
    const/4 v1, 0x2

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 66
    const/4 v1, 0x3

    aget-object v2, v0, v1

    .line 67
    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 76
    sget-object v0, Lcom/intentsoftware/addapptr/BannerSize;->MutlipleSizes:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v0, :cond_2

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->usesMultipleSizes:Z

    .line 80
    :cond_2
    new-instance v0, Lcom/smartadserver/android/library/SASBannerView;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/SASBannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    .line 81
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->createStateChangeListener()Lcom/smartadserver/android/library/ui/SASAdView$d;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/smartadserver/android/library/SASBannerView;->a(Lcom/smartadserver/android/library/ui/SASAdView$d;)V

    .line 83
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    iget-object v5, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v5, v0}, Lcom/smartadserver/android/library/SASBannerView;->setLocation(Landroid/location/Location;)V

    .line 88
    :cond_3
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->createTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    iget-object v5, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v6}, Lcom/smartadserver/android/library/SASBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-static {v4}, Lcom/smartadserver/android/library/ui/SASAdView;->setBaseUrl(Ljava/lang/String;)V

    .line 94
    const-string v5, ""

    .line 95
    if-eqz p4, :cond_8

    .line 96
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 100
    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    const-string v0, "cannot parse integers for SmartAdServer config"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    :cond_5
    const-string v0, "cannot parse adId."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 109
    const-string v0, ";"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 116
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->createResponseHandler()Lcom/smartadserver/android/library/ui/SASAdView$a;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/smartadserver/android/library/SASBannerView;->a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;)V

    goto/16 :goto_0

    .line 111
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ";"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->clickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xdac

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->shouldNotifyResume:Z

    .line 218
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->clickTime:J

    .line 219
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->notifyListenerThatAdWasClicked()V

    .line 221
    :cond_0
    invoke-super {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;->pause()V

    .line 222
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->shouldNotifyResume:Z

    .line 227
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->lastActivity:Landroid/app/Activity;

    if-eq v0, p1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/SASBannerView;->setExpandParentContainer(Landroid/widget/FrameLayout;)V

    .line 229
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->lastActivity:Landroid/app/Activity;

    .line 231
    :cond_0
    return-void
.end method

.method public unload()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASBannerView;->removeAllViews()V

    .line 237
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 239
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASBannerView;->b()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->bannerView:Lcom/smartadserver/android/library/SASBannerView;

    .line 244
    :cond_1
    return-void
.end method
