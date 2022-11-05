.class interface abstract Lcom/amazon/device/ads/AdControlCallback;
.super Ljava/lang/Object;
.source "AdControlCallback.java"


# static fields
.field public static final CLOSE_EVENT_ONLY:I = 0x0

.field public static final CLOSE_FULL:I = 0x1

.field public static final NO_CLOSE:I = 0x2


# virtual methods
.method public abstract adClosing()I
.end method

.method public abstract isAdReady(Z)Z
.end method

.method public abstract onAdEvent(Lcom/amazon/device/ads/AdEvent;)V
.end method

.method public abstract onAdExpired()V
.end method

.method public abstract onAdFailed(Lcom/amazon/device/ads/AdError;)V
.end method

.method public abstract onAdLoaded(Lcom/amazon/device/ads/AdProperties;)V
.end method

.method public abstract onAdRendered()V
.end method

.method public abstract postAdRendered()V
.end method
