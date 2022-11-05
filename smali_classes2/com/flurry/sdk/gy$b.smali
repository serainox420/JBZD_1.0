.class final Lcom/flurry/sdk/gy$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gy;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/gy;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/gy;B)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gy$b;-><init>(Lcom/flurry/sdk/gy;)V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 315
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onLoadResource: url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 318
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hk;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->g(Lcom/flurry/sdk/gy;)V

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->h(Lcom/flurry/sdk/gy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->i(Lcom/flurry/sdk/gy;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;Z)Z

    .line 350
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->j(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hp;->c()Lcom/flurry/sdk/hk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->b()V

    .line 352
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->k(Lcom/flurry/sdk/gy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->j(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hp;->c()Lcom/flurry/sdk/hk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->d()V

    goto :goto_0

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->k(Lcom/flurry/sdk/gy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->l(Lcom/flurry/sdk/gy;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->m(Lcom/flurry/sdk/gy;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->n(Lcom/flurry/sdk/gy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->j(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hp;->b()V

    goto/16 :goto_0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 400
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished: url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adcontroller index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v2}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v2

    .line 3078
    iget-object v2, v2, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 4070
    iget v2, v2, Lcom/flurry/sdk/ay;->e:I

    .line 400
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 401
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hk;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->g(Lcom/flurry/sdk/gy;)V

    .line 415
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->p(Lcom/flurry/sdk/gy;)V

    .line 418
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->dismissProgressDialog()V

    .line 420
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    iget-object v1, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gy;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    .line 421
    invoke-static {v0}, Lcom/flurry/sdk/gy;->m(Lcom/flurry/sdk/gy;)I

    move-result v0

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->m(Lcom/flurry/sdk/gy;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adding WebView to AdUnityView"

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 425
    if-nez v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    iget-object v1, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gy;->addView(Landroid/view/View;)V

    .line 427
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->j(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hp;->c()Lcom/flurry/sdk/hk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->d()V

    .line 431
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0, v3}, Lcom/flurry/sdk/gy;->b(Lcom/flurry/sdk/gy;Z)Z

    .line 433
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->i(Lcom/flurry/sdk/gy;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 434
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->h(Lcom/flurry/sdk/gy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->j(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hp;->c()Lcom/flurry/sdk/hk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->d()V

    goto :goto_0

    .line 438
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->h(Lcom/flurry/sdk/gy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const-string v0, "mraidAdNotSupported"

    invoke-static {v0}, Lcom/flurry/sdk/b;->a(Ljava/lang/String;)Lcom/flurry/sdk/bc;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->j(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hp;->c()Lcom/flurry/sdk/hk;

    move-result-object v1

    .line 4155
    sget-object v2, Lcom/flurry/sdk/bc;->U:Lcom/flurry/sdk/bc;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4171
    const-string v2, "javascript:if(window.mraid && typeof window.mraid.disable === \'function\'){window.mraid.disable();}"

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/hk;->loadUrl(Ljava/lang/String;)V

    .line 444
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 445
    iget-object v2, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    iget-object v3, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v3}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    .line 447
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->l(Lcom/flurry/sdk/gy;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->m(Lcom/flurry/sdk/gy;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 450
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->n(Lcom/flurry/sdk/gy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->j(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hp;->b()V

    goto/16 :goto_0
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 378
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPageStarted: url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 379
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hk;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->o(Lcom/flurry/sdk/gy;)V

    .line 391
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->j(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hp;->c()Lcom/flurry/sdk/hk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->c()V

    .line 393
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0, v4}, Lcom/flurry/sdk/gy;->b(Lcom/flurry/sdk/gy;Z)Z

    .line 394
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0, v4}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;Z)Z

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 553
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceivedError: url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->dismissProgressDialog()V

    .line 559
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 560
    const-string v1, "market"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 564
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 568
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;)V

    .line 576
    :goto_0
    return-void

    .line 570
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 571
    const-string v1, "errorCode"

    sget-object v2, Lcom/flurry/sdk/bb;->p:Lcom/flurry/sdk/bb;

    .line 5040
    iget v2, v2, Lcom/flurry/sdk/bb;->z:I

    .line 571
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v1, "webViewErrorCode"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v1, "failingUrl"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iget-object v1, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    sget-object v2, Lcom/flurry/sdk/bc;->g:Lcom/flurry/sdk/bc;

    iget-object v3, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v3}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x3

    .line 461
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "shouldOverrideUrlLoading: url = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 462
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hk;

    move-result-object v0

    if-eq p1, v0, :cond_2

    :cond_0
    move v3, v1

    .line 545
    :cond_1
    :goto_0
    return v3

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {v0}, Lcom/flurry/sdk/mc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 475
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 478
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 480
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "shouldOverrideUrlLoading: target url = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v0, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 485
    :goto_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 486
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "shouldOverrideUrlLoading: getScheme = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v0, v5}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v0, "flurry"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 488
    const-string v0, "event"

    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    iget-object v2, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v2}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "event is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v2, v5}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 491
    invoke-static {v0}, Lcom/flurry/sdk/b;->a(Ljava/lang/String;)Lcom/flurry/sdk/bc;

    move-result-object v2

    .line 498
    sget-object v0, Lcom/flurry/sdk/bc;->A:Lcom/flurry/sdk/bc;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->q(Lcom/flurry/sdk/gy;)Z

    .line 501
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->l(Lcom/flurry/sdk/gy;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 502
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->r(Lcom/flurry/sdk/gy;)V

    .line 504
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->s(Lcom/flurry/sdk/gy;)V

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->j(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hp;->c()Lcom/flurry/sdk/hk;

    move-result-object v5

    .line 4278
    sget-object v0, Lcom/flurry/sdk/bc;->A:Lcom/flurry/sdk/bc;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4285
    invoke-virtual {v5}, Lcom/flurry/sdk/hk;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_6

    .line 4286
    iget-object v0, v5, Lcom/flurry/sdk/hk;->d:Ljava/lang/String;

    const-string v5, "no activity present"

    invoke-static {v7, v0, v5}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    .line 4578
    sget-object v5, Lcom/flurry/sdk/bc;->V:Lcom/flurry/sdk/bc;

    invoke-virtual {v2, v5}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4579
    const-string v5, "useCustomClose"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4580
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4581
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gy;->setMraidButtonVisibility(Z)V

    .line 513
    :cond_5
    :goto_3
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/ly;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 514
    const-string v4, "requiresCallComplete"

    const-string v5, "true"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v4, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    iget-object v5, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v5}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v5

    invoke-virtual {v4, v2, v0, v5, v1}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    goto/16 :goto_0

    .line 4290
    :cond_6
    invoke-virtual {v5}, Lcom/flurry/sdk/hk;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 4295
    invoke-virtual {v5}, Lcom/flurry/sdk/hk;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4297
    invoke-static {}, Lcom/flurry/sdk/fe;->a()I

    move-result v5

    .line 4296
    invoke-static {v0, v5}, Lcom/flurry/sdk/fe;->b(Landroid/app/Activity;I)Z

    goto :goto_2

    .line 4583
    :cond_7
    invoke-virtual {v0, v3}, Lcom/flurry/sdk/gy;->setMraidButtonVisibility(Z)V

    goto :goto_3

    .line 521
    :cond_8
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    sget-object v4, Lcom/flurry/sdk/bc;->h:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v6}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    .line 523
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 525
    invoke-static {v2}, Lcom/flurry/sdk/mc;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 526
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "shouldOverrideUrlLoading: isMarketUrl "

    invoke-static {v7, v0, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/flurry/sdk/fo;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 529
    :goto_4
    if-nez v0, :cond_9

    invoke-static {v2}, Lcom/flurry/sdk/mc;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 530
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "shouldOverrideUrlLoading: isGooglePlayUrl "

    invoke-static {v7, v0, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/flurry/sdk/fo;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 533
    :cond_9
    if-eqz v0, :cond_a

    .line 534
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    sget-object v2, Lcom/flurry/sdk/bc;->ae:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v5}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    goto/16 :goto_0

    .line 536
    :cond_a
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideUrlLoading: loadUrl doGenericLaunch "

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    invoke-static {}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v1}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    .line 538
    invoke-virtual {v4}, Lcom/flurry/sdk/gy;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v4

    move v5, v3

    .line 537
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/r;Z)V

    goto/16 :goto_0

    .line 541
    :cond_b
    iget-object v0, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideUrlLoading: doGenericLaunch "

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    invoke-static {}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v1}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/flurry/sdk/gy$b;->a:Lcom/flurry/sdk/gy;

    .line 543
    invoke-virtual {v4}, Lcom/flurry/sdk/gy;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v4

    move v5, v3

    .line 542
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/r;Z)V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_4

    :cond_d
    move-object v2, p2

    goto/16 :goto_1
.end method
