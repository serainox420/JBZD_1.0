.class public Lcom/flurry/sdk/fc;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/fc$c;,
        Lcom/flurry/sdk/fc$a;,
        Lcom/flurry/sdk/fc$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Ljava/lang/String;

.field private d:Lcom/flurry/sdk/fc$b;

.field private e:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/flurry/sdk/fc;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/fc;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v4, p0, Lcom/flurry/sdk/fc;->b:Landroid/webkit/WebView;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/sdk/fc;->c:Ljava/lang/String;

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AuthUrl cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p2, p0, Lcom/flurry/sdk/fc;->c:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/fc;->b:Landroid/webkit/WebView;

    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/fc;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/fc;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/fc;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 48
    iget-object v0, p0, Lcom/flurry/sdk/fc;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 50
    iget-object v0, p0, Lcom/flurry/sdk/fc;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/flurry/sdk/fc$a;

    invoke-direct {v1, p0, v3}, Lcom/flurry/sdk/fc$a;-><init>(Lcom/flurry/sdk/fc;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 51
    iget-object v0, p0, Lcom/flurry/sdk/fc;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/flurry/sdk/fc$c;

    invoke-direct {v1, p0, v3}, Lcom/flurry/sdk/fc$c;-><init>(Lcom/flurry/sdk/fc;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 54
    iget-object v0, p0, Lcom/flurry/sdk/fc;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/sdk/fc;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 55
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 59
    iget-object v1, p0, Lcom/flurry/sdk/fc;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lcom/flurry/sdk/fc;->b:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/fc;->addView(Landroid/view/View;)V

    .line 62
    new-instance v0, Landroid/widget/ProgressBar;

    const v1, 0x1010078

    invoke-direct {v0, p1, v4, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/flurry/sdk/fc;->e:Landroid/widget/ProgressBar;

    .line 63
    iget-object v0, p0, Lcom/flurry/sdk/fc;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/fc;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 65
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    iget-object v1, p0, Lcom/flurry/sdk/fc;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v0, p0, Lcom/flurry/sdk/fc;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/fc;->addView(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/fc;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/flurry/sdk/fc;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/flurry/sdk/fc;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/fc;)Lcom/flurry/sdk/fc$b;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/flurry/sdk/fc;->d:Lcom/flurry/sdk/fc$b;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/fc;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/flurry/sdk/fc;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public setRequestCompleteListener(Lcom/flurry/sdk/fc$b;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/flurry/sdk/fc;->d:Lcom/flurry/sdk/fc$b;

    .line 73
    return-void
.end method
