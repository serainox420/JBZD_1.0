.class Lcom/mopub/mobileads/b;
.super Landroid/webkit/WebViewClient;
.source "HtmlWebViewClient.java"


# instance fields
.field private final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/mopub/common/UrlAction;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private d:Lcom/mopub/mobileads/HtmlWebViewListener;

.field private e:Lcom/mopub/mobileads/BaseHtmlWebView;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/HtmlWebViewListener;Lcom/mopub/mobileads/BaseHtmlWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 24
    sget-object v0, Lcom/mopub/common/UrlAction;->HANDLE_MOPUB_SCHEME:Lcom/mopub/common/UrlAction;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/mopub/common/UrlAction;

    const/4 v2, 0x0

    sget-object v3, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/mopub/common/UrlAction;->HANDLE_PHONE_SCHEME:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/b;->a:Ljava/util/EnumSet;

    .line 45
    iput-object p1, p0, Lcom/mopub/mobileads/b;->d:Lcom/mopub/mobileads/HtmlWebViewListener;

    .line 46
    iput-object p2, p0, Lcom/mopub/mobileads/b;->e:Lcom/mopub/mobileads/BaseHtmlWebView;

    .line 47
    iput-object p3, p0, Lcom/mopub/mobileads/b;->f:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/mopub/mobileads/b;->g:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/mopub/mobileads/b;->c:Ljava/lang/String;

    .line 50
    invoke-virtual {p2}, Lcom/mopub/mobileads/BaseHtmlWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/b;->b:Landroid/content/Context;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/b;)Lcom/mopub/mobileads/BaseHtmlWebView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mopub/mobileads/b;->e:Lcom/mopub/mobileads/BaseHtmlWebView;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/mobileads/b;)Lcom/mopub/mobileads/HtmlWebViewListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mopub/mobileads/b;->d:Lcom/mopub/mobileads/HtmlWebViewListener;

    return-object v0
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/b;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 98
    iget-object v0, p0, Lcom/mopub/mobileads/b;->e:Lcom/mopub/mobileads/BaseHtmlWebView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->wasClicked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/b;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mopub/common/util/Intents;->showMoPubBrowserForUrl(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Lcom/mopub/exceptions/IntentNotResolvableException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "Attempted to redirect without user interaction"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    iget-object v1, p0, Lcom/mopub/mobileads/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/b;->a:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Ljava/util/EnumSet;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/b$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/b$2;-><init>(Lcom/mopub/mobileads/b;)V

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/b$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/b$1;-><init>(Lcom/mopub/mobileads/b;)V

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withMoPubSchemeListener(Lcom/mopub/common/UrlHandler$MoPubSchemeListener;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/b;->e:Lcom/mopub/mobileads/BaseHtmlWebView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/BaseHtmlWebView;->wasClicked()Z

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method
