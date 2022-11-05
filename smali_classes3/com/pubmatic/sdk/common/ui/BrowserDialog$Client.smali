.class Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;
.super Landroid/webkit/WebViewClient;
.source "BrowserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/ui/BrowserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;Lcom/pubmatic/sdk/common/ui/BrowserDialog$1;)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;-><init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 393
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$1200(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 394
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$1300(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 395
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$900(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0, v2}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$302(Lcom/pubmatic/sdk/common/ui/BrowserDialog;Z)Z

    .line 398
    const-string v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->dismiss()V

    .line 400
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 366
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$900(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 369
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 370
    iget-object v1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$800(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v2}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$900(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$900(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 373
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 374
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$900(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 388
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$1100(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    .line 381
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-virtual {v0, p2}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->loadSslErrorPage(Landroid/webkit/SslErrorHandler;)V

    .line 382
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 406
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 408
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    :goto_0
    return v0

    .line 411
    :catch_0
    move-exception v1

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$500(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Lcom/pubmatic/sdk/common/ui/BrowserDialog$Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Client;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-interface {v1, v2, p2, v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$Handler;->browserDialogOpenUrl(Lcom/pubmatic/sdk/common/ui/BrowserDialog;Ljava/lang/String;Z)V

    .line 416
    const/4 v0, 0x1

    goto :goto_0
.end method
