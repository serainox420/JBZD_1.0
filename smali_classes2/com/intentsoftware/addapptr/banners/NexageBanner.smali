.class public Lcom/intentsoftware/addapptr/banners/NexageBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "NexageBanner.java"


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "http://bos.ads.nexage.com/adServe"


# instance fields
.field private bannerContainer:Landroid/widget/FrameLayout;

.field private bannerView:Landroid/webkit/WebView;

.field private currentUrl:Ljava/lang/String;

.field private failed:Z

.field private htmlDownloader:Lcom/intentsoftware/addapptr/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/NexageBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/NexageBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->failed:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/intentsoftware/addapptr/banners/NexageBanner;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->failed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/intentsoftware/addapptr/banners/NexageBanner;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$1300(Lcom/intentsoftware/addapptr/banners/NexageBanner;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->stopLoading()V

    return-void
.end method

.method static synthetic access$1400(Lcom/intentsoftware/addapptr/banners/NexageBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/intentsoftware/addapptr/banners/NexageBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/intentsoftware/addapptr/banners/NexageBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/intentsoftware/addapptr/banners/NexageBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->bannerContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/intentsoftware/addapptr/banners/NexageBanner;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->bannerContainer:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->bannerView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/intentsoftware/addapptr/banners/NexageBanner;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->bannerView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->createWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/intentsoftware/addapptr/banners/NexageBanner;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method private createUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    const-string v0, "http://bos.ads.nexage.com/adServe"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 106
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 107
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 108
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 110
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v2, "dcn"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 113
    const-string v2, "pos"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 114
    const-string v2, "ua"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 115
    const-string v0, "ip"

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 116
    const-string v0, "d(id24)"

    invoke-static {}, Lcom/intentsoftware/addapptr/c;->getGoogleAdvertisingIdString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    const-string v0, "grp"

    invoke-virtual {v1, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 118
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;-><init>(Lcom/intentsoftware/addapptr/banners/NexageBanner;)V

    return-object v0
.end method

.method private stopLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->htmlDownloader:Lcom/intentsoftware/addapptr/b/c;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->htmlDownloader:Lcom/intentsoftware/addapptr/b/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/b/c;->cancel(Z)Z

    .line 196
    iput-object v2, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->htmlDownloader:Lcom/intentsoftware/addapptr/b/c;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->bannerView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->bannerView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 200
    iput-object v2, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->bannerView:Landroid/webkit/WebView;

    .line 202
    :cond_1
    return-void
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->bannerContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 41
    invoke-static {}, Lcom/intentsoftware/addapptr/c;->getGoogleAdvertisingIdString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    const-string v0, "no google advertising id"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v0, ""

    .line 47
    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 48
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 49
    array-length v3, v1

    if-le v3, v4, :cond_1

    .line 50
    aget-object v0, v1, v4

    .line 54
    :cond_1
    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner300x250:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v1, :cond_2

    .line 55
    const-string v1, "medrec"

    .line 65
    :goto_1
    invoke-direct {p0, v2, v1, v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->createUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->currentUrl:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;

    invoke-direct {v0, p0, p3}, Lcom/intentsoftware/addapptr/banners/NexageBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/NexageBanner;Lcom/intentsoftware/addapptr/BannerSize;)V

    .line 100
    new-instance v1, Lcom/intentsoftware/addapptr/b/c;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->currentUrl:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Lcom/intentsoftware/addapptr/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/intentsoftware/addapptr/b/c$a;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->htmlDownloader:Lcom/intentsoftware/addapptr/b/c;

    goto :goto_0

    .line 56
    :cond_2
    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner768x90:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v1, :cond_3

    .line 57
    const-string v1, "leader"

    goto :goto_1

    .line 58
    :cond_3
    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner320x53:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne p3, v1, :cond_4

    .line 59
    const-string v1, "header"

    goto :goto_1

    .line 61
    :cond_4
    const-string v0, "unsupported size"

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->stopLoading()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner;->bannerContainer:Landroid/widget/FrameLayout;

    .line 208
    return-void
.end method
