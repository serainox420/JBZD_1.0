.class Lcom/smaato/soma/internal/VideoPlayerView$8$1;
.super Lcom/smaato/soma/l;
.source "VideoPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/VideoPlayerView$8;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/VideoPlayerView$8;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/VideoPlayerView$8;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/smaato/soma/internal/VideoPlayerView$8$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$8;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView$8$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$8;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView$8;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView$8$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$8;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView$8;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 184
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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
    .line 179
    invoke-virtual {p0}, Lcom/smaato/soma/internal/VideoPlayerView$8$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
