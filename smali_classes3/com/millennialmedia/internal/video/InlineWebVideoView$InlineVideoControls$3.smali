.class Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$3;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic b:Lcom/millennialmedia/internal/video/MMVideoView;

.field final synthetic c:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;Lcom/millennialmedia/internal/video/InlineWebVideoView;Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$3;->c:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$3;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    iput-object p3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$3;->b:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$3;->b:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz v0, :cond_0

    .line 127
    if-eqz p2, :cond_1

    .line 128
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$3;->b:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$3;->b:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->pause()V

    goto :goto_0
.end method
