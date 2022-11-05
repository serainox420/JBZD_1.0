.class public interface abstract Lcom/loopme/LoopMeBanner$Listener;
.super Ljava/lang/Object;
.source "LoopMeBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/LoopMeBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onLoopMeBannerClicked(Lcom/loopme/LoopMeBanner;)V
.end method

.method public abstract onLoopMeBannerExpired(Lcom/loopme/LoopMeBanner;)V
.end method

.method public abstract onLoopMeBannerHide(Lcom/loopme/LoopMeBanner;)V
.end method

.method public abstract onLoopMeBannerLeaveApp(Lcom/loopme/LoopMeBanner;)V
.end method

.method public abstract onLoopMeBannerLoadFail(Lcom/loopme/LoopMeBanner;Lcom/loopme/common/LoopMeError;)V
.end method

.method public abstract onLoopMeBannerLoadSuccess(Lcom/loopme/LoopMeBanner;)V
.end method

.method public abstract onLoopMeBannerShow(Lcom/loopme/LoopMeBanner;)V
.end method

.method public abstract onLoopMeBannerVideoDidReachEnd(Lcom/loopme/LoopMeBanner;)V
.end method
