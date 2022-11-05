.class public interface abstract Lcom/loopme/VideoController$Callback;
.super Ljava/lang/Object;
.source "VideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/VideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onFail(Lcom/loopme/common/LoopMeError;)V
.end method

.method public abstract onVideoReachEnd()V
.end method

.method public abstract onVideoSizeChanged(II)V
.end method

.method public abstract playbackFinishedWithError()V
.end method

.method public abstract postponePlay(I)V
.end method
