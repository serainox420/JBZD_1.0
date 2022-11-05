.class Lcom/smaato/soma/internal/VideoPlayerView$7;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 163
    iput-object p1, p0, Lcom/smaato/soma/internal/VideoPlayerView$7;->a:Lcom/smaato/soma/internal/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/smaato/soma/internal/VideoPlayerView$7$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/VideoPlayerView$7$1;-><init>(Lcom/smaato/soma/internal/VideoPlayerView$7;)V

    .line 172
    invoke-virtual {v0}, Lcom/smaato/soma/internal/VideoPlayerView$7$1;->c()Ljava/lang/Object;

    .line 173
    return-void
.end method
