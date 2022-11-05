.class public interface abstract Lcom/mdotm/android/listener/MdotMAdEventListener;
.super Ljava/lang/Object;
.source "MdotMAdEventListener.java"


# virtual methods
.method public abstract didShowInterstitial()V
.end method

.method public abstract onDismissScreen()V
.end method

.method public abstract onFailedToReceiveInterstitialAd()V
.end method

.method public abstract onFailedToReceiveNativeAd()V
.end method

.method public abstract onInterstitialAdClick()V
.end method

.method public abstract onInterstitialDismiss()V
.end method

.method public abstract onLeaveApplicationFromInterstitial()V
.end method

.method public abstract onNativeAdClick()V
.end method

.method public abstract onReceiveInterstitialAd()V
.end method

.method public abstract onReceiveNativeAd(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/nativeads/MdotMNativeAd;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRewardedVideoComplete(ZLjava/lang/String;)V
.end method

.method public abstract willShowInterstitial()V
.end method
