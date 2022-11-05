.class Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$7;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$7;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$7;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->a(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 219
    return-void
.end method
