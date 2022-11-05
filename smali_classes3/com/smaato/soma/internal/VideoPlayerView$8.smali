.class Lcom/smaato/soma/internal/VideoPlayerView$8;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/VideoPlayerView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/smaato/soma/internal/VideoPlayerView$8;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/smaato/soma/internal/VideoPlayerView$8$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/VideoPlayerView$8$1;-><init>(Lcom/smaato/soma/internal/VideoPlayerView$8;)V

    .line 186
    invoke-virtual {v0}, Lcom/smaato/soma/internal/VideoPlayerView$8$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 179
    return v0
.end method
