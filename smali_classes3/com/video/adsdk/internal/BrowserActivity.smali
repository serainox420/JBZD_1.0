.class public Lcom/video/adsdk/internal/BrowserActivity;
.super Landroid/app/Activity;
.source "BrowserActivity.java"


# static fields
.field public static final EXTRA_URL:Ljava/lang/String; = "url"


# instance fields
.field private backButton:Landroid/widget/Button;

.field private backListener:Landroid/view/View$OnClickListener;

.field private closeListener:Landroid/view/View$OnClickListener;

.field private forwardButton:Landroid/widget/Button;

.field private forwardListener:Landroid/view/View$OnClickListener;

.field private spinner:Landroid/widget/ProgressBar;

.field private webView:Landroid/webkit/WebView;

.field private webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    new-instance v0, Lcom/video/adsdk/internal/BrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/video/adsdk/internal/BrowserActivity$1;-><init>(Lcom/video/adsdk/internal/BrowserActivity;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->webViewClient:Landroid/webkit/WebViewClient;

    .line 86
    new-instance v0, Lcom/video/adsdk/internal/BrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/video/adsdk/internal/BrowserActivity$2;-><init>(Lcom/video/adsdk/internal/BrowserActivity;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 99
    new-instance v0, Lcom/video/adsdk/internal/BrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/video/adsdk/internal/BrowserActivity$3;-><init>(Lcom/video/adsdk/internal/BrowserActivity;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->forwardListener:Landroid/view/View$OnClickListener;

    .line 112
    new-instance v0, Lcom/video/adsdk/internal/BrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/video/adsdk/internal/BrowserActivity$4;-><init>(Lcom/video/adsdk/internal/BrowserActivity;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->closeListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/video/adsdk/internal/BrowserActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->spinner:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/video/adsdk/internal/BrowserActivity;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/video/adsdk/internal/BrowserActivity;->checkBackAndForwardButtons()V

    return-void
.end method

.method static synthetic access$200(Lcom/video/adsdk/internal/BrowserActivity;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/video/adsdk/internal/BrowserActivity;->goBack()V

    return-void
.end method

.method static synthetic access$300(Lcom/video/adsdk/internal/BrowserActivity;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/video/adsdk/internal/BrowserActivity;->goForward()V

    return-void
.end method

.method private checkBackAndForwardButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->backButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->forwardButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 53
    :goto_1
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->backButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->forwardButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private goBack()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 97
    :cond_0
    return-void
.end method

.method private goForward()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 110
    :cond_0
    return-void
.end method

.method private setupButtons()V
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/video/adsdk/internal/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "backButton"

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/video/adsdk/internal/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->backButton:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->backButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/video/adsdk/internal/BrowserActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/video/adsdk/internal/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "forwardButton"

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/video/adsdk/internal/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->forwardButton:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->forwardButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/video/adsdk/internal/BrowserActivity;->forwardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/video/adsdk/internal/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "closeButton"

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/video/adsdk/internal/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/video/adsdk/internal/BrowserActivity;->closeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method private setupSpinner()V
    .locals 4

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/video/adsdk/internal/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "progressBar"

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/video/adsdk/internal/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->spinner:Landroid/widget/ProgressBar;

    .line 67
    return-void
.end method

.method private setupWebView()V
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/video/adsdk/internal/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "webView"

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/video/adsdk/internal/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->webView:Landroid/webkit/WebView;

    .line 71
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/video/adsdk/internal/BrowserActivity;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 72
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/video/adsdk/internal/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/video/adsdk/internal/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "activity_browser"

    const-string v2, "layout"

    invoke-virtual {p0}, Lcom/video/adsdk/internal/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/BrowserActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/video/adsdk/internal/BrowserActivity;->setupSpinner()V

    .line 61
    invoke-direct {p0}, Lcom/video/adsdk/internal/BrowserActivity;->setupWebView()V

    .line 62
    invoke-direct {p0}, Lcom/video/adsdk/internal/BrowserActivity;->setupButtons()V

    .line 63
    return-void
.end method
