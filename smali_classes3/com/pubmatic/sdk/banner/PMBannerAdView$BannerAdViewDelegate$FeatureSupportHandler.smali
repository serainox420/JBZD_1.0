.class public interface abstract Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeatureSupportHandler"
.end annotation


# virtual methods
.method public abstract shouldAddCalendarEntry(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;)Z
.end method

.method public abstract shouldStorePicture(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;)Z
.end method

.method public abstract shouldSupportCalendar(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Ljava/lang/Boolean;
.end method

.method public abstract shouldSupportPhone(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Ljava/lang/Boolean;
.end method

.method public abstract shouldSupportSMS(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Ljava/lang/Boolean;
.end method

.method public abstract shouldSupportStorePicture(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Ljava/lang/Boolean;
.end method
