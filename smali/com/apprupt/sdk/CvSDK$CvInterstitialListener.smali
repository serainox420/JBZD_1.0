.class public interface abstract Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;
.super Ljava/lang/Object;
.source "CvSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CvInterstitialListener"
.end annotation


# virtual methods
.method public abstract cvInterstitialDidAppear(I)V
.end method

.method public abstract cvInterstitialDidDisappear(I)V
.end method

.method public abstract cvInterstitialDidFail(ILjava/lang/String;I)V
.end method

.method public abstract cvInterstitialFirstTap()V
.end method

.method public abstract cvInterstitialWillAppear(I)V
.end method

.method public abstract cvInterstitialWillDisappear(I)V
.end method
