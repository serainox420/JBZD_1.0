.class public interface abstract Lcom/millennialmedia/NativeAd$NativeListener;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeListener"
.end annotation


# virtual methods
.method public abstract onAdLeftApplication(Lcom/millennialmedia/NativeAd;)V
.end method

.method public abstract onClicked(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$ComponentName;I)V
.end method

.method public abstract onExpired(Lcom/millennialmedia/NativeAd;)V
.end method

.method public abstract onLoadFailed(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeErrorStatus;)V
.end method

.method public abstract onLoaded(Lcom/millennialmedia/NativeAd;)V
.end method
