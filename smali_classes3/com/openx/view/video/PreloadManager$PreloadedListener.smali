.class public interface abstract Lcom/openx/view/video/PreloadManager$PreloadedListener;
.super Ljava/lang/Object;
.source "PreloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/view/video/PreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreloadedListener"
.end annotation


# virtual methods
.method public abstract preloaded(Lcom/openx/view/WebViewBase;)V
.end method

.method public abstract stoppedLoading()V
.end method

.method public abstract timedOut(Lcom/openx/view/WebViewBase;)V
.end method
