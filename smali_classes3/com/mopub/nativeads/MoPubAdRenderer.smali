.class public interface abstract Lcom/mopub/nativeads/MoPubAdRenderer;
.super Ljava/lang/Object;
.source "MoPubAdRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/mopub/nativeads/BaseNativeAd;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BaseNativeAd;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract supports(Lcom/mopub/nativeads/BaseNativeAd;)Z
.end method
