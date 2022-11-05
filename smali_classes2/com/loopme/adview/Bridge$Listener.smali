.class public interface abstract Lcom/loopme/adview/Bridge$Listener;
.super Ljava/lang/Object;
.source "Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/adview/Bridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onJsClose()V
.end method

.method public abstract onJsFullscreenMode(Z)V
.end method

.method public abstract onJsLoadFail(Ljava/lang/String;)V
.end method

.method public abstract onJsLoadSuccess()V
.end method

.method public abstract onJsVideoLoad(Ljava/lang/String;)V
.end method

.method public abstract onJsVideoMute(Z)V
.end method

.method public abstract onJsVideoPause(I)V
.end method

.method public abstract onJsVideoPlay(I)V
.end method

.method public abstract onJsVideoStretch(Z)V
.end method

.method public abstract onNonLoopMe(Ljava/lang/String;)V
.end method
