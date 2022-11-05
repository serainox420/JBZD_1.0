.class public Lcom/smaato/soma/bannerutilities/b;
.super Ljava/lang/Object;
.source "BannerAnimator.java"


# static fields
.field private static a:Lcom/smaato/soma/bannerutilities/b;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I

.field private d:Z

.field private e:Lcom/smaato/soma/b/b;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/smaato/soma/bannerutilities/b;->a:Lcom/smaato/soma/bannerutilities/b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "BannerAnimator"

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/b;->b:Ljava/lang/String;

    .line 49
    const/16 v0, 0xfa

    iput v0, p0, Lcom/smaato/soma/bannerutilities/b;->c:I

    .line 54
    iput-boolean v1, p0, Lcom/smaato/soma/bannerutilities/b;->d:Z

    .line 65
    iput-boolean v1, p0, Lcom/smaato/soma/bannerutilities/b;->f:Z

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/bannerutilities/b;)Lcom/smaato/soma/b/b;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b;->e:Lcom/smaato/soma/b/b;

    return-object v0
.end method

.method static synthetic a(Lcom/smaato/soma/bannerutilities/b;Lcom/smaato/soma/b/b;)Lcom/smaato/soma/b/b;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/b;->e:Lcom/smaato/soma/b/b;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/smaato/soma/bannerutilities/b;
    .locals 2

    .prologue
    .line 72
    const-class v1, Lcom/smaato/soma/bannerutilities/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/smaato/soma/bannerutilities/b;->a:Lcom/smaato/soma/bannerutilities/b;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/smaato/soma/bannerutilities/b;

    invoke-direct {v0}, Lcom/smaato/soma/bannerutilities/b;-><init>()V

    sput-object v0, Lcom/smaato/soma/bannerutilities/b;->a:Lcom/smaato/soma/bannerutilities/b;

    .line 75
    :cond_0
    sget-object v0, Lcom/smaato/soma/bannerutilities/b;->a:Lcom/smaato/soma/bannerutilities/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/smaato/soma/bannerutilities/b;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/smaato/soma/bannerutilities/b;->f:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ExpandingBannerFailed;
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    invoke-static {}, Lcom/smaato/soma/m;->a()Lcom/smaato/soma/m;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/smaato/soma/m;->a(J)V

    .line 90
    new-instance v0, Lcom/smaato/soma/bannerutilities/b$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/b$1;-><init>(Lcom/smaato/soma/bannerutilities/b;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 91
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 92
    :cond_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "BannerAnimator"

    const-string v2, "Unable to expand the view ..."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    invoke-virtual {p2}, Lcom/smaato/soma/j;->getBannerStateListener()Lcom/smaato/soma/g;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    invoke-interface {v0, p2}, Lcom/smaato/soma/g;->onWillOpenLandingPage(Lcom/smaato/soma/j;)V

    .line 103
    :cond_3
    invoke-virtual {p2}, Lcom/smaato/soma/j;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/smaato/soma/debug/b;

    const-string v2, "BannerAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RootViewName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 106
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v5, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    .line 104
    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 109
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    if-nez v0, :cond_4

    instance-of v0, p2, Lcom/smaato/soma/interstitial/b;

    if-eqz v0, :cond_1

    .line 113
    :cond_4
    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p1}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_1

    .line 118
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :try_start_1
    invoke-virtual {v1}, Landroid/webkit/WebView;->bringToFront()V

    .line 122
    const/16 v0, 0x82

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 124
    new-instance v0, Lcom/smaato/soma/bannerutilities/b$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/smaato/soma/bannerutilities/b$2;-><init>(Lcom/smaato/soma/bannerutilities/b;Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 152
    new-instance v0, Lcom/smaato/soma/bannerutilities/b$3;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/b$3;-><init>(Lcom/smaato/soma/bannerutilities/b;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    new-instance v0, Lcom/smaato/soma/bannerutilities/b$4;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/smaato/soma/bannerutilities/b$4;-><init>(Lcom/smaato/soma/bannerutilities/b;Landroid/webkit/WebView;Lcom/smaato/soma/j;Lcom/smaato/soma/bannerutilities/a;)V

    .line 205
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/b$4;->c()Ljava/lang/Object;

    .line 206
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    throw v0

    .line 210
    :catch_1
    move-exception v0

    .line 211
    new-instance v1, Lcom/smaato/soma/exception/ExpandingBannerFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/ExpandingBannerFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/smaato/soma/bannerutilities/b;->f:Z

    .line 302
    return-void
.end method

.method public b(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToAnimateCloseView;
        }
    .end annotation

    .prologue
    .line 222
    :try_start_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/b$5;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/b$5;-><init>(Lcom/smaato/soma/bannerutilities/b;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 223
    if-nez p2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p2}, Lcom/smaato/soma/j;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    .line 228
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/smaato/soma/bannerutilities/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    new-instance v0, Lcom/smaato/soma/bannerutilities/b$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/smaato/soma/bannerutilities/b$6;-><init>(Lcom/smaato/soma/bannerutilities/b;Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V

    .line 248
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/b$6;->c()Ljava/lang/Object;

    .line 251
    :cond_2
    invoke-virtual {p1}, Lcom/smaato/soma/bannerutilities/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/smaato/soma/bannerutilities/b$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/smaato/soma/bannerutilities/b$7;-><init>(Lcom/smaato/soma/bannerutilities/b;Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V

    .line 283
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/b$7;->c()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    throw v0

    .line 290
    :catch_1
    move-exception v0

    .line 291
    new-instance v1, Lcom/smaato/soma/exception/UnableToAnimateCloseView;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToAnimateCloseView;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/smaato/soma/bannerutilities/b;->f:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/smaato/soma/bannerutilities/b;->d:Z

    return v0
.end method
