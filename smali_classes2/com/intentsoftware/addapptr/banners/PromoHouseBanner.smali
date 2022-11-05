.class public Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;
.super Lcom/intentsoftware/addapptr/ad/BannerAd;
.source "PromoHouseBanner.java"


# static fields
.field private static final AdTypePhone:I = 0xb

.field private static final AdTypeTablet:I = 0xc

.field private static final ServerResponseClose:Ljava/lang/String; = "krassapp://close"

.field private static final ServerResponseNoAd:Ljava/lang/String; = "internal:noad"

.field private static final UrlFormat:Ljava/lang/String; = "https://house.aatkit.com/cgi-bin/house.cgi?type=%d&slot=%d&app=%s&lang=%s&model=%s&idfa=%s"


# instance fields
.field private failed:Z

.field private promoBannerView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/BannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->failed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->failed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->notifyListenerThatAdWasClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->notifyListenerThatAdWasLoaded()V

    return-void
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->stopLoading()V

    return-void
.end method

.method static synthetic access$800(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->notifyListenerThatAdFailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method private createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;-><init>(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)V

    return-object v0
.end method

.method private stopLoading()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->promoBannerView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->promoBannerView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->promoBannerView:Landroid/webkit/WebView;

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->promoBannerView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/BannerAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 40
    invoke-static {p1}, Lcom/intentsoftware/addapptr/c/m;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 41
    :goto_0
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 42
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

    .line 43
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 46
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->promoBannerView:Landroid/webkit/WebView;

    .line 47
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->promoBannerView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->createWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 49
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->promoBannerView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->promoBannerView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 52
    return-void

    .line 40
    :cond_1
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public unload()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->stopLoading()V

    .line 150
    return-void
.end method
