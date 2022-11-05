.class public interface abstract Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestListener"
.end annotation


# virtual methods
.method public abstract onFailedToReceiveAd(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/Exception;)V
.end method

.method public abstract onReceivedAd(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
.end method

.method public abstract onReceivedThirdPartyRequest(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/banner/PMBannerAdView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
