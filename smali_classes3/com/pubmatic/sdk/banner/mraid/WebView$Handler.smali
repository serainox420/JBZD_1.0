.class public interface abstract Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/mraid/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation


# virtual methods
.method public abstract webViewPageFinished(Lcom/pubmatic/sdk/banner/mraid/WebView;)V
.end method

.method public abstract webViewPageStarted(Lcom/pubmatic/sdk/banner/mraid/WebView;)V
.end method

.method public abstract webViewReceivedError(Lcom/pubmatic/sdk/banner/mraid/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract webViewShouldOverrideUrlLoading(Lcom/pubmatic/sdk/banner/mraid/WebView;Ljava/lang/String;)Z
.end method
