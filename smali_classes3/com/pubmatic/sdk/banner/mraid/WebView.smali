.class public Lcom/pubmatic/sdk/banner/mraid/WebView;
.super Landroid/webkit/WebView;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;,
        Lcom/pubmatic/sdk/banner/mraid/WebView$ChromeClient;,
        Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;,
        Lcom/pubmatic/sdk/banner/mraid/WebView$TouchListener;
    }
.end annotation


# static fields
.field private static MRAID_JAVASCRIPT_INTERFACE_NAME:Ljava/lang/String;


# instance fields
.field private handler:Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

.field private loaded:Z

.field private mraidBridgeJavascript:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "MASTMRAIDWebView"

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/WebView;->MRAID_JAVASCRIPT_INTERFACE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/mraid/WebView;->handler:Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    .line 44
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/mraid/WebView;->loaded:Z

    .line 47
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/mraid/WebView;->mraidBridgeJavascript:Ljava/lang/Object;

    .line 54
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;-><init>(Lcom/pubmatic/sdk/banner/mraid/WebView;)V

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 55
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/WebView$ChromeClient;

    invoke-direct {v0, p0, v2}, Lcom/pubmatic/sdk/banner/mraid/WebView$ChromeClient;-><init>(Lcom/pubmatic/sdk/banner/mraid/WebView;Lcom/pubmatic/sdk/banner/mraid/WebView$1;)V

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 56
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 61
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/WebView$TouchListener;

    invoke-direct {v0, p0, v2}, Lcom/pubmatic/sdk/banner/mraid/WebView$TouchListener;-><init>(Lcom/pubmatic/sdk/banner/mraid/WebView;Lcom/pubmatic/sdk/banner/mraid/WebView$1;)V

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    invoke-virtual {p0, v3}, Lcom/pubmatic/sdk/banner/mraid/WebView;->setScrollBarStyle(I)V

    .line 64
    return-void
.end method

.method static synthetic access$200(Lcom/pubmatic/sdk/banner/mraid/WebView;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/WebView;->mraidBridgeJavascript:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/pubmatic/sdk/banner/mraid/WebView;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/mraid/WebView;->mraidBridgeJavascript:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$302(Lcom/pubmatic/sdk/banner/mraid/WebView;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/pubmatic/sdk/banner/mraid/WebView;->loaded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/pubmatic/sdk/banner/mraid/WebView;)Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/WebView;->handler:Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    return-object v0
.end method


# virtual methods
.method public injectJavascript(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 94
    check-cast v0, Landroid/app/Activity;

    .line 95
    if-eqz v0, :cond_0

    .line 96
    new-instance v2, Lcom/pubmatic/sdk/banner/mraid/WebView$1;

    invoke-direct {v2, p0, v1}, Lcom/pubmatic/sdk/banner/mraid/WebView$1;-><init>(Lcom/pubmatic/sdk/banner/mraid/WebView;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    :cond_0
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/mraid/WebView;->loaded:Z

    return v0
.end method

.method public loadFragment(Ljava/lang/String;Lcom/pubmatic/sdk/banner/mraid/Bridge;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 76
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/WebView;->MRAID_JAVASCRIPT_INTERFACE_NAME:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    .line 81
    const-string v1, "<html><head><meta name=\"viewport\" content=\"user-scalable=0\"/><style>body{margin:0;padding:0;}</style><script type=\"text/javascript\">%s</script></head><body><div align=\"center\">%s</div></body></html>"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pubmatic/sdk/banner/mraid/WebView;->mraidBridgeJavascript:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 83
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 86
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/pubmatic/sdk/banner/mraid/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Lcom/pubmatic/sdk/banner/mraid/Bridge;)V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/WebView;->MRAID_JAVASCRIPT_INTERFACE_NAME:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public setHandler(Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/mraid/WebView;->handler:Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    .line 68
    return-void
.end method
