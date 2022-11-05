.class Lcom/millennialmedia/internal/video/InlineWebVideoView$9;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;->c()V
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
    .line 1122
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$9;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v2, 0x0

    .line 1126
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$9;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->b(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/video/InlineWebVideoView$9$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$9$1;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$9;)V

    .line 1127
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1153
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1155
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$9;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->f(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/video/InlineWebVideoView$9$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$9$2;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$9;)V

    .line 1156
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1182
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1183
    return-void
.end method
