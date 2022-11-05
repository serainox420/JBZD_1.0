.class public Lcom/smaato/soma/internal/e/a;
.super Landroid/webkit/WebView;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/internal/e/a$b;,
        Lcom/smaato/soma/internal/e/a$a;
    }
.end annotation


# static fields
.field private static d:I

.field private static e:Z


# instance fields
.field private a:Z

.field private b:Landroid/view/GestureDetector;

.field private c:Lcom/smaato/soma/j;

.field private f:Z

.field private g:Lcom/smaato/soma/internal/e/a$a;

.field private h:Lcom/smaato/soma/p;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    sput v0, Lcom/smaato/soma/internal/e/a;->d:I

    .line 61
    sput-boolean v0, Lcom/smaato/soma/internal/e/a;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smaato/soma/p;Lcom/smaato/soma/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/PixelToDpFailed;,
            Lcom/smaato/soma/exception/CloseButtonBitmapFailed;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 57
    iput-boolean v0, p0, Lcom/smaato/soma/internal/e/a;->a:Z

    .line 62
    iput-boolean v0, p0, Lcom/smaato/soma/internal/e/a;->f:Z

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smaato/soma/internal/e/a;->i:J

    .line 75
    iput-object p3, p0, Lcom/smaato/soma/internal/e/a;->c:Lcom/smaato/soma/j;

    .line 76
    iput-object p2, p0, Lcom/smaato/soma/internal/e/a;->h:Lcom/smaato/soma/p;

    .line 77
    const/16 v0, 0x29e

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/e/a;->setId(I)V

    .line 78
    sget-boolean v0, Lcom/smaato/soma/internal/e/a;->e:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/smaato/soma/internal/e/a;->f()V

    .line 81
    :cond_0
    new-instance v0, Lcom/smaato/soma/internal/e/a$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/smaato/soma/internal/e/a$1;-><init>(Lcom/smaato/soma/internal/e/a;Landroid/content/Context;Lcom/smaato/soma/j;)V

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/e/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/internal/e/a;J)J
    .locals 1

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/smaato/soma/internal/e/a;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/smaato/soma/internal/e/a;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a;->b:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic a(Lcom/smaato/soma/internal/e/a;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a;->b:Landroid/view/GestureDetector;

    return-object p1
.end method

.method static synthetic a(Lcom/smaato/soma/internal/e/a;Lcom/smaato/soma/internal/e/a$a;)Lcom/smaato/soma/internal/e/a$a;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a;->g:Lcom/smaato/soma/internal/e/a$a;

    return-object p1
.end method

.method static synthetic a(Lcom/smaato/soma/internal/e/a;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/smaato/soma/internal/e/a;->f:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 53
    sput-boolean p0, Lcom/smaato/soma/internal/e/a;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/smaato/soma/internal/e/a;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/smaato/soma/internal/e/a;->i:J

    return-wide v0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/smaato/soma/internal/e/a;->e:Z

    return v0
.end method

.method static synthetic c()I
    .locals 2

    .prologue
    .line 53
    sget v0, Lcom/smaato/soma/internal/e/a;->d:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/smaato/soma/internal/e/a;->d:I

    return v0
.end method

.method static synthetic c(Lcom/smaato/soma/internal/e/a;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/smaato/soma/internal/e/a;->f()V

    return-void
.end method

.method static synthetic d()I
    .locals 2

    .prologue
    .line 53
    sget v0, Lcom/smaato/soma/internal/e/a;->d:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/smaato/soma/internal/e/a;->d:I

    return v0
.end method

.method static synthetic d(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/internal/e/a$a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a;->g:Lcom/smaato/soma/internal/e/a$a;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/smaato/soma/internal/e/a;->d:I

    return v0
.end method

.method static synthetic e(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/p;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a;->h:Lcom/smaato/soma/p;

    return-object v0
.end method

.method static synthetic f(Lcom/smaato/soma/internal/e/a;)Lcom/smaato/soma/j;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a;->c:Lcom/smaato/soma/j;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/smaato/soma/internal/e/a$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/e/a$2;-><init>(Lcom/smaato/soma/internal/e/a;)V

    .line 190
    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a$2;->c()Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public static setButtonAttached(Z)V
    .locals 0

    .prologue
    .line 493
    sput-boolean p0, Lcom/smaato/soma/internal/e/a;->e:Z

    .line 494
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/smaato/soma/p;)V
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lcom/smaato/soma/internal/e/a$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/smaato/soma/internal/e/a$4;-><init>(Lcom/smaato/soma/internal/e/a;Landroid/content/Context;Lcom/smaato/soma/p;)V

    .line 369
    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a$4;->c()Ljava/lang/Object;

    .line 370
    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/smaato/soma/p;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 375
    new-instance v0, Lcom/smaato/soma/internal/e/a$5;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/smaato/soma/internal/e/a$5;-><init>(Lcom/smaato/soma/internal/e/a;Lcom/smaato/soma/p;Ljava/lang/String;Landroid/content/Context;)V

    .line 412
    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a$5;->c()Ljava/lang/Object;

    .line 413
    return-void
.end method

.method public a(Lcom/smaato/soma/measurements/FraudesType;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smaato/soma/measurements/FraudesType;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a;->h:Lcom/smaato/soma/p;

    if-nez v0, :cond_0

    .line 536
    :goto_0
    return-void

    .line 503
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 504
    const-string v0, "adspace"

    iget-object v2, p0, Lcom/smaato/soma/internal/e/a;->c:Lcom/smaato/soma/j;

    invoke-virtual {v2}, Lcom/smaato/soma/j;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/d;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v2, "sessionid"

    iget-object v0, p0, Lcom/smaato/soma/internal/e/a;->h:Lcom/smaato/soma/p;

    check-cast v0, Lcom/smaato/soma/internal/b;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/b;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v0, "publisher"

    iget-object v2, p0, Lcom/smaato/soma/internal/e/a;->c:Lcom/smaato/soma/j;

    invoke-virtual {v2}, Lcom/smaato/soma/j;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/d;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v2, "bundleid"

    invoke-virtual {p0}, Lcom/smaato/soma/internal/e/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/smaato/soma/internal/e/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v0, "sdk"

    const-string v2, "sdkandroid_5-1-1"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v2, "admarkup"

    iget-object v0, p0, Lcom/smaato/soma/internal/e/a;->h:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smaato/soma/internal/e/a;->h:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->e()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    if-eqz p2, :cond_4

    .line 513
    const-string v0, "redirecturl"

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    :goto_3
    const-string v2, "clickurl"

    iget-object v0, p0, Lcom/smaato/soma/internal/e/a;->h:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/smaato/soma/internal/e/a;->h:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->f()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v0, "type"

    invoke-virtual {p1}, Lcom/smaato/soma/measurements/FraudesType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    if-eqz p3, :cond_7

    .line 522
    const-string v0, "traces"

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_1
    :goto_5
    new-instance v0, Lcom/smaato/soma/internal/requests/a/a;

    invoke-direct {v0}, Lcom/smaato/soma/internal/requests/a/a;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/HashMap;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/smaato/soma/internal/requests/a/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 532
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 508
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 510
    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 515
    :cond_4
    const-string v2, "redirecturl"

    iget-object v0, p0, Lcom/smaato/soma/internal/e/a;->h:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/smaato/soma/internal/e/a;->h:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->j()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    const-string v0, ""

    goto :goto_6

    .line 518
    :cond_6
    const-string v0, ""

    goto :goto_4

    .line 524
    :cond_7
    const-string v0, "redirecturl"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 525
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 526
    const-string v0, "redirecturl"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    const-string v0, "traces"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/smaato/soma/internal/e/a;->a:Z

    return v0
.end method

.method protected getScreenShotUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/smaato/soma/internal/e/a$3;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/e/a$3;-><init>(Lcom/smaato/soma/internal/e/a;)V

    .line 214
    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a$3;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 196
    return-object v0
.end method

.method public setUserClicked(Z)V
    .locals 0

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/smaato/soma/internal/e/a;->a:Z

    .line 232
    return-void
.end method
