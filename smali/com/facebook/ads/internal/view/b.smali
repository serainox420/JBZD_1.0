.class public abstract Lcom/facebook/ads/internal/view/b;
.super Landroid/webkit/WebView;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/view/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/view/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/b;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/b;->a()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/b;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/b;->b()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/b;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {p0}, Lcom/facebook/ads/internal/util/i;->b(Landroid/webkit/WebView;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/b;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/b;->setHorizontalScrollbarOverlay(Z)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/b;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/b;->setVerticalScrollbarOverlay(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/ads/internal/view/b;->a:Ljava/lang/String;

    const-string v1, "Failed to initialize CookieManager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected a()Landroid/webkit/WebChromeClient;
    .locals 1

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-object v0
.end method

.method protected b()Landroid/webkit/WebViewClient;
    .locals 1

    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/b;->b:Z

    return v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/b;->b:Z

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
