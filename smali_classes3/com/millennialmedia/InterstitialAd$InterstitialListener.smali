.class public interface abstract Lcom/millennialmedia/InterstitialAd$InterstitialListener;
.super Ljava/lang/Object;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InterstitialListener"
.end annotation


# virtual methods
.method public abstract onAdLeftApplication(Lcom/millennialmedia/InterstitialAd;)V
.end method

.method public abstract onClicked(Lcom/millennialmedia/InterstitialAd;)V
.end method

.method public abstract onClosed(Lcom/millennialmedia/InterstitialAd;)V
.end method

.method public abstract onExpired(Lcom/millennialmedia/InterstitialAd;)V
.end method

.method public abstract onLoadFailed(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
.end method

.method public abstract onLoaded(Lcom/millennialmedia/InterstitialAd;)V
.end method

.method public abstract onShowFailed(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
.end method

.method public abstract onShown(Lcom/millennialmedia/InterstitialAd;)V
.end method
