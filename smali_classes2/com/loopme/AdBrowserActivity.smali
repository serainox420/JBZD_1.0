.class public final Lcom/loopme/AdBrowserActivity;
.super Landroid/app/Activity;
.source "AdBrowserActivity.java"


# static fields
.field private static final KEY_URL:Ljava/lang/String; = "url"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

.field private mBackButton:Landroid/widget/Button;

.field private mBase64Drawables:Lcom/loopme/common/Base64Drawables;

.field private mBaseAd:Lcom/loopme/BaseAd;

.field private mIsBackFromMarket:Z

.field private mLayout:Lcom/loopme/adbrowser/AdBrowserLayout;

.field private mProgress:Landroid/view/View;

.field private mUrl:Ljava/lang/String;

.field private mWebClientListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/loopme/AdBrowserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/AdBrowserActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/AdBrowserActivity;->mIsBackFromMarket:Z

    .line 50
    new-instance v0, Lcom/loopme/common/Base64Drawables;

    invoke-direct {v0}, Lcom/loopme/common/Base64Drawables;-><init>()V

    iput-object v0, p0, Lcom/loopme/AdBrowserActivity;->mBase64Drawables:Lcom/loopme/common/Base64Drawables;

    return-void
.end method

.method static synthetic access$000(Lcom/loopme/AdBrowserActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/loopme/AdBrowserActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mBackButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/loopme/AdBrowserActivity;)Lcom/loopme/common/Base64Drawables;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mBase64Drawables:Lcom/loopme/common/Base64Drawables;

    return-object v0
.end method

.method static synthetic access$300(Lcom/loopme/AdBrowserActivity;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/loopme/AdBrowserActivity;->setImage(Landroid/widget/Button;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/loopme/AdBrowserActivity;)Lcom/loopme/BaseAd;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mBaseAd:Lcom/loopme/BaseAd;

    return-object v0
.end method

.method static synthetic access$500(Lcom/loopme/AdBrowserActivity;)Lcom/loopme/adbrowser/AdBrowserLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mLayout:Lcom/loopme/adbrowser/AdBrowserLayout;

    return-object v0
.end method

.method private initAdBrowserClientListener()Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/loopme/AdBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/loopme/AdBrowserActivity$1;-><init>(Lcom/loopme/AdBrowserActivity;)V

    return-object v0
.end method

.method private initButtonListeners(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mLayout:Lcom/loopme/adbrowser/AdBrowserLayout;

    invoke-virtual {v0}, Lcom/loopme/adbrowser/AdBrowserLayout;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/loopme/AdBrowserActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/loopme/AdBrowserActivity$2;-><init>(Lcom/loopme/AdBrowserActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mLayout:Lcom/loopme/adbrowser/AdBrowserLayout;

    invoke-virtual {v0}, Lcom/loopme/adbrowser/AdBrowserLayout;->getCloseButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/loopme/AdBrowserActivity$3;

    invoke-direct {v1, p0}, Lcom/loopme/AdBrowserActivity$3;-><init>(Lcom/loopme/AdBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mLayout:Lcom/loopme/adbrowser/AdBrowserLayout;

    invoke-virtual {v0}, Lcom/loopme/adbrowser/AdBrowserLayout;->getRefreshButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/loopme/AdBrowserActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/loopme/AdBrowserActivity$4;-><init>(Lcom/loopme/AdBrowserActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mLayout:Lcom/loopme/adbrowser/AdBrowserLayout;

    invoke-virtual {v0}, Lcom/loopme/adbrowser/AdBrowserLayout;->getNativeButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/loopme/AdBrowserActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/loopme/AdBrowserActivity$5;-><init>(Lcom/loopme/AdBrowserActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    return-void
.end method

.method private initWebView(Lcom/loopme/adbrowser/BrowserWebView;)V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/loopme/AdBrowserActivity;->initAdBrowserClientListener()Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/AdBrowserActivity;->mWebClientListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;

    .line 131
    new-instance v0, Lcom/loopme/adbrowser/AdBrowserWebViewClient;

    iget-object v1, p0, Lcom/loopme/AdBrowserActivity;->mWebClientListener:Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;

    invoke-direct {v0, v1}, Lcom/loopme/adbrowser/AdBrowserWebViewClient;-><init>(Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;)V

    .line 132
    invoke-virtual {p1, v0}, Lcom/loopme/adbrowser/BrowserWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 133
    invoke-virtual {p1}, Lcom/loopme/adbrowser/BrowserWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 134
    return-void
.end method

.method private isValidExtras()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/loopme/AdBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appkey"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Lcom/loopme/AdBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "format"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 86
    invoke-virtual {p0}, Lcom/loopme/AdBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 87
    if-eqz v3, :cond_0

    .line 88
    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/loopme/AdBrowserActivity;->mUrl:Ljava/lang/String;

    .line 90
    :cond_0
    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_3

    .line 91
    invoke-static {v1, v5}, Lcom/loopme/LoopMeAdHolder;->getBanner(Ljava/lang/String;Landroid/content/Context;)Lcom/loopme/LoopMeBanner;

    move-result-object v1

    iput-object v1, p0, Lcom/loopme/AdBrowserActivity;->mBaseAd:Lcom/loopme/BaseAd;

    .line 97
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/loopme/AdBrowserActivity;->mBaseAd:Lcom/loopme/BaseAd;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/loopme/AdBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 93
    :cond_3
    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_1

    .line 94
    invoke-static {v1, v5}, Lcom/loopme/LoopMeAdHolder;->getInterstitial(Ljava/lang/String;Landroid/content/Context;)Lcom/loopme/LoopMeInterstitial;

    move-result-object v1

    iput-object v1, p0, Lcom/loopme/AdBrowserActivity;->mBaseAd:Lcom/loopme/BaseAd;

    goto :goto_0
.end method

.method private setImage(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 170
    invoke-static {p2}, Lcom/loopme/common/Utils;->decodeImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {p2}, Lcom/loopme/common/Utils;->decodeImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcom/loopme/AdBrowserActivity;->isValidExtras()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/loopme/AdBrowserActivity;->requestWindowFeature(I)Z

    .line 59
    invoke-virtual {p0}, Lcom/loopme/AdBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 62
    new-instance v0, Lcom/loopme/adbrowser/AdBrowserLayout;

    invoke-virtual {p0}, Lcom/loopme/AdBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loopme/adbrowser/AdBrowserLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loopme/AdBrowserActivity;->mLayout:Lcom/loopme/adbrowser/AdBrowserLayout;

    .line 63
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mLayout:Lcom/loopme/adbrowser/AdBrowserLayout;

    invoke-virtual {p0, v0}, Lcom/loopme/AdBrowserActivity;->setContentView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mLayout:Lcom/loopme/adbrowser/AdBrowserLayout;

    invoke-virtual {v0}, Lcom/loopme/adbrowser/AdBrowserLayout;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/AdBrowserActivity;->mProgress:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mLayout:Lcom/loopme/adbrowser/AdBrowserLayout;

    invoke-virtual {v0}, Lcom/loopme/adbrowser/AdBrowserLayout;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/AdBrowserActivity;->mBackButton:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mLayout:Lcom/loopme/adbrowser/AdBrowserLayout;

    invoke-virtual {v0}, Lcom/loopme/adbrowser/AdBrowserLayout;->getWebView()Lcom/loopme/adbrowser/BrowserWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/AdBrowserActivity;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    .line 69
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    invoke-direct {p0, v0}, Lcom/loopme/AdBrowserActivity;->initWebView(Lcom/loopme/adbrowser/BrowserWebView;)V

    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    invoke-virtual {v0, p1}, Lcom/loopme/adbrowser/BrowserWebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    invoke-direct {p0, v0}, Lcom/loopme/AdBrowserActivity;->initButtonListeners(Landroid/webkit/WebView;)V

    .line 81
    :goto_1
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    iget-object v1, p0, Lcom/loopme/AdBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/loopme/adbrowser/BrowserWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/loopme/AdBrowserActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/loopme/AdBrowserActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, " onDestroy"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/loopme/adbrowser/BrowserWebView;->clearCache(Z)V

    .line 115
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 116
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 224
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/loopme/AdBrowserActivity;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    invoke-virtual {v1}, Lcom/loopme/adbrowser/BrowserWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/loopme/AdBrowserActivity;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    invoke-virtual {v1}, Lcom/loopme/adbrowser/BrowserWebView;->goBack()V

    .line 232
    :goto_0
    return v0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/loopme/AdBrowserActivity;->finish()V

    goto :goto_0

    .line 232
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onPause()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 103
    sget-object v0, Lcom/loopme/AdBrowserActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    invoke-virtual {v0}, Lcom/loopme/adbrowser/BrowserWebView;->onPause()V

    .line 107
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/AdBrowserActivity;->mIsBackFromMarket:Z

    .line 238
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 239
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    sget-object v0, Lcom/loopme/AdBrowserActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-boolean v0, p0, Lcom/loopme/AdBrowserActivity;->mIsBackFromMarket:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/loopme/AdBrowserActivity;->finish()V

    .line 125
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/AdBrowserActivity;->mIsBackFromMarket:Z

    .line 126
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mLayout:Lcom/loopme/adbrowser/AdBrowserLayout;

    invoke-virtual {v0}, Lcom/loopme/adbrowser/AdBrowserLayout;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity;->mAdBrowserWebview:Lcom/loopme/adbrowser/BrowserWebView;

    invoke-virtual {v0, p1}, Lcom/loopme/adbrowser/BrowserWebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 244
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 245
    return-void
.end method
