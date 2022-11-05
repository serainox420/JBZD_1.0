.class Lcom/millennialmedia/internal/video/InlineWebVideoView$10;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/InlineWebVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$10;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$10;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->p(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$10;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->p(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;->onClicked()V

    .line 1239
    :cond_0
    return-void
.end method
