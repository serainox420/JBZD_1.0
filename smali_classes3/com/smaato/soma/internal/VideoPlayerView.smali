.class public Lcom/smaato/soma/internal/VideoPlayerView;
.super Landroid/widget/FrameLayout;
.source "VideoPlayerView.java"

# interfaces
.implements Lcom/smaato/soma/VideoInterface;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/VideoView;

.field c:Lcom/smaato/soma/VideoInterface;

.field d:Landroid/widget/ProgressBar;

.field e:Lcom/smaato/soma/p;

.field f:Lcom/smaato/soma/VideoInterface$VideoState;

.field g:Lcom/smaato/soma/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->a:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->b:Landroid/widget/VideoView;

    .line 47
    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->c:Lcom/smaato/soma/VideoInterface;

    .line 51
    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->d:Landroid/widget/ProgressBar;

    .line 55
    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->e:Lcom/smaato/soma/p;

    .line 59
    sget-object v0, Lcom/smaato/soma/VideoInterface$VideoState;->EMPTY:Lcom/smaato/soma/VideoInterface$VideoState;

    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->f:Lcom/smaato/soma/VideoInterface$VideoState;

    .line 63
    new-instance v0, Lcom/smaato/soma/internal/VideoPlayerView$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/VideoPlayerView$1;-><init>(Lcom/smaato/soma/internal/VideoPlayerView;)V

    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->g:Lcom/smaato/soma/t;

    .line 99
    new-instance v0, Lcom/smaato/soma/internal/VideoPlayerView$4;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/VideoPlayerView$4;-><init>(Lcom/smaato/soma/internal/VideoPlayerView;Landroid/content/Context;)V

    .line 105
    invoke-virtual {v0}, Lcom/smaato/soma/internal/VideoPlayerView$4;->c()Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->a:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->b:Landroid/widget/VideoView;

    .line 47
    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->c:Lcom/smaato/soma/VideoInterface;

    .line 51
    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->d:Landroid/widget/ProgressBar;

    .line 55
    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->e:Lcom/smaato/soma/p;

    .line 59
    sget-object v0, Lcom/smaato/soma/VideoInterface$VideoState;->EMPTY:Lcom/smaato/soma/VideoInterface$VideoState;

    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->f:Lcom/smaato/soma/VideoInterface$VideoState;

    .line 63
    new-instance v0, Lcom/smaato/soma/internal/VideoPlayerView$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/VideoPlayerView$1;-><init>(Lcom/smaato/soma/internal/VideoPlayerView;)V

    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->g:Lcom/smaato/soma/t;

    .line 84
    new-instance v0, Lcom/smaato/soma/internal/VideoPlayerView$3;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/VideoPlayerView$3;-><init>(Lcom/smaato/soma/internal/VideoPlayerView;Landroid/content/Context;)V

    .line 90
    invoke-virtual {v0}, Lcom/smaato/soma/internal/VideoPlayerView$3;->c()Ljava/lang/Object;

    .line 91
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/VideoPlayerInstantiationException;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/VideoPlayerView$5;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/VideoPlayerView$5;-><init>(Lcom/smaato/soma/internal/VideoPlayerView;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 138
    iput-object p1, p0, Lcom/smaato/soma/internal/VideoPlayerView;->a:Landroid/content/Context;

    .line 139
    iput-object p0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->c:Lcom/smaato/soma/VideoInterface;

    .line 140
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->b:Landroid/widget/VideoView;

    .line 141
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 143
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 144
    iget-object v1, p0, Lcom/smaato/soma/internal/VideoPlayerView;->b:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->b:Landroid/widget/VideoView;

    new-instance v1, Lcom/smaato/soma/internal/VideoPlayerView$6;

    invoke-direct {v1, p0}, Lcom/smaato/soma/internal/VideoPlayerView$6;-><init>(Lcom/smaato/soma/internal/VideoPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 163
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->b:Landroid/widget/VideoView;

    new-instance v1, Lcom/smaato/soma/internal/VideoPlayerView$7;

    invoke-direct {v1, p0}, Lcom/smaato/soma/internal/VideoPlayerView$7;-><init>(Lcom/smaato/soma/internal/VideoPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 175
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->b:Landroid/widget/VideoView;

    new-instance v1, Lcom/smaato/soma/internal/VideoPlayerView$8;

    invoke-direct {v1, p0}, Lcom/smaato/soma/internal/VideoPlayerView$8;-><init>(Lcom/smaato/soma/internal/VideoPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 189
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->b:Landroid/widget/VideoView;

    new-instance v1, Lcom/smaato/soma/internal/VideoPlayerView$9;

    invoke-direct {v1, p0}, Lcom/smaato/soma/internal/VideoPlayerView$9;-><init>(Lcom/smaato/soma/internal/VideoPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->b:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/VideoPlayerView;->addView(Landroid/view/View;)V

    .line 204
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->d:Landroid/widget/ProgressBar;

    .line 205
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 208
    iget-object v1, p0, Lcom/smaato/soma/internal/VideoPlayerView;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 210
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/VideoPlayerView;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    throw v0

    .line 213
    :catch_1
    move-exception v0

    .line 214
    new-instance v1, Lcom/smaato/soma/exception/VideoPlayerInstantiationException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/VideoPlayerInstantiationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/smaato/soma/internal/VideoPlayerView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/VideoPlayerInstantiationException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/smaato/soma/internal/VideoPlayerView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lcom/smaato/soma/internal/VideoPlayerView$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/VideoPlayerView$2;-><init>(Lcom/smaato/soma/internal/VideoPlayerView;)V

    .line 257
    invoke-virtual {v0}, Lcom/smaato/soma/internal/VideoPlayerView$2;->c()Ljava/lang/Object;

    .line 258
    return-void
.end method

.method public getState()Lcom/smaato/soma/VideoInterface$VideoState;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView;->f:Lcom/smaato/soma/VideoInterface$VideoState;

    return-object v0
.end method

.method public setVideoListener(Lcom/smaato/soma/t;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/smaato/soma/internal/VideoPlayerView;->g:Lcom/smaato/soma/t;

    .line 128
    return-void
.end method
