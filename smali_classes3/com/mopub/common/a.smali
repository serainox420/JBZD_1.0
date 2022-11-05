.class Lcom/mopub/common/a;
.super Landroid/webkit/WebViewClient;
.source "BrowserWebViewClient.java"


# static fields
.field private static final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/mopub/common/UrlAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/mopub/common/MoPubBrowser;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    sget-object v0, Lcom/mopub/common/UrlAction;->HANDLE_PHONE_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/mopub/common/UrlAction;

    const/4 v2, 0x0

    sget-object v3, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/a;->a:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Lcom/mopub/common/MoPubBrowser;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mopub/common/a;->b:Lcom/mopub/common/MoPubBrowser;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/mopub/common/a;)Lcom/mopub/common/MoPubBrowser;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mopub/common/a;->b:Lcom/mopub/common/MoPubBrowser;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/common/util/Drawables;->LEFT_ARROW:Lcom/mopub/common/util/Drawables;

    iget-object v1, p0, Lcom/mopub/common/a;->b:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/mopub/common/a;->b:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v1}, Lcom/mopub/common/MoPubBrowser;->getBackButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mopub/common/util/Drawables;->RIGHT_ARROW:Lcom/mopub/common/util/Drawables;

    iget-object v1, p0, Lcom/mopub/common/a;->b:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    :goto_1
    iget-object v1, p0, Lcom/mopub/common/a;->b:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v1}, Lcom/mopub/common/MoPubBrowser;->getForwardButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/mopub/common/util/Drawables;->UNLEFT_ARROW:Lcom/mopub/common/util/Drawables;

    iget-object v1, p0, Lcom/mopub/common/a;->b:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    sget-object v0, Lcom/mopub/common/util/Drawables;->UNRIGHT_ARROW:Lcom/mopub/common/util/Drawables;

    iget-object v1, p0, Lcom/mopub/common/a;->b:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 81
    iget-object v0, p0, Lcom/mopub/common/a;->b:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v0}, Lcom/mopub/common/MoPubBrowser;->getForwardButton()Landroid/widget/ImageButton;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/util/Drawables;->UNRIGHT_ARROW:Lcom/mopub/common/util/Drawables;

    iget-object v2, p0, Lcom/mopub/common/a;->b:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v1, v2}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoPubBrowser error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 50
    :cond_0
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    sget-object v1, Lcom/mopub/common/a;->a:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Ljava/util/EnumSet;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    new-instance v1, Lcom/mopub/common/a$1;

    invoke-direct {v1, p0}, Lcom/mopub/common/a$1;-><init>(Lcom/mopub/common/a;)V

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/mopub/common/a;->b:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {v1}, Lcom/mopub/common/MoPubBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/mopub/common/UrlHandler;->handleResolvedUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)Z

    move-result v0

    goto :goto_0
.end method
