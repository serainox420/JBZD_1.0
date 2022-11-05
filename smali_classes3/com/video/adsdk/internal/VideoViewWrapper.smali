.class public Lcom/video/adsdk/internal/VideoViewWrapper;
.super Ljava/lang/Object;
.source "VideoViewWrapper.java"


# instance fields
.field private final videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/widget/VideoView;Lcom/video/adsdk/internal/ADVideoView;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/video/adsdk/internal/VideoViewWrapper;->videoView:Landroid/widget/VideoView;

    .line 20
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoViewWrapper;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 21
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoViewWrapper;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 22
    return-void
.end method

.method private logIllegalStateException(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 132
    const-string v0, "VIDEOADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException thrown while calling videoView#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoViewWrapper;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->canPause()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 34
    :goto_0
    return v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 29
    const-string v0, "canPause"

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->logIllegalStateException(Ljava/lang/String;)V

    .line 34
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :catch_1
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoViewWrapper;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 47
    :goto_0
    return v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 42
    const-string v0, "getCurrentPosition"

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->logIllegalStateException(Ljava/lang/String;)V

    .line 47
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 43
    :catch_1
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoViewWrapper;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 60
    :goto_0
    return v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 55
    const-string v0, "getDuration"

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->logIllegalStateException(Ljava/lang/String;)V

    .line 60
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoViewWrapper;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 73
    :goto_0
    return v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 68
    const-string v0, "isPlaying"

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->logIllegalStateException(Ljava/lang/String;)V

    .line 73
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoViewWrapper;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 92
    const-string v0, "pause"

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->logIllegalStateException(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoViewWrapper;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 125
    const-string v0, "seekTo"

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->logIllegalStateException(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoViewWrapper;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 114
    const-string v0, "setVideoURI"

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->logIllegalStateException(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :catch_1
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoViewWrapper;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 81
    const-string v0, "start"

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->logIllegalStateException(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoViewWrapper;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 103
    const-string v0, "stopPlayback"

    invoke-direct {p0, v0}, Lcom/video/adsdk/internal/VideoViewWrapper;->logIllegalStateException(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
