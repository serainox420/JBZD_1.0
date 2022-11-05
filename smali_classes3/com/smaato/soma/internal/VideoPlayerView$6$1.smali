.class Lcom/smaato/soma/internal/VideoPlayerView$6$1;
.super Lcom/smaato/soma/l;
.source "VideoPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/VideoPlayerView$6;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/VideoPlayerView$6;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/VideoPlayerView$6;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/smaato/soma/internal/VideoPlayerView$6$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$6;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView$6$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$6;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView$6;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView$6$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$6;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView$6;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView$6$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$6;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView$6;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    sget-object v1, Lcom/smaato/soma/VideoInterface$VideoState;->STOPPED:Lcom/smaato/soma/VideoInterface$VideoState;

    iput-object v1, v0, Lcom/smaato/soma/internal/VideoPlayerView;->f:Lcom/smaato/soma/VideoInterface$VideoState;

    .line 153
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView$6$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$6;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView$6;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView;->g:Lcom/smaato/soma/t;

    iget-object v1, p0, Lcom/smaato/soma/internal/VideoPlayerView$6$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$6;

    iget-object v1, v1, Lcom/smaato/soma/internal/VideoPlayerView$6;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    iget-object v1, v1, Lcom/smaato/soma/internal/VideoPlayerView;->c:Lcom/smaato/soma/VideoInterface;

    invoke-interface {v0, v1}, Lcom/smaato/soma/t;->a(Lcom/smaato/soma/VideoInterface;)V

    .line 154
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "SOMA"

    const-string v2, "Starting Video"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->VERVOSE:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/smaato/soma/internal/VideoPlayerView$6$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
