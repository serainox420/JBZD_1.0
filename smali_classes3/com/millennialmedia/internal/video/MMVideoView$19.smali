.class Lcom/millennialmedia/internal/video/MMVideoView$19;
.super Ljava/lang/Object;
.source "MMVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/MMVideoView;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/millennialmedia/internal/video/MMVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$19;->b:Lcom/millennialmedia/internal/video/MMVideoView;

    iput p2, p0, Lcom/millennialmedia/internal/video/MMVideoView$19;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 898
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$19;->b:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->g(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$19;->b:Lcom/millennialmedia/internal/video/MMVideoView;

    iget v2, p0, Lcom/millennialmedia/internal/video/MMVideoView$19;->a:I

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;->onBufferingUpdate(Lcom/millennialmedia/internal/video/MMVideoView;I)V

    .line 899
    return-void
.end method
