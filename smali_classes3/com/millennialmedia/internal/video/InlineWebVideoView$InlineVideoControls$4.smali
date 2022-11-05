.class Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$4;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;Landroid/content/Context;Lcom/millennialmedia/internal/video/MMVideoView;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

.field final synthetic b:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$4;->b:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$4;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$4;->b:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    .line 156
    return-void
.end method
