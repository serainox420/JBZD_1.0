.class public Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "PromoHouseFullscreen.java"


# static fields
.field private static final AdTypePhone:I = 0xb

.field private static final AdTypeTablet:I = 0xc

.field private static final ServerResponseClose:Ljava/lang/String; = "krassapp://close"

.field private static final ServerResponseNoAd:Ljava/lang/String; = "internal:noad"

.field private static final UrlFormat:Ljava/lang/String; = "https://house.aatkit.com/cgi-bin/house.cgi?type=%d&slot=%d&app=%s&lang=%s&model=%s&idfa=%s"


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private currentUrl:Ljava/lang/String;

.field private failed:Z

.field private intentFilter:Landroid/content/IntentFilter;

.field private shown:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->tryUnregisterReceiver()V

    return-void
.end method

.method static synthetic access$1000(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->failed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->failed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->webView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method private createBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)V

    return-object v0
.end method

.method private createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;-><init>(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)V

    return-object v0
.end method

.method private tryUnregisterReceiver()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "Broadcast receiver already unregistered!"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 66
    invoke-static {p1}, Lcom/intentsoftware/addapptr/c/m;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 67
    :goto_0
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 68
    const-string v2, "https://house.aatkit.com/cgi-bin/house.cgi?type=%d&slot=%d&app=%s&lang=%s&model=%s&idfa=%s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getAppID()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x3

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getLang()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getModel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getAdvertisingId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 69
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->currentUrl:Ljava/lang/String;

    .line 70
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 72
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->webView:Landroid/webkit/WebView;

    .line 73
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->createWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 74
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 79
    return-void

    .line 66
    :cond_1
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->pause()V

    .line 125
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->shown:Z

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->tryUnregisterReceiver()V

    .line 128
    :cond_0
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->resume(Landroid/app/Activity;)V

    .line 117
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->shown:Z

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    :cond_0
    return-void
.end method

.method public show()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->createBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->intentFilter:Landroid/content/IntentFilter;

    .line 49
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "PROMO_HOUSE_AD_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "PROMO_HOUSE_AD_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "PROMO_HOUSE_ACTIVITY_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    iput-boolean v3, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->shown:Z

    .line 55
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->notifyListenerThatAdIsShown()V

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const-string v1, "Intent_URL"

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 59
    return v3
.end method

.method public unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->tryUnregisterReceiver()V

    .line 107
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 109
    iput-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->webView:Landroid/webkit/WebView;

    .line 111
    :cond_0
    iput-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    return-void
.end method
