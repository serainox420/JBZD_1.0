.class public interface abstract Lcom/loopme/common/VideoLoader$Callback;
.super Ljava/lang/Object;
.source "VideoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/common/VideoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onError(Lcom/loopme/common/LoopMeError;)V
.end method

.method public abstract onFullVideoLoaded(Ljava/lang/String;)V
.end method

.method public abstract onPreviewLoaded(Ljava/lang/String;)V
.end method
