.class public Lcom/openx/view/video/PublisherVideoView;
.super Landroid/widget/VideoView;
.source "PublisherVideoView.java"

# interfaces
.implements Lcom/openx/model/vast/VASTPlayer;


# instance fields
.field canOverrideDraw:Z

.field private vastInterface:Lcom/openx/model/vast/VASTInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/view/video/PublisherVideoView;->canOverrideDraw:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/view/video/PublisherVideoView;->canOverrideDraw:Z

    .line 25
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 57
    const-string v0, "VIDEOPLAYER"

    const-string v1, "drawing black"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-boolean v0, p0, Lcom/openx/view/video/PublisherVideoView;->canOverrideDraw:Z

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    const-string v0, "VIDEOPLAYER"

    const-string v1, "drawing black"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/openx/view/video/PublisherVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCanOverrideDraw(Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/openx/view/video/PublisherVideoView;->canOverrideDraw:Z

    .line 51
    return-void
.end method

.method public setVASTInterface(Lcom/openx/model/vast/VASTInterface;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/openx/view/video/PublisherVideoView;->vastInterface:Lcom/openx/model/vast/VASTInterface;

    .line 38
    return-void
.end method

.method public setVideoCompletionListener(Lcom/openx/model/vast/VideoCompletionListener;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public setVideoErrorListener(Lcom/openx/model/vast/VideoErrorListener;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public setVideoPreparedListener(Lcom/openx/model/vast/VideoPreparedListener;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
