.class public Lcom/smaato/soma/video/c;
.super Landroid/widget/VideoView;
.source "VASTView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/video/c$a;
    }
.end annotation


# static fields
.field private static p:Ljava/lang/String;


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field private c:Lcom/smaato/soma/internal/d/c;

.field private d:Lcom/smaato/soma/video/c$a;

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/smaato/soma/video/a;

.field private o:Lcom/smaato/soma/video/b;

.field private q:Z

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "VASTView"

    sput-object v0, Lcom/smaato/soma/video/c;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smaato/soma/internal/d/c;ZLcom/smaato/soma/video/b;IZI)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/video/c;->a:Landroid/os/Handler;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smaato/soma/video/c;->e:J

    .line 45
    iput-boolean v2, p0, Lcom/smaato/soma/video/c;->f:Z

    .line 46
    iput-boolean v2, p0, Lcom/smaato/soma/video/c;->g:Z

    .line 47
    iput-boolean v2, p0, Lcom/smaato/soma/video/c;->h:Z

    .line 48
    iput-boolean v2, p0, Lcom/smaato/soma/video/c;->i:Z

    .line 49
    iput-boolean v2, p0, Lcom/smaato/soma/video/c;->j:Z

    .line 50
    iput-boolean v2, p0, Lcom/smaato/soma/video/c;->k:Z

    .line 51
    iput-boolean v2, p0, Lcom/smaato/soma/video/c;->l:Z

    .line 52
    iput-boolean v2, p0, Lcom/smaato/soma/video/c;->m:Z

    .line 66
    iput-boolean v2, p0, Lcom/smaato/soma/video/c;->q:Z

    .line 83
    const/4 v0, 0x3

    iput v0, p0, Lcom/smaato/soma/video/c;->r:I

    .line 89
    const/16 v0, 0xf

    iput v0, p0, Lcom/smaato/soma/video/c;->b:I

    .line 171
    new-instance v0, Lcom/smaato/soma/video/c$1;

    move-object v1, p0

    move-object v2, p2

    move v3, p5

    move v4, p3

    move v5, p6

    move-object v6, p4

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/smaato/soma/video/c$1;-><init>(Lcom/smaato/soma/video/c;Lcom/smaato/soma/internal/d/c;IZZLcom/smaato/soma/video/b;I)V

    .line 188
    invoke-virtual {v0}, Lcom/smaato/soma/video/c$1;->c()Ljava/lang/Object;

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/video/c;Lcom/smaato/soma/internal/d/c;)Lcom/smaato/soma/internal/d/c;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/smaato/soma/video/c;->c:Lcom/smaato/soma/internal/d/c;

    return-object p1
.end method

.method static synthetic a(Lcom/smaato/soma/video/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/VASTViewInitException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/smaato/soma/video/c;->f()V

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/video/c;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/smaato/soma/video/c;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/smaato/soma/video/c;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/smaato/soma/video/c;->e:J

    return-wide v0
.end method

.method static synthetic b(Lcom/smaato/soma/video/c;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/smaato/soma/video/c;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/smaato/soma/video/c;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smaato/soma/video/c;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/smaato/soma/video/c;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/smaato/soma/video/c;->f:Z

    return p1
.end method

.method static synthetic d(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/internal/d/c;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smaato/soma/video/c;->c:Lcom/smaato/soma/internal/d/c;

    return-object v0
.end method

.method static synthetic d(Lcom/smaato/soma/video/c;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/smaato/soma/video/c;->m:Z

    return p1
.end method

.method static synthetic e(Lcom/smaato/soma/video/c;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smaato/soma/video/c;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/smaato/soma/video/c;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/smaato/soma/video/c;->i:Z

    return p1
.end method

.method private f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/VASTViewInitException;
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/video/c;->c:Lcom/smaato/soma/internal/d/c;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/d/c;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/video/c;->setVideoURI(Landroid/net/Uri;)V

    .line 197
    invoke-virtual {p0, p0}, Lcom/smaato/soma/video/c;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 198
    invoke-virtual {p0, p0}, Lcom/smaato/soma/video/c;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 199
    invoke-virtual {p0, p0}, Lcom/smaato/soma/video/c;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    invoke-virtual {p0, p0}, Lcom/smaato/soma/video/c;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 201
    iget-object v0, p0, Lcom/smaato/soma/video/c;->c:Lcom/smaato/soma/internal/d/c;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/d/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smaato/soma/video/c;->e:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 207
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    throw v0

    .line 204
    :catch_1
    move-exception v0

    .line 205
    new-instance v1, Lcom/smaato/soma/exception/VASTViewInitException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/VASTViewInitException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic f(Lcom/smaato/soma/video/c;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smaato/soma/video/c;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/smaato/soma/video/c;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/smaato/soma/video/c;->j:Z

    return p1
.end method

.method private g()V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/smaato/soma/video/c$3;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/c$3;-><init>(Lcom/smaato/soma/video/c;)V

    .line 264
    invoke-virtual {v0}, Lcom/smaato/soma/video/c$3;->c()Ljava/lang/Object;

    .line 265
    return-void
.end method

.method static synthetic g(Lcom/smaato/soma/video/c;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smaato/soma/video/c;->i:Z

    return v0
.end method

.method static synthetic g(Lcom/smaato/soma/video/c;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/smaato/soma/video/c;->k:Z

    return p1
.end method

.method private h()V
    .locals 1

    .prologue
    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/smaato/soma/video/c;->getVastAdListener()Lcom/smaato/soma/video/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/smaato/soma/video/c;->getVastAdListener()Lcom/smaato/soma/video/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/b;->onWillOpenLandingPage()V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/smaato/soma/video/c;->getRewardedVideoListener()Lcom/smaato/soma/video/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/smaato/soma/video/c;->getRewardedVideoListener()Lcom/smaato/soma/video/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/a;->onWillOpenLandingPage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/smaato/soma/video/c;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smaato/soma/video/c;->j:Z

    return v0
.end method

.method static synthetic i(Lcom/smaato/soma/video/c;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smaato/soma/video/c;->k:Z

    return v0
.end method

.method static synthetic j(Lcom/smaato/soma/video/c;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/smaato/soma/video/c;->g()V

    return-void
.end method

.method static synthetic k(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/video/c$a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smaato/soma/video/c;->d:Lcom/smaato/soma/video/c$a;

    return-object v0
.end method

.method static synthetic l(Lcom/smaato/soma/video/c;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smaato/soma/video/c;->m:Z

    return v0
.end method

.method static synthetic m(Lcom/smaato/soma/video/c;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/smaato/soma/video/c;->h()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/smaato/soma/video/c;->q:Z

    .line 73
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/smaato/soma/video/c;->q:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/smaato/soma/video/c;->l:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/smaato/soma/video/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smaato/soma/video/c;->getRewardedVideoListener()Lcom/smaato/soma/video/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 394
    new-instance v0, Lcom/smaato/soma/video/c$8;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/c$8;-><init>(Lcom/smaato/soma/video/c;)V

    .line 408
    invoke-virtual {v0}, Lcom/smaato/soma/video/c$8;->c()Ljava/lang/Object;

    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/smaato/soma/video/c;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 414
    invoke-virtual {p0}, Lcom/smaato/soma/video/c;->pause()V

    .line 415
    return-void
.end method

.method public getAutoCloseDuration()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/smaato/soma/video/c;->r:I

    return v0
.end method

.method public getOnVideoFinishedPlaying()Lcom/smaato/soma/video/c$a;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/smaato/soma/video/c;->d:Lcom/smaato/soma/video/c$a;

    return-object v0
.end method

.method public getRewardedVideoListener()Lcom/smaato/soma/video/a;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smaato/soma/video/c;->n:Lcom/smaato/soma/video/a;

    return-object v0
.end method

.method public getVastAd()Lcom/smaato/soma/internal/d/c;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/smaato/soma/video/c;->c:Lcom/smaato/soma/internal/d/c;

    return-object v0
.end method

.method public getVastAdListener()Lcom/smaato/soma/video/b;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/smaato/soma/video/c;->o:Lcom/smaato/soma/video/b;

    return-object v0
.end method

.method public getVideoSkipInterval()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/smaato/soma/video/c;->b:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lcom/smaato/soma/video/c$5;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/c$5;-><init>(Lcom/smaato/soma/video/c;)V

    .line 333
    invoke-virtual {v0}, Lcom/smaato/soma/video/c$5;->c()Ljava/lang/Object;

    .line 334
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 343
    new-instance v0, Lcom/smaato/soma/video/c$6;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/c$6;-><init>(Lcom/smaato/soma/video/c;)V

    .line 351
    invoke-virtual {v0}, Lcom/smaato/soma/video/c$6;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 343
    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/smaato/soma/video/c$4;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/c$4;-><init>(Lcom/smaato/soma/video/c;)V

    .line 305
    invoke-virtual {v0}, Lcom/smaato/soma/video/c$4;->c()Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lcom/smaato/soma/video/c$7;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/c$7;-><init>(Lcom/smaato/soma/video/c;)V

    .line 377
    invoke-virtual {v0}, Lcom/smaato/soma/video/c$7;->c()Ljava/lang/Object;

    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoCloseDuration(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/smaato/soma/video/c;->r:I

    .line 77
    return-void
.end method

.method public setOnVideoFinishedPlaying(Lcom/smaato/soma/video/c$a;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/smaato/soma/video/c;->d:Lcom/smaato/soma/video/c$a;

    .line 157
    return-void
.end method

.method protected setRewardedVideo(Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/smaato/soma/video/c;->l:Z

    .line 98
    return-void
.end method

.method public setRewardedVideoListener(Lcom/smaato/soma/video/a;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/smaato/soma/video/c;->n:Lcom/smaato/soma/video/a;

    .line 106
    return-void
.end method

.method public setVastAd(Lcom/smaato/soma/internal/d/c;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/smaato/soma/video/c;->c:Lcom/smaato/soma/internal/d/c;

    .line 432
    return-void
.end method

.method public setVastAdListener(Lcom/smaato/soma/video/b;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/smaato/soma/video/c;->o:Lcom/smaato/soma/video/b;

    .line 61
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 216
    new-instance v0, Lcom/smaato/soma/video/c$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/c$2;-><init>(Lcom/smaato/soma/video/c;)V

    .line 221
    invoke-virtual {v0}, Lcom/smaato/soma/video/c$2;->c()Ljava/lang/Object;

    .line 222
    return-void
.end method
