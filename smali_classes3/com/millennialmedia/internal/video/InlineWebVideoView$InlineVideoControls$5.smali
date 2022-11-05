.class Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;
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
    .line 159
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->c:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    iput-object p3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->b:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 163
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->b:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz v0, :cond_0

    .line 164
    if-eqz p2, :cond_1

    .line 165
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->b:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->mute()V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->b:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->unmute()V

    .line 169
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->c:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    .line 170
    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 172
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 174
    if-nez v1, :cond_0

    .line 175
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    .line 178
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method
