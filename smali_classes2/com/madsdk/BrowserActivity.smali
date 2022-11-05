.class public Lcom/madsdk/BrowserActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BrowserActivity.java"


# static fields
.field public static final KEY_URL:Ljava/lang/String; = "url"


# instance fields
.field private backButton:Landroid/view/View;

.field private backListener:Landroid/view/View$OnClickListener;

.field private forwardButton:Landroid/view/View;

.field private forwardListener:Landroid/view/View$OnClickListener;

.field private mWebView:Landroid/webkit/WebView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private reloadButton:Landroid/view/View;

.field private reloadListener:Landroid/view/View$OnClickListener;

.field private webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 25
    new-instance v0, Lcom/madsdk/BrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/madsdk/BrowserActivity$1;-><init>(Lcom/madsdk/BrowserActivity;)V

    iput-object v0, p0, Lcom/madsdk/BrowserActivity;->webViewClient:Landroid/webkit/WebViewClient;

    .line 94
    new-instance v0, Lcom/madsdk/BrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/madsdk/BrowserActivity$3;-><init>(Lcom/madsdk/BrowserActivity;)V

    iput-object v0, p0, Lcom/madsdk/BrowserActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 107
    new-instance v0, Lcom/madsdk/BrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/madsdk/BrowserActivity$4;-><init>(Lcom/madsdk/BrowserActivity;)V

    iput-object v0, p0, Lcom/madsdk/BrowserActivity;->forwardListener:Landroid/view/View$OnClickListener;

    .line 120
    new-instance v0, Lcom/madsdk/BrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/madsdk/BrowserActivity$5;-><init>(Lcom/madsdk/BrowserActivity;)V

    iput-object v0, p0, Lcom/madsdk/BrowserActivity;->reloadListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/madsdk/BrowserActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/madsdk/BrowserActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->reloadButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/madsdk/BrowserActivity;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/madsdk/BrowserActivity;->checkBackAndForwardButtons()V

    return-void
.end method

.method static synthetic access$300(Lcom/madsdk/BrowserActivity;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/madsdk/BrowserActivity;->goBack()V

    return-void
.end method

.method static synthetic access$400(Lcom/madsdk/BrowserActivity;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/madsdk/BrowserActivity;->goForward()V

    return-void
.end method

.method static synthetic access$500(Lcom/madsdk/BrowserActivity;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/madsdk/BrowserActivity;->reloadPage()V

    return-void
.end method

.method private checkBackAndForwardButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->backButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->forwardButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 54
    :goto_1
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->backButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->forwardButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private goBack()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 105
    :cond_0
    return-void
.end method

.method private goForward()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 118
    :cond_0
    return-void
.end method

.method private initControlButtons()V
    .locals 2

    .prologue
    .line 68
    sget v0, Lcom/madsdk/R$id;->previous_page:I

    invoke-virtual {p0, v0}, Lcom/madsdk/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/madsdk/BrowserActivity;->backButton:Landroid/view/View;

    .line 69
    sget v0, Lcom/madsdk/R$id;->next_page:I

    invoke-virtual {p0, v0}, Lcom/madsdk/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/madsdk/BrowserActivity;->forwardButton:Landroid/view/View;

    .line 70
    sget v0, Lcom/madsdk/R$id;->reload_page:I

    invoke-virtual {p0, v0}, Lcom/madsdk/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/madsdk/BrowserActivity;->reloadButton:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->backButton:Landroid/view/View;

    iget-object v1, p0, Lcom/madsdk/BrowserActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->forwardButton:Landroid/view/View;

    iget-object v1, p0, Lcom/madsdk/BrowserActivity;->forwardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->reloadButton:Landroid/view/View;

    iget-object v1, p0, Lcom/madsdk/BrowserActivity;->reloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget v0, Lcom/madsdk/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Lcom/madsdk/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/madsdk/BrowserActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 76
    return-void
.end method

.method private initWebView()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 80
    sget v0, Lcom/madsdk/R$id;->browser:I

    invoke-virtual {p0, v0}, Lcom/madsdk/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/madsdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    .line 81
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/madsdk/BrowserActivity;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 82
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/madsdk/BrowserActivity$2;

    invoke-direct {v1, p0}, Lcom/madsdk/BrowserActivity$2;-><init>(Lcom/madsdk/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 87
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/madsdk/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/madsdk/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/madsdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method private reloadPage()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/madsdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 129
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/madsdk/BrowserActivity;->requestWindowFeature(I)Z

    .line 59
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/madsdk/BrowserActivity;->requestWindowFeature(I)Z

    .line 60
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget v0, Lcom/madsdk/R$layout;->activity_browser:I

    invoke-virtual {p0, v0}, Lcom/madsdk/BrowserActivity;->setContentView(I)V

    .line 62
    sget v0, Lcom/madsdk/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/madsdk/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/madsdk/BrowserActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 63
    invoke-direct {p0}, Lcom/madsdk/BrowserActivity;->initWebView()V

    .line 64
    invoke-direct {p0}, Lcom/madsdk/BrowserActivity;->initControlButtons()V

    .line 65
    return-void
.end method
