.class public Lcom/video/adsdk/internal/ADJavascriptBridge;
.super Landroid/webkit/WebViewClient;
.source "ADJavascriptBridge.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/JavascriptBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;
    }
.end annotation


# instance fields
.field m_interface:Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;

.field private m_jsExecutionCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/video/adsdk/interfaces/JavascriptBridgeListener;",
            ">;"
        }
    .end annotation
.end field

.field m_pageLoaded:Ljava/lang/Boolean;

.field m_view:Landroid/webkit/WebView;

.field urlWasNotFound:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    .line 29
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_pageLoaded:Ljava/lang/Boolean;

    .line 47
    iput-boolean v3, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->urlWasNotFound:Z

    .line 189
    new-instance v0, Lcom/video/adsdk/internal/ADJavascriptBridge$3;

    invoke-direct {v0, p0}, Lcom/video/adsdk/internal/ADJavascriptBridge$3;-><init>(Lcom/video/adsdk/internal/ADJavascriptBridge;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_jsExecutionCallback:Landroid/webkit/ValueCallback;

    .line 199
    invoke-static {p1}, Lcom/video/adsdk/internal/Helper;->createWebViewForJavascriptInteraction(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    .line 200
    new-instance v0, Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;

    invoke-direct {v0, p0}, Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;-><init>(Lcom/video/adsdk/internal/ADJavascriptBridge;)V

    iput-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_interface:Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;

    .line 201
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_interface:Lcom/video/adsdk/internal/ADJavascriptBridge$JavascriptInterface;

    const-string v2, "HTMLOUT"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    new-instance v1, Lcom/video/adsdk/internal/ADJavascriptBridge$4;

    invoke-direct {v1, p0}, Lcom/video/adsdk/internal/ADJavascriptBridge$4;-><init>(Lcom/video/adsdk/internal/ADJavascriptBridge;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 230
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 231
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/video/adsdk/internal/ADJavascriptBridge;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/video/adsdk/internal/ADJavascriptBridge;->webViewReady()V

    return-void
.end method

.method static synthetic access$100(Lcom/video/adsdk/internal/ADJavascriptBridge;)Landroid/webkit/ValueCallback;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_jsExecutionCallback:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method private executeThroughEvaluate(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 176
    .line 178
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    new-instance v1, Lcom/video/adsdk/internal/ADJavascriptBridge$2;

    invoke-direct {v1, p0, p1}, Lcom/video/adsdk/internal/ADJavascriptBridge$2;-><init>(Lcom/video/adsdk/internal/ADJavascriptBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method private executeThroughLoad(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    new-instance v2, Lcom/video/adsdk/internal/ADJavascriptBridge$1;

    invoke-direct {v2, p0, v0}, Lcom/video/adsdk/internal/ADJavascriptBridge$1;-><init>(Lcom/video/adsdk/internal/ADJavascriptBridge;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method private webViewReady()V
    .locals 1

    .prologue
    .line 321
    const-string v0, "if (typeof videoAdObj != \'undefined\' && videoAdObj && videoAdObj.ready != \'undefined\') videoAdObj.ready = true;"

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADJavascriptBridge;->executeJavascript(Ljava/lang/String;)V

    .line 322
    return-void
.end method


# virtual methods
.method public addListener(Lcom/video/adsdk/interfaces/JavascriptBridgeListener;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 419
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADJavascriptBridge;->loadUrl(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public clearView()V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method executeJavascript(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 131
    const-string v0, "native->js"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lcom/video/adsdk/internal/ADJavascriptBridge;->executeThroughEvaluate(Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0, p1}, Lcom/video/adsdk/internal/ADJavascriptBridge;->executeThroughLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finalReturn(I)V
    .locals 2

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "if (typeof videoAdObj != \'undefined\' && videoAdObj) videoAdObj.finalReturn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADJavascriptBridge;->executeJavascript(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 399
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 400
    return-void
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_pageLoaded:Ljava/lang/Boolean;

    .line 301
    iput-boolean v1, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->urlWasNotFound:Z

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    new-instance v1, Lcom/video/adsdk/internal/ADJavascriptBridge$5;

    invoke-direct {v1, p0, p1}, Lcom/video/adsdk/internal/ADJavascriptBridge$5;-><init>(Lcom/video/adsdk/internal/ADJavascriptBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public movieClick()V
    .locals 1

    .prologue
    .line 337
    const-string v0, "if (ads.callbacks.click) ads.callbacks.click();"

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADJavascriptBridge;->executeJavascript(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public movieDidFinish(J)V
    .locals 3

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "if (ads.callbacks.progress) ads.callbacks.progress(\'complete\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", null);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADJavascriptBridge;->executeJavascript(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public moviePulse(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;J)V
    .locals 0

    .prologue
    .line 387
    invoke-virtual {p0, p1, p2, p3}, Lcom/video/adsdk/internal/ADJavascriptBridge;->movieStateDidChange(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;J)V

    .line 388
    return-void
.end method

.method public movieStateDidChange(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;J)V
    .locals 4

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 345
    sget-object v1, Lcom/video/adsdk/internal/ADJavascriptBridge$6;->$SwitchMap$com$video$adsdk$interfaces$VideoBridge$MovieState:[I

    invoke-virtual {p1}, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 377
    :goto_0
    if-eqz v0, :cond_0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "if (ads.callbacks.progress) ads.callbacks.progress(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", null);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADJavascriptBridge;->executeJavascript(Ljava/lang/String;)V

    .line 381
    :cond_0
    return-void

    .line 347
    :pswitch_0
    const-string v0, "pause"

    goto :goto_0

    .line 350
    :pswitch_1
    const-string v0, "playing"

    goto :goto_0

    .line 353
    :pswitch_2
    const-string v0, "playing"

    goto :goto_0

    .line 356
    :pswitch_3
    const-string v0, "resume"

    goto :goto_0

    .line 359
    :pswitch_4
    const-string v0, "start"

    goto :goto_0

    .line 362
    :pswitch_5
    const-string v0, "complete"

    goto :goto_0

    .line 365
    :pswitch_6
    const-string v0, "stop"

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 264
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 265
    iget-boolean v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->urlWasNotFound:Z

    if-nez v0, :cond_0

    const-string v0, "about:blank"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const-string v0, ""

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/video/adsdk/internal/Helper;->getJavascriptContentToInject(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 276
    :goto_1
    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADJavascriptBridge;->executeJavascript(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;

    .line 279
    invoke-interface {v0, p2}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onPageLoaded(Ljava/lang/String;)V

    goto :goto_2

    .line 272
    :catch_0
    move-exception v1

    .line 273
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 281
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_pageLoaded:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 292
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 293
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;

    .line 294
    invoke-interface {v0, p2}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onPageStartingLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, -0x8

    .line 248
    const/4 v0, -0x6

    if-eq p2, v0, :cond_0

    const/16 v0, -0xc

    if-eq p2, v0, :cond_0

    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    if-ne p2, v2, :cond_1

    .line 250
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->urlWasNotFound:Z

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;

    .line 254
    if-ne p2, v2, :cond_2

    .line 255
    invoke-interface {v0, p3, p4}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onPageTimeOut(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_2
    invoke-interface {v0, p2, p3, p4}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onPageError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_3
    return-void
.end method

.method public prefetchingComplete()V
    .locals 1

    .prologue
    .line 392
    const-string v0, "if (typeof videoAdObj != \'undefined\' && videoAdObj) videoAdObj.trackPrefetch();"

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADJavascriptBridge;->executeJavascript(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public removeListener(Lcom/video/adsdk/interfaces/JavascriptBridgeListener;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "if (typeof videoAdObj != \'undefined\' && videoAdObj) videoAdObj.setParam(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADJavascriptBridge;->executeJavascript(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;

    .line 238
    invoke-interface {v0, p2}, Lcom/video/adsdk/interfaces/JavascriptBridgeListener;->onPageStartingLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public troubleshoot(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "if (typeof videoAdObj != \'undefined\' && videoAdObj) videoAdObj.videoTrigger(\"troubleshoot\",0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+\"\": \"+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/video/adsdk/internal/ADJavascriptBridge;->executeJavascript(Ljava/lang/String;)V

    .line 414
    return-void
.end method
