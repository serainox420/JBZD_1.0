.class public interface abstract Lcom/video/adsdk/interfaces/VideoBridge;
.super Ljava/lang/Object;
.source "VideoBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/video/adsdk/interfaces/VideoBridge$MovieState;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/video/adsdk/interfaces/VideoBridgeListener;)V
.end method

.method public abstract getCurrentMovieState()Lcom/video/adsdk/interfaces/VideoBridge$MovieState;
.end method

.method public abstract getCurrentSecond()I
.end method

.method public abstract isClosableByUI()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract removeListener(Lcom/video/adsdk/interfaces/VideoBridgeListener;)V
.end method

.method public abstract removeWebView()V
.end method

.method public abstract setBackgroundColor(I)V
.end method

.method public abstract setFileDownloader(Lcom/video/adsdk/interfaces/FileDownloader;)V
.end method

.method public abstract setUrl(Ljava/lang/String;)V
.end method

.method public abstract setWebview(Landroid/view/View;)V
.end method

.method public abstract showSkip()V
.end method

.method public abstract shutdown()V
.end method

.method public abstract stop()V
.end method
