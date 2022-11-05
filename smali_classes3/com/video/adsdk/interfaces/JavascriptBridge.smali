.class public interface abstract Lcom/video/adsdk/interfaces/JavascriptBridge;
.super Ljava/lang/Object;
.source "JavascriptBridge.java"


# virtual methods
.method public abstract addListener(Lcom/video/adsdk/interfaces/JavascriptBridgeListener;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract clearView()V
.end method

.method public abstract finalReturn(I)V
.end method

.method public abstract getWebView()Landroid/webkit/WebView;
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract movieClick()V
.end method

.method public abstract movieDidFinish(J)V
.end method

.method public abstract moviePulse(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;J)V
.end method

.method public abstract movieStateDidChange(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;J)V
.end method

.method public abstract prefetchingComplete()V
.end method

.method public abstract removeListener(Lcom/video/adsdk/interfaces/JavascriptBridgeListener;)V
.end method

.method public abstract setParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract troubleshoot(Ljava/lang/String;I)V
.end method
