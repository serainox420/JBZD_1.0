.class final Lcom/flurry/sdk/he$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/he;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/he;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/he;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/he;B)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/flurry/sdk/he$a;-><init>(Lcom/flurry/sdk/he;)V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    .prologue
    .line 305
    if-eqz p1, :cond_0

    .line 306
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    invoke-static {v1}, Lcom/flurry/sdk/he;->a(Lcom/flurry/sdk/he;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- From line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 296
    iget-object v0, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    invoke-static {v0}, Lcom/flurry/sdk/he;->i(Lcom/flurry/sdk/he;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x1

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public final onHideCustomView()V
    .locals 3

    .prologue
    .line 277
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    invoke-static {v1}, Lcom/flurry/sdk/he;->a(Lcom/flurry/sdk/he;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onHideCustomView()"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/he;->b(Lcom/flurry/sdk/he;Z)Z

    .line 280
    iget-object v0, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    invoke-static {v0}, Lcom/flurry/sdk/he;->d(Lcom/flurry/sdk/he;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    invoke-static {v0}, Lcom/flurry/sdk/he;->e(Lcom/flurry/sdk/he;)V

    .line 282
    return-void
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    .prologue
    .line 252
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    invoke-static {v1}, Lcom/flurry/sdk/he;->a(Lcom/flurry/sdk/he;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Javascript alert "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " View URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    invoke-static {v0}, Lcom/flurry/sdk/he;->d(Lcom/flurry/sdk/he;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 287
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 288
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    invoke-static {v0}, Lcom/flurry/sdk/he;->d(Lcom/flurry/sdk/he;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 291
    :cond_0
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .prologue
    .line 269
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    invoke-static {v1}, Lcom/flurry/sdk/he;->a(Lcom/flurry/sdk/he;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onShowCustomView(14)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/he;->b(Lcom/flurry/sdk/he;Z)Z

    .line 272
    iget-object v0, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    invoke-static {v0}, Lcom/flurry/sdk/he;->d(Lcom/flurry/sdk/he;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    invoke-static {v0}, Lcom/flurry/sdk/he;->e(Lcom/flurry/sdk/he;)V

    .line 274
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .prologue
    .line 258
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    invoke-static {v1}, Lcom/flurry/sdk/he;->a(Lcom/flurry/sdk/he;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onShowCustomView(7)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/he;->b(Lcom/flurry/sdk/he;Z)Z

    .line 261
    iget-object v0, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    invoke-static {v0}, Lcom/flurry/sdk/he;->d(Lcom/flurry/sdk/he;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/flurry/sdk/he$a;->a:Lcom/flurry/sdk/he;

    invoke-static {v0}, Lcom/flurry/sdk/he;->e(Lcom/flurry/sdk/he;)V

    .line 263
    return-void
.end method
