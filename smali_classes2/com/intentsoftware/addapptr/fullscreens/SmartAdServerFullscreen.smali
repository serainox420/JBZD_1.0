.class public Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "SmartAdServerFullscreen.java"


# static fields
.field private static cachedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/smartadserver/android/library/SASBannerView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private height:I

.field private intentFilter:Landroid/content/IntentFilter;

.field private interstitialView:Lcom/smartadserver/android/library/SASBannerView;

.field private orientation:I

.field private shown:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->cachedViews:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->orientation:I

    return p1
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)Lcom/smartadserver/android/library/SASBannerView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->width:I

    return v0
.end method

.method static synthetic access$402(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->width:I

    return p1
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->height:I

    return v0
.end method

.method static synthetic access$502(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->height:I

    return p1
.end method

.method static synthetic access$600()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->cachedViews:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$800(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$802(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->tryUnregisterReceiver()V

    return-void
.end method

.method private createBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$2;-><init>(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)V

    return-object v0
.end method

.method private createResponseHandler()Lcom/smartadserver/android/library/ui/SASAdView$a;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)V

    return-object v0
.end method

.method static getCachedView(I)Lcom/smartadserver/android/library/SASBannerView;
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->cachedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/SASBannerView;

    .line 237
    sget-object v1, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->cachedViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 238
    return-object v0
.end method

.method private tryUnregisterReceiver()V
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 226
    :try_start_0
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "Broadcast receiver already unregistered!"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 11

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 46
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    array-length v1, v0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 48
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "not enough arguments for SmartAdServer config"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    :cond_0
    const-string v0, "not enough arguments in adId."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 59
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

    .line 62
    const/4 v1, 0x2

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 63
    const/4 v1, 0x3

    aget-object v2, v0, v1

    .line 64
    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 74
    new-instance v0, Lcom/smartadserver/android/library/SASBannerView;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/SASBannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    .line 75
    invoke-static {v4}, Lcom/smartadserver/android/library/ui/SASAdView;->setBaseUrl(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/intentsoftware/addapptr/c/b;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    iget-object v4, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v4, v0}, Lcom/smartadserver/android/library/SASBannerView;->setLocation(Landroid/location/Location;)V

    .line 81
    :cond_2
    const-string v5, ""

    .line 82
    if-eqz p4, :cond_7

    .line 83
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {p4}, Lcom/intentsoftware/addapptr/c/k;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 87
    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 88
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

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    const-string v0, "cannot parse integers for SmartAdServer config"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    :cond_4
    const-string v0, "cannot parse adId."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_5
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

    .line 95
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 96
    const-string v0, ";"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 103
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/smartadserver/android/library/SASBannerView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/smartadserver/android/library/SASBannerView;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/smartadserver/android/library/SASBannerView;->setClickable(Z)V

    .line 107
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->createResponseHandler()Lcom/smartadserver/android/library/ui/SASAdView$a;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/smartadserver/android/library/SASBannerView;->a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;)V

    goto/16 :goto_0

    .line 98
    :cond_8
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
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->pause()V

    .line 218
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->shown:Z

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->tryUnregisterReceiver()V

    .line 221
    :cond_0
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->resume(Landroid/app/Activity;)V

    .line 210
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->shown:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    :cond_0
    return-void
.end method

.method public show()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 148
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->createBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->intentFilter:Landroid/content/IntentFilter;

    .line 150
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "SMART_AD_SERVER_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "SMART_AD_SERVER_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "SMART_AD_SERVER_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    iput-boolean v3, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->shown:Z

    .line 156
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->notifyListenerThatAdIsShown()V

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    const-string v1, "viewHashCode"

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string v1, "orientation"

    iget v2, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->orientation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string v1, "width"

    iget v2, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v1, "height"

    iget v2, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 164
    return v3
.end method

.method public unload()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 192
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 196
    :cond_0
    sget-object v0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->cachedViews:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 197
    if-ltz v0, :cond_1

    .line 198
    sget-object v1, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->cachedViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASBannerView;->b()V

    .line 201
    iput-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    .line 203
    :cond_2
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->tryUnregisterReceiver()V

    .line 204
    iput-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    return-void
.end method
