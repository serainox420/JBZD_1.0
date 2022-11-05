.class Lcom/smaato/soma/internal/VideoPlayerView$7$1;
.super Lcom/smaato/soma/l;
.source "VideoPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/VideoPlayerView$7;->onCompletion(Landroid/media/MediaPlayer;)V
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
.field final synthetic a:Lcom/smaato/soma/internal/VideoPlayerView$7;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/VideoPlayerView$7;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/smaato/soma/internal/VideoPlayerView$7$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$7;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView$7$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$7;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView$7;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    sget-object v1, Lcom/smaato/soma/VideoInterface$VideoState;->FINISHED:Lcom/smaato/soma/VideoInterface$VideoState;

    iput-object v1, v0, Lcom/smaato/soma/internal/VideoPlayerView;->f:Lcom/smaato/soma/VideoInterface$VideoState;

    .line 169
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView$7$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$7;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView$7;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView;->g:Lcom/smaato/soma/t;

    iget-object v1, p0, Lcom/smaato/soma/internal/VideoPlayerView$7$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$7;

    iget-object v1, v1, Lcom/smaato/soma/internal/VideoPlayerView$7;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    iget-object v1, v1, Lcom/smaato/soma/internal/VideoPlayerView;->c:Lcom/smaato/soma/VideoInterface;

    invoke-interface {v0, v1}, Lcom/smaato/soma/t;->b(Lcom/smaato/soma/VideoInterface;)V

    .line 170
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
    .line 165
    invoke-virtual {p0}, Lcom/smaato/soma/internal/VideoPlayerView$7$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
