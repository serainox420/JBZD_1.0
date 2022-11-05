.class public Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "NexageFullscreen.java"


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "http://bos.ads.nexage.com/adServe"


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private finalHtml:Ljava/lang/String;

.field private intentFilter:Landroid/content/IntentFilter;

.field private shown:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->finalHtml:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->tryUnregisterReceiver()V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$2;-><init>(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;)V

    return-object v0
.end method

.method private createUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    const-string v0, "http://bos.ads.nexage.com/adServe"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 153
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 154
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 157
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v2, "dcn"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 160
    const-string v2, "pos"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 161
    const-string v2, "ua"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 162
    const-string v0, "ip"

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 163
    const-string v0, "d(id24)"

    invoke-static {}, Lcom/intentsoftware/addapptr/c;->getGoogleAdvertisingIdString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 164
    const-string v0, "grp"

    invoke-virtual {v1, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 165
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tryUnregisterReceiver()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "Broadcast receiver already unregistered!"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 6

    .prologue
    const/16 v3, 0x400

    const/16 v2, 0x300

    const/4 v5, 0x1

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 52
    invoke-static {}, Lcom/intentsoftware/addapptr/c;->getGoogleAdvertisingIdString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "no Google Advertising ID available."

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 60
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v1, v2, :cond_2

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v1, v3, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_2

    .line 61
    const-string v0, "768x1024"

    .line 67
    :goto_1
    const-string v1, ""

    .line 68
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 69
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 70
    array-length v4, v2

    if-le v4, v5, :cond_1

    .line 71
    aget-object v1, v2, v5

    .line 74
    :cond_1
    invoke-direct {p0, v3, v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->createUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->baseUrl:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;)V

    .line 96
    new-instance v1, Lcom/intentsoftware/addapptr/b/c;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->baseUrl:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Lcom/intentsoftware/addapptr/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/intentsoftware/addapptr/b/c$a;)V

    goto :goto_0

    .line 62
    :cond_2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v1, v3, :cond_3

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v0, v2, :cond_3

    .line 63
    const-string v0, "1024x768"

    goto :goto_1

    .line 65
    :cond_3
    const-string v0, "fullpage"

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->pause()V

    .line 133
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->shown:Z

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->tryUnregisterReceiver()V

    .line 136
    :cond_0
    return-void
.end method

.method public resume(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->resume(Landroid/app/Activity;)V

    .line 125
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->shown:Z

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    :cond_0
    return-void
.end method

.method public show()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 33
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->createBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->intentFilter:Landroid/content/IntentFilter;

    .line 35
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "RTB1_AD_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "RTB1_ACTIVITY_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    iput-boolean v3, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->shown:Z

    .line 40
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->notifyListenerThatAdIsShown()V

    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const-string v1, "Intent_base_URL"

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "Intent_HTML"

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->finalHtml:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 45
    return v3
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->tryUnregisterReceiver()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    return-void
.end method
