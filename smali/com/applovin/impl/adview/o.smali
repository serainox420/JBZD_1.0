.class Lcom/applovin/impl/adview/o;
.super Landroid/webkit/WebView;


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinLogger;

.field private b:Lcom/applovin/sdk/AppLovinAd;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/r;Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/o;->b:Lcom/applovin/sdk/AppLovinAd;

    iput-boolean v2, p0, Lcom/applovin/impl/adview/o;->c:Z

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/sdk/AppLovinLogger;

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/o;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/o;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/o;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/applovin/impl/adview/n;

    invoke-direct {v0, p2}, Lcom/applovin/impl/adview/n;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/o;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/o;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/o;->setHorizontalScrollBarEnabled(Z)V

    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/o;->setScrollBarStyle(I)V

    new-instance v0, Lcom/applovin/impl/adview/p;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/p;-><init>(Lcom/applovin/impl/adview/o;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/o;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/applovin/impl/adview/q;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/q;-><init>(Lcom/applovin/impl/adview/o;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/o;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method a()Lcom/applovin/sdk/AppLovinAd;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->b:Lcom/applovin/sdk/AppLovinAd;

    return-object v0
.end method

.method public a(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 6

    iget-boolean v0, p0, Lcom/applovin/impl/adview/o;->c:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/applovin/impl/adview/o;->b:Lcom/applovin/sdk/AppLovinAd;

    if-eqz p3, :cond_0

    :try_start_0
    new-instance v0, Lcom/applovin/impl/sdk/cb;

    invoke-direct {v0, p3}, Lcom/applovin/impl/sdk/cb;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/o;->loadUrl(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getHtmlSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/applovin/impl/sdk/di;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "/"

    const-string v3, "text/html"

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/adview/o;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AdWebView"

    const-string v2, "AppLovinAd rendered"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AdWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to render AppLovinAd with placement = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AdWebView"

    const-string v2, "Ad can not be loaded in a destroyed web view"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/o;->c:Z

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AdWebView"

    const-string v2, "Web view destroyed"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/sdk/AppLovinLogger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "destroy() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "onFocusChanged() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "onWindowFocusChanged() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "onWindowVisibilityChanged() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->requestFocus(ILandroid/graphics/Rect;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebView"

    const-string v3, "requestFocus() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 0

    return-void
.end method
