.class Lcom/millennialmedia/internal/video/InlineWebVideoView$9$1;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/InlineWebVideoView$9;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$9;)V
    .locals 0

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$9$1;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 1146
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$9$1;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView$9;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$9;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->b(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->setVisibility(I)V

    .line 1140
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 1152
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 1133
    return-void
.end method
