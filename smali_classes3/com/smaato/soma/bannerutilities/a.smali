.class public abstract Lcom/smaato/soma/bannerutilities/a;
.super Ljava/lang/Object;
.source "AbstractBannerPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/bannerutilities/a$a;,
        Lcom/smaato/soma/bannerutilities/a$b;,
        Lcom/smaato/soma/bannerutilities/a$d;,
        Lcom/smaato/soma/bannerutilities/a$c;,
        Lcom/smaato/soma/bannerutilities/a$e;
    }
.end annotation


# instance fields
.field public a:Z

.field protected b:Lcom/smaato/soma/j;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/smaato/soma/bannerutilities/g$c;

.field private e:Landroid/webkit/WebView;

.field private f:Lcom/smaato/soma/p;

.field private g:Lcom/smaato/soma/internal/connector/OrmmaBridge;

.field private h:Lcom/smaato/soma/internal/connector/a;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/content/Context;

.field private m:Landroid/content/Context;

.field private n:Lcom/smaato/soma/bannerutilities/g$a;

.field private o:Lcom/smaato/soma/bannerutilities/a$e;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->c:Landroid/os/Handler;

    .line 97
    iput-boolean v1, p0, Lcom/smaato/soma/bannerutilities/a;->a:Z

    .line 101
    iput-object v2, p0, Lcom/smaato/soma/bannerutilities/a;->d:Lcom/smaato/soma/bannerutilities/g$c;

    .line 105
    iput-object v2, p0, Lcom/smaato/soma/bannerutilities/a;->e:Landroid/webkit/WebView;

    .line 109
    iput-object v2, p0, Lcom/smaato/soma/bannerutilities/a;->f:Lcom/smaato/soma/p;

    .line 113
    iput-object v2, p0, Lcom/smaato/soma/bannerutilities/a;->g:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    .line 117
    iput-object v2, p0, Lcom/smaato/soma/bannerutilities/a;->h:Lcom/smaato/soma/internal/connector/a;

    .line 121
    iput-boolean v1, p0, Lcom/smaato/soma/bannerutilities/a;->i:Z

    .line 126
    iput-boolean v1, p0, Lcom/smaato/soma/bannerutilities/a;->j:Z

    .line 139
    iput-boolean v1, p0, Lcom/smaato/soma/bannerutilities/a;->k:Z

    .line 144
    iput-object v2, p0, Lcom/smaato/soma/bannerutilities/a;->l:Landroid/content/Context;

    .line 158
    iput-object v2, p0, Lcom/smaato/soma/bannerutilities/a;->m:Landroid/content/Context;

    .line 163
    iput-object v2, p0, Lcom/smaato/soma/bannerutilities/a;->n:Lcom/smaato/soma/bannerutilities/g$a;

    .line 167
    iput-object v2, p0, Lcom/smaato/soma/bannerutilities/a;->o:Lcom/smaato/soma/bannerutilities/a$e;

    .line 171
    iput-object v2, p0, Lcom/smaato/soma/bannerutilities/a;->b:Lcom/smaato/soma/j;

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 178
    new-instance v0, Lcom/smaato/soma/bannerutilities/a$d;

    invoke-direct {v0, p0, v2}, Lcom/smaato/soma/bannerutilities/a$d;-><init>(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/bannerutilities/a$1;)V

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->o:Lcom/smaato/soma/bannerutilities/a$e;

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 180
    new-instance v0, Lcom/smaato/soma/bannerutilities/a$c;

    invoke-direct {v0, p0, v2}, Lcom/smaato/soma/bannerutilities/a$c;-><init>(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/bannerutilities/a$1;)V

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->o:Lcom/smaato/soma/bannerutilities/a$e;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/OptimalHeightCalculationFailed;
        }
    .end annotation

    .prologue
    .line 429
    :try_start_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/a$9;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/a$9;-><init>(Lcom/smaato/soma/bannerutilities/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 431
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v0

    .line 432
    invoke-virtual {v0, p1}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 433
    if-ge p2, v0, :cond_0

    move p2, v0

    .line 436
    :cond_0
    return p2

    .line 437
    :catch_0
    move-exception v0

    .line 438
    throw v0

    .line 439
    :catch_1
    move-exception v0

    .line 440
    new-instance v1, Lcom/smaato/soma/exception/OptimalHeightCalculationFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/OptimalHeightCalculationFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/smaato/soma/bannerutilities/a;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a(Lcom/smaato/soma/j;IILcom/smaato/soma/internal/statemachine/LoadingState;)Ljava/lang/StringBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/WebViewInitialisationFailed;
        }
    .end annotation

    .prologue
    .line 367
    :try_start_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/a$8;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/a$8;-><init>(Lcom/smaato/soma/bannerutilities/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 368
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 369
    if-lez p3, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->f()Lcom/smaato/soma/p;

    move-result-object v0

    const/4 v1, 0x1

    .line 371
    invoke-virtual {p0, v0, p3, p2, v1}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/p;IIZ)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 404
    :goto_0
    new-instance v1, Lcom/smaato/soma/bannerutilities/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p4, v2}, Lcom/smaato/soma/bannerutilities/a$b;-><init>(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/internal/statemachine/LoadingState;Lcom/smaato/soma/bannerutilities/a$1;)V

    .line 406
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 407
    invoke-direct {p0, p1}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/j;)V

    .line 408
    return-object v0

    .line 376
    :cond_0
    instance-of v0, p1, Lcom/smaato/soma/n$a;

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->f()Lcom/smaato/soma/p;

    move-result-object v0

    .line 379
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Lcom/smaato/soma/internal/requests/settings/a;->g()I

    move-result v1

    mul-int/lit8 v1, v1, 0x46

    div-int/lit8 v1, v1, 0x64

    .line 381
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v2

    .line 382
    invoke-virtual {v2}, Lcom/smaato/soma/internal/requests/settings/a;->h()I

    move-result v2

    const/4 v3, 0x0

    .line 378
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/p;IIZ)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p1}, Lcom/smaato/soma/j;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/d;->d()Lcom/smaato/soma/AdDimension;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/AdDimension;->INTERSTITIAL_PORTRAIT:Lcom/smaato/soma/AdDimension;

    if-ne v0, v1, :cond_2

    .line 385
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->f()Lcom/smaato/soma/p;

    move-result-object v0

    .line 386
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v1

    .line 387
    invoke-virtual {v1}, Lcom/smaato/soma/internal/requests/settings/a;->g()I

    move-result v1

    .line 388
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v2

    .line 389
    invoke-virtual {v2}, Lcom/smaato/soma/internal/requests/settings/a;->h()I

    move-result v2

    const/4 v3, 0x1

    .line 385
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/p;IIZ)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {p1}, Lcom/smaato/soma/j;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/d;->d()Lcom/smaato/soma/AdDimension;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/AdDimension;->INTERSTITIAL_LANDSCAPE:Lcom/smaato/soma/AdDimension;

    if-ne v0, v1, :cond_3

    .line 392
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->f()Lcom/smaato/soma/p;

    move-result-object v0

    .line 393
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v1

    .line 394
    invoke-virtual {v1}, Lcom/smaato/soma/internal/requests/settings/a;->h()I

    move-result v1

    .line 395
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v2

    .line 396
    invoke-virtual {v2}, Lcom/smaato/soma/internal/requests/settings/a;->g()I

    move-result v2

    const/4 v3, 0x1

    .line 392
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/p;IIZ)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_3
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->f()Lcom/smaato/soma/p;

    move-result-object v0

    .line 400
    invoke-virtual {p1}, Lcom/smaato/soma/j;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    .line 399
    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/p;IIZ)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    throw v0

    .line 411
    :catch_1
    move-exception v0

    .line 412
    new-instance v1, Lcom/smaato/soma/exception/WebViewInitialisationFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/WebViewInitialisationFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/smaato/soma/bannerutilities/g$a;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a;->n:Lcom/smaato/soma/bannerutilities/g$a;

    .line 646
    return-void
.end method

.method private a(Lcom/smaato/soma/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/OrmmaConnectorInitialisationFailed;
        }
    .end annotation

    .prologue
    .line 340
    :try_start_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/a$7;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/a$7;-><init>(Lcom/smaato/soma/bannerutilities/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 341
    new-instance v0, Lcom/smaato/soma/internal/connector/a;

    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smaato/soma/internal/connector/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/internal/connector/a;)V

    .line 342
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->k()Lcom/smaato/soma/internal/connector/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smaato/soma/internal/connector/a;->a(Lcom/smaato/soma/j;)V

    .line 343
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->k()Lcom/smaato/soma/internal/connector/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/connector/a;->a(Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 349
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    throw v0

    .line 346
    :catch_1
    move-exception v0

    .line 347
    new-instance v1, Lcom/smaato/soma/exception/OrmmaConnectorInitialisationFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/OrmmaConnectorInitialisationFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Lcom/smaato/soma/j;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a;->b:Lcom/smaato/soma/j;

    .line 655
    return-void
.end method

.method private q()Landroid/webkit/WebView;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/CreatingBaseViewFailedException;
        }
    .end annotation

    .prologue
    .line 451
    :try_start_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/a$10;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/a$10;-><init>(Lcom/smaato/soma/bannerutilities/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 452
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDK_INT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 456
    new-instance v1, Lcom/smaato/soma/internal/e/a;

    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->f()Lcom/smaato/soma/p;

    move-result-object v2

    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->j()Lcom/smaato/soma/j;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/smaato/soma/internal/e/a;-><init>(Landroid/content/Context;Lcom/smaato/soma/p;Lcom/smaato/soma/j;)V

    .line 457
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 458
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setFocusable(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 460
    :try_start_1
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 462
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 463
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->j()Lcom/smaato/soma/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->j()Lcom/smaato/soma/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 466
    :cond_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 467
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 468
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 469
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 471
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 475
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/a;->o:Lcom/smaato/soma/bannerutilities/a$e;

    if-eqz v2, :cond_1

    .line 476
    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/a;->o:Lcom/smaato/soma/bannerutilities/a$e;

    invoke-interface {v2, v0}, Lcom/smaato/soma/bannerutilities/a$e;->a(Landroid/webkit/WebSettings;)V

    .line 478
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 480
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->j()Lcom/smaato/soma/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/d;->d()Lcom/smaato/soma/AdDimension;

    move-result-object v0

    sget-object v2, Lcom/smaato/soma/AdDimension;->MEDIUMRECTANGLE:Lcom/smaato/soma/AdDimension;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->j()Lcom/smaato/soma/j;

    move-result-object v0

    instance-of v0, v0, Lcom/smaato/soma/n$a;

    if-eqz v0, :cond_2

    .line 481
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 482
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v2

    iget-object v3, p0, Lcom/smaato/soma/bannerutilities/a;->l:Landroid/content/Context;

    const/16 v4, 0x12c

    invoke-virtual {v2, v3, v4}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 483
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v3

    iget-object v4, p0, Lcom/smaato/soma/bannerutilities/a;->l:Landroid/content/Context;

    const/16 v5, 0xfa

    invoke-virtual {v3, v4, v5}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 497
    :goto_2
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 499
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 500
    return-object v1

    .line 484
    :cond_2
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->j()Lcom/smaato/soma/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/d;->d()Lcom/smaato/soma/AdDimension;

    move-result-object v0

    sget-object v2, Lcom/smaato/soma/AdDimension;->INTERSTITIAL_PORTRAIT:Lcom/smaato/soma/AdDimension;

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->j()Lcom/smaato/soma/j;

    move-result-object v0

    instance-of v0, v0, Lcom/smaato/soma/n$a;

    if-eqz v0, :cond_3

    .line 485
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 486
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v2

    iget-object v3, p0, Lcom/smaato/soma/bannerutilities/a;->l:Landroid/content/Context;

    const/16 v4, 0x140

    invoke-virtual {v2, v3, v4}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 487
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v3

    iget-object v4, p0, Lcom/smaato/soma/bannerutilities/a;->l:Landroid/content/Context;

    const/16 v5, 0x1e0

    invoke-virtual {v3, v4, v5}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 501
    :catch_0
    move-exception v0

    .line 502
    throw v0

    .line 488
    :cond_3
    :try_start_5
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->j()Lcom/smaato/soma/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/d;->d()Lcom/smaato/soma/AdDimension;

    move-result-object v0

    sget-object v2, Lcom/smaato/soma/AdDimension;->INTERSTITIAL_LANDSCAPE:Lcom/smaato/soma/AdDimension;

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->j()Lcom/smaato/soma/j;

    move-result-object v0

    instance-of v0, v0, Lcom/smaato/soma/n$a;

    if-eqz v0, :cond_4

    .line 489
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 490
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v2

    iget-object v3, p0, Lcom/smaato/soma/bannerutilities/a;->l:Landroid/content/Context;

    const/16 v4, 0x1e0

    invoke-virtual {v2, v3, v4}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 491
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v3

    iget-object v4, p0, Lcom/smaato/soma/bannerutilities/a;->l:Landroid/content/Context;

    const/16 v5, 0x140

    invoke-virtual {v3, v4, v5}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 503
    :catch_1
    move-exception v0

    .line 504
    new-instance v1, Lcom/smaato/soma/exception/CreatingBaseViewFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/CreatingBaseViewFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 493
    :cond_4
    :try_start_6
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 472
    :catch_2
    move-exception v2

    goto/16 :goto_1

    .line 461
    :catch_3
    move-exception v0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected abstract a(Lcom/smaato/soma/p;IIZ)Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToGenerateTextBanner;,
            Lcom/smaato/soma/exception/UnableToGenerateImageBanner;,
            Lcom/smaato/soma/exception/UnableToGenerateRichMediaBanner;
        }
    .end annotation
.end method

.method public final a(Landroid/content/Context;Lcom/smaato/soma/j;Lcom/smaato/soma/internal/statemachine/LoadingState;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/CreatingSomaBanerPageFailed;
        }
    .end annotation

    .prologue
    .line 260
    .line 265
    :try_start_0
    invoke-virtual {p2}, Lcom/smaato/soma/j;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/smaato/soma/bannerutilities/a;->a(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 260
    invoke-virtual/range {v0 .. v6}, Lcom/smaato/soma/bannerutilities/a;->a(Landroid/content/Context;Lcom/smaato/soma/j;Lcom/smaato/soma/internal/statemachine/LoadingState;Landroid/os/Handler;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 272
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    throw v0

    .line 269
    :catch_1
    move-exception v0

    .line 270
    new-instance v1, Lcom/smaato/soma/exception/CreatingSomaBanerPageFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/CreatingSomaBanerPageFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Landroid/content/Context;Lcom/smaato/soma/j;Lcom/smaato/soma/internal/statemachine/LoadingState;Landroid/os/Handler;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/CreatingBannerPageFailed;
        }
    .end annotation

    .prologue
    .line 294
    :try_start_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/a$6;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/a$6;-><init>(Lcom/smaato/soma/bannerutilities/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 295
    invoke-direct {p0, p2}, Lcom/smaato/soma/bannerutilities/a;->b(Lcom/smaato/soma/j;)V

    .line 296
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/smaato/soma/bannerutilities/a;->b(Ljava/lang/ref/WeakReference;)V

    .line 297
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->f()Lcom/smaato/soma/p;

    move-result-object v0

    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/smaato/soma/bannerutilities/a;->q()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/bannerutilities/a;->a(Landroid/webkit/WebView;)V

    .line 301
    sget-object v0, Lcom/smaato/soma/bannerutilities/a$3;->a:[I

    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->f()Lcom/smaato/soma/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/smaato/soma/p;->d()Lcom/smaato/soma/AdType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/AdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 307
    invoke-direct {p0, p2, p5, p6, p3}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/j;IILcom/smaato/soma/internal/statemachine/LoadingState;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 311
    new-instance v0, Lcom/smaato/soma/bannerutilities/g;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/g;-><init>(Lcom/smaato/soma/bannerutilities/a;)V

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g;->a()Lcom/smaato/soma/bannerutilities/g$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/bannerutilities/g$a;)V

    .line 312
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->l()Lcom/smaato/soma/bannerutilities/g$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 313
    new-instance v0, Lcom/smaato/soma/internal/connector/OrmmaBridge;

    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p4, v1, p0}, Lcom/smaato/soma/internal/connector/OrmmaBridge;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/smaato/soma/bannerutilities/a;)V

    invoke-virtual {p0, v0}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/internal/connector/OrmmaBridge;)V

    .line 314
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->i()Lcom/smaato/soma/internal/connector/OrmmaBridge;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->setWebView(Landroid/webkit/WebView;)V

    .line 315
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->i()Lcom/smaato/soma/internal/connector/OrmmaBridge;

    move-result-object v1

    const-string v3, "smaato_bridge"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/smaato/soma/bannerutilities/a$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/smaato/soma/bannerutilities/a$a;-><init>(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/bannerutilities/a$1;)V

    const-string v3, "HTMLOUT"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    .line 318
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    .line 317
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    throw v0

    .line 303
    :pswitch_0
    :try_start_1
    check-cast p0, Lcom/smaato/soma/bannerutilities/f;

    invoke-virtual {p0, p2}, Lcom/smaato/soma/bannerutilities/f;->a(Lcom/smaato/soma/j;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 326
    :catch_1
    move-exception v0

    .line 327
    new-instance v1, Lcom/smaato/soma/exception/CreatingBannerPageFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/CreatingBannerPageFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a;->e:Landroid/webkit/WebView;

    .line 523
    return-void
.end method

.method public a(Lcom/smaato/soma/bannerutilities/g$c;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a;->d:Lcom/smaato/soma/bannerutilities/g$c;

    .line 671
    return-void
.end method

.method public a(Lcom/smaato/soma/bannerutilities/h;)V
    .locals 1

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->l()Lcom/smaato/soma/bannerutilities/g$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smaato/soma/bannerutilities/g$a;->a(Lcom/smaato/soma/bannerutilities/h;)V

    .line 638
    return-void
.end method

.method protected a(Lcom/smaato/soma/internal/connector/OrmmaBridge;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a;->g:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    .line 592
    return-void
.end method

.method protected a(Lcom/smaato/soma/internal/connector/a;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a;->h:Lcom/smaato/soma/internal/connector/a;

    .line 626
    return-void
.end method

.method public final a(Lcom/smaato/soma/p;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a;->f:Lcom/smaato/soma/p;

    .line 540
    return-void
.end method

.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->m:Landroid/content/Context;

    .line 154
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/smaato/soma/bannerutilities/a;->k:Z

    .line 134
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/smaato/soma/bannerutilities/a;->k:Z

    return v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->m:Landroid/content/Context;

    return-object v0
.end method

.method public final b(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 571
    if-eqz p1, :cond_0

    .line 572
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->l:Landroid/content/Context;

    .line 573
    :cond_0
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->i()Lcom/smaato/soma/internal/connector/OrmmaBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->i()Lcom/smaato/soma/internal/connector/OrmmaBridge;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/smaato/soma/internal/connector/OrmmaBridge;->setContext(Landroid/content/Context;)V

    .line 576
    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 556
    iput-boolean p1, p0, Lcom/smaato/soma/bannerutilities/a;->i:Z

    .line 557
    return-void
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ClearViewFailed;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 193
    new-instance v0, Lcom/smaato/soma/bannerutilities/a$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/a$1;-><init>(Lcom/smaato/soma/bannerutilities/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->l()Lcom/smaato/soma/bannerutilities/g$a;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0, v2}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/p;)V

    .line 220
    invoke-virtual {p0, v2}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/internal/connector/OrmmaBridge;)V

    .line 222
    :goto_0
    return-void

    .line 197
    :cond_0
    :try_start_1
    instance-of v0, p0, Lcom/smaato/soma/bannerutilities/f;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->m()Lcom/smaato/soma/bannerutilities/g$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->m()Lcom/smaato/soma/bannerutilities/g$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$c;->a()V

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->l()Lcom/smaato/soma/bannerutilities/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$a;->a()V

    .line 201
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_2

    .line 203
    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    :try_start_2
    new-instance v0, Lcom/smaato/soma/bannerutilities/a$4;

    invoke-direct {v0, p0, v1}, Lcom/smaato/soma/bannerutilities/a$4;-><init>(Lcom/smaato/soma/bannerutilities/a;Landroid/webkit/WebView;)V

    .line 211
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a$4;->c()Ljava/lang/Object;

    .line 212
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    :cond_2
    invoke-virtual {p0, v2}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/p;)V

    .line 220
    invoke-virtual {p0, v2}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/internal/connector/OrmmaBridge;)V

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 219
    :catchall_1
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/p;)V

    .line 220
    invoke-virtual {p0, v2}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/internal/connector/OrmmaBridge;)V

    throw v0

    .line 216
    :catch_1
    move-exception v0

    .line 217
    :try_start_6
    new-instance v1, Lcom/smaato/soma/exception/ClearViewFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/ClearViewFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public final d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ClosingPackageFailedException;
        }
    .end annotation

    .prologue
    .line 230
    :try_start_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/a$5;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/a$5;-><init>(Lcom/smaato/soma/bannerutilities/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->l()Lcom/smaato/soma/bannerutilities/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$a;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    throw v0

    .line 235
    :catch_1
    move-exception v0

    .line 236
    new-instance v1, Lcom/smaato/soma/exception/ClosingPackageFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/ClosingPackageFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final e()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final f()Lcom/smaato/soma/p;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->f:Lcom/smaato/soma/p;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/smaato/soma/bannerutilities/a;->i:Z

    return v0
.end method

.method public final h()Landroid/content/Context;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->l:Landroid/content/Context;

    return-object v0
.end method

.method public final i()Lcom/smaato/soma/internal/connector/OrmmaBridge;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->g:Lcom/smaato/soma/internal/connector/OrmmaBridge;

    return-object v0
.end method

.method public j()Lcom/smaato/soma/j;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->b:Lcom/smaato/soma/j;

    return-object v0
.end method

.method public final k()Lcom/smaato/soma/internal/connector/a;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->h:Lcom/smaato/soma/internal/connector/a;

    return-object v0
.end method

.method public l()Lcom/smaato/soma/bannerutilities/g$a;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->n:Lcom/smaato/soma/bannerutilities/g$a;

    return-object v0
.end method

.method public m()Lcom/smaato/soma/bannerutilities/g$c;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->d:Lcom/smaato/soma/bannerutilities/g$c;

    return-object v0
.end method

.method public n()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToSendGooglePlayMessageToBannerView;
        }
    .end annotation

    .prologue
    .line 679
    :try_start_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/a$11;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/a$11;-><init>(Lcom/smaato/soma/bannerutilities/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 680
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->j()Lcom/smaato/soma/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v0

    .line 681
    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 682
    invoke-virtual {v0, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 688
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    throw v0

    .line 685
    :catch_1
    move-exception v0

    .line 686
    new-instance v1, Lcom/smaato/soma/exception/UnableToSendGooglePlayMessageToBannerView;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToSendGooglePlayMessageToBannerView;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public o()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 699
    iput-boolean v5, p0, Lcom/smaato/soma/bannerutilities/a;->a:Z

    .line 701
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v2, "Banner_Package"

    const-string v3, "Page FAILED TO LOAD... at showPageFailed "

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 707
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->e:Landroid/webkit/WebView;

    const-string v2, "<html><head><title>Page not available</title></head><body bgcolor=\'#FFFFFF\' style=\'height:100%;width:100%\'><h2>Page not available</h2>Closing in <span id=\'seconds\'>3</span> seconds...<script>var timeout = 3;setInterval(function(){if (timeout > 0){document.getElementById(\'seconds\').innerText = \'\' + (--timeout);}}, 1000);</script></body></html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->b:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->e()Z
    :try_end_0
    .catch Lcom/smaato/soma/exception/TransitionDisplayingBannerFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/smaato/soma/bannerutilities/a$2;

    invoke-direct {v1, p0}, Lcom/smaato/soma/bannerutilities/a$2;-><init>(Lcom/smaato/soma/bannerutilities/a;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 749
    :goto_1
    return-void

    .line 716
    :catch_0
    move-exception v0

    .line 717
    invoke-virtual {v0}, Lcom/smaato/soma/exception/TransitionDisplayingBannerFailedException;->printStackTrace()V

    goto :goto_0

    .line 737
    :catch_1
    move-exception v0

    .line 738
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Banner_Package"

    const-string v2, "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml. ActivityNotFoundException"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_1

    .line 742
    :catch_2
    move-exception v0

    .line 743
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Banner_Package"

    const-string v2, "Exception inside Internal Browser"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_1
.end method

.method protected p()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/CalculatingScaleFailed;
        }
    .end annotation

    .prologue
    .line 773
    :try_start_0
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return v0

    .line 774
    :catch_0
    move-exception v0

    .line 775
    throw v0

    .line 776
    :catch_1
    move-exception v0

    .line 777
    new-instance v1, Lcom/smaato/soma/exception/CalculatingScaleFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/CalculatingScaleFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
