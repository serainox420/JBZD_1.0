.class final Lcom/flurry/sdk/fc$c;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fc;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/fc;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/flurry/sdk/fc$c;->a:Lcom/flurry/sdk/fc;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/fc;B)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/flurry/sdk/fc$c;-><init>(Lcom/flurry/sdk/fc;)V

    return-void
.end method


# virtual methods
.method public final onHideCustomView()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flurry/sdk/fc$c;->a:Lcom/flurry/sdk/fc;

    invoke-static {v0}, Lcom/flurry/sdk/fc;->c(Lcom/flurry/sdk/fc;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    return-void
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/flurry/sdk/fc$c;->a:Lcom/flurry/sdk/fc;

    invoke-static {v0}, Lcom/flurry/sdk/fc;->c(Lcom/flurry/sdk/fc;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 124
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 125
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/flurry/sdk/fc$c;->a:Lcom/flurry/sdk/fc;

    invoke-static {v0}, Lcom/flurry/sdk/fc;->c(Lcom/flurry/sdk/fc;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    :cond_0
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/flurry/sdk/fc$c;->a:Lcom/flurry/sdk/fc;

    invoke-static {v0}, Lcom/flurry/sdk/fc;->c(Lcom/flurry/sdk/fc;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/fc$c;->a:Lcom/flurry/sdk/fc;

    invoke-static {v0}, Lcom/flurry/sdk/fc;->c(Lcom/flurry/sdk/fc;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 108
    return-void
.end method
