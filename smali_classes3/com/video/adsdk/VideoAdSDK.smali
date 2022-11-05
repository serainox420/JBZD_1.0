.class public abstract Lcom/video/adsdk/VideoAdSDK;
.super Ljava/lang/Object;
.source "VideoAdSDK.java"


# static fields
.field public static final VIDEOADSDKVERSION:Ljava/lang/String; = "1.4.7"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isCorrectVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->clearCache()V

    .line 103
    :cond_0
    return-void
.end method

.method public static disableEmbedView()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->disableEmbedView()V

    .line 128
    return-void
.end method

.method public static enableEmbedView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0, p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->enableEmbedView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public static getCurrentAdVideoFile()Lcom/video/adsdk/internal/ADVideoFile;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isCorrectVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getCurrentFile()Lcom/video/adsdk/internal/ADVideoFile;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isViewEmbed()Z
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isViewEmbed()Z

    move-result v0

    return v0
.end method

.method public static isWiFiOnly()Z
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isWiFiOnly()Z

    move-result v0

    return v0
.end method

.method public static playAdvertising()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isCorrectVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->startLoadingAdvertisingURL()V

    .line 79
    :cond_0
    return-void
.end method

.method public static registerWithPublisherID(Landroid/content/Context;Ljava/lang/String;Lcom/video/adsdk/VideoAdSDKListener;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 15
    sget-object v1, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isCorrectVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    sget-object v1, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    .line 17
    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->registerWithPublisherID(Landroid/content/Context;Ljava/lang/String;Lcom/video/adsdk/VideoAdSDKListener;Z)Z

    move-result v0

    .line 19
    :cond_0
    return v0
.end method

.method public static registerWithPublisherID(Landroid/content/Context;Ljava/lang/String;Lcom/video/adsdk/VideoAdSDKListener;Z)Z
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isCorrectVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    .line 43
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->registerWithPublisherID(Landroid/content/Context;Ljava/lang/String;Lcom/video/adsdk/VideoAdSDKListener;Z)Z

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerWithPublisherID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/video/adsdk/VideoAdSDKListener;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 23
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isCorrectVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->registerWithPublisherID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/video/adsdk/VideoAdSDKListener;Z)Z

    move-result v5

    .line 27
    :cond_0
    return v5
.end method

.method public static registerWithPublisherID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/video/adsdk/VideoAdSDKListener;Z)Z
    .locals 6

    .prologue
    .line 61
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isCorrectVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 63
    invoke-virtual/range {v0 .. v5}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->registerWithPublisherID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/video/adsdk/VideoAdSDKListener;Z)Z

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isCorrectVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0, p0, p1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    :cond_0
    return-void
.end method

.method public static setWiFiOnly(Z)V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0, p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->setWiFiOnly(Z)V

    .line 138
    return-void
.end method

.method public static startAdvertising()V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isCorrectVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->displayAdvertising()V

    .line 92
    :cond_0
    return-void
.end method

.method public static startPrefetching()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->isCorrectVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->Instance:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->startLoadingPrefetchingURL()V

    .line 86
    :cond_0
    return-void
.end method
