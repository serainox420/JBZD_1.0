.class Lcom/millennialmedia/internal/video/InlineWebVideoView$7;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;->onStop(Lcom/millennialmedia/internal/video/MMVideoView;)V
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
    .line 941
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$7;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$7;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->i(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$7;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->o(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$7;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->i(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 948
    :cond_0
    return-void
.end method
