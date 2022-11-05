.class public interface abstract Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;
.super Ljava/lang/Object;
.source "InterstitialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InterstitialAdapterListener"
.end annotation


# virtual methods
.method public abstract initFailed()V
.end method

.method public abstract initSucceeded()V
.end method

.method public abstract onAdLeftApplication()V
.end method

.method public abstract onClicked()V
.end method

.method public abstract onClosed()V
.end method

.method public abstract onExpired()V
.end method

.method public abstract onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
.end method

.method public abstract showFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
.end method

.method public abstract shown()V
.end method
