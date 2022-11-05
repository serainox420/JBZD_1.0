.class public interface abstract Lcom/madsdk/NativeAd$OnNativeAdLoadedListener;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madsdk/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnNativeAdLoadedListener"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
.end method

.method public abstract onLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/madsdk/gson/response/Asset;",
            ">;)V"
        }
    .end annotation
.end method
