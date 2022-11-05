.class Lcom/smaato/soma/internal/VideoPlayerView$9$1;
.super Lcom/smaato/soma/l;
.source "VideoPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/VideoPlayerView$9;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
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
.field final synthetic a:Lcom/smaato/soma/internal/VideoPlayerView$9;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/VideoPlayerView$9;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/smaato/soma/internal/VideoPlayerView$9$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$9;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView$9$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$9;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView$9;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView;->e:Lcom/smaato/soma/p;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView$9$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$9;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView$9;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    iget-object v0, v0, Lcom/smaato/soma/internal/VideoPlayerView;->e:Lcom/smaato/soma/p;

    iget-object v1, p0, Lcom/smaato/soma/internal/VideoPlayerView$9$1;->a:Lcom/smaato/soma/internal/VideoPlayerView$9;

    iget-object v1, v1, Lcom/smaato/soma/internal/VideoPlayerView$9;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    iget-object v1, v1, Lcom/smaato/soma/internal/VideoPlayerView;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Landroid/content/Context;)V

    .line 198
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    .line 192
    invoke-virtual {p0}, Lcom/smaato/soma/internal/VideoPlayerView$9$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
