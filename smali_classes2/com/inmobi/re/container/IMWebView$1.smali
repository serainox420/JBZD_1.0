.class Lcom/inmobi/re/container/IMWebView$1;
.super Landroid/webkit/WebViewClient;
.source "IMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/re/container/IMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/IMWebView;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 717
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMWebView-> onLoadResource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 723
    :cond_0
    if-eqz p2, :cond_3

    .line 724
    const-string v0, "/mraid.js"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 728
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMWebView-> onLoadResource:Hippy, Mraid ad alert!...injecting mraid and mraidview object at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/re/container/IMWebView;->e(Lcom/inmobi/re/container/IMWebView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 740
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/re/container/IMWebView;->e(Lcom/inmobi/re/container/IMWebView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/re/container/IMWebView;->mraidLoaded:Z

    if-nez v0, :cond_2

    .line 743
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getMRAIDString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/inmobi/re/container/IMWebView;->mraidLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :cond_3
    :goto_0
    return-void

    .line 747
    :catch_0
    move-exception v0

    .line 748
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Cannot load resource"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 598
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMWebView-> onPageFinished, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->d(Lcom/inmobi/re/container/IMWebView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    :cond_1
    :goto_0
    return-void

    .line 623
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->e(Lcom/inmobi/re/container/IMWebView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 624
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/re/container/IMWebView;->mraidLoaded:Z

    if-nez v0, :cond_3

    .line 625
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getMRAIDString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 628
    :cond_3
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMWebView-> Current State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/re/container/IMWebView;->b(Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->b(Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_1

    .line 632
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "window.mraid.broadcastEvent(\'ready\');"

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "window._im_imai.broadcastEvent(\'ready\');"

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 634
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMWebView-> Firing ready event at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_7

    .line 640
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    .line 648
    :goto_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    if-eqz v0, :cond_5

    .line 650
    :cond_4
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 651
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setVisibility(I)V

    .line 655
    :cond_5
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->f(Lcom/inmobi/re/container/IMWebView;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->c(Lcom/inmobi/re/container/IMWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    .line 656
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->f(Lcom/inmobi/re/container/IMWebView;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 659
    :cond_6
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->g(Lcom/inmobi/re/container/IMWebView;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->g(Lcom/inmobi/re/container/IMWebView;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Exception in onPageFinished "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 642
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 549
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    .line 550
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMWebView-> onPageStarted url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " p "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;Z)Z

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/inmobi/re/container/IMWebView;->mraidLoaded:Z

    .line 561
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 566
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMWebView-> error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->b(Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->c(Lcom/inmobi/re/container/IMWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onError()V

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;Landroid/os/Message;)Landroid/os/Message;

    .line 587
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inmobi/re/container/IMWebView;->b(Lcom/inmobi/re/container/IMWebView;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Exception in webview loading "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0, p2, p3}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 714
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 672
    const-string v2, "[InMobi]-[RE]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMWebView-> shouldOverrideUrlLoading, url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "webview id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v2, v2, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    if-eqz v2, :cond_2

    .line 683
    const-string v2, "http:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->doHidePlayers()V

    move v0, v1

    .line 703
    :goto_0
    return v0

    .line 690
    :cond_1
    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v2, p2}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    const-string v2, "[InMobi]-[RE]-4.5.5"

    const-string v3, "Should override exception"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 703
    goto :goto_0

    .line 697
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView$1;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v2, p2}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
