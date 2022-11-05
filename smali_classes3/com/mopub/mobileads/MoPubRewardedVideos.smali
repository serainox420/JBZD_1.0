.class public Lcom/mopub/mobileads/MoPubRewardedVideos;
.super Ljava/lang/Object;
.source "MoPubRewardedVideos.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasRewardedVideo(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .prologue
    .line 49
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->hasVideo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs initializeRewardedVideo(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 0
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .prologue
    .line 20
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->init(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V

    .line 23
    return-void
.end method

.method public static varargs loadRewardedVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V
    .locals 0
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .prologue
    .line 42
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    invoke-static {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->loadVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V

    .line 45
    return-void
.end method

.method public static varargs loadRewardedVideo(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V
    .locals 1
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .prologue
    .line 33
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->loadVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V

    .line 36
    return-void
.end method

.method public static setRewardedVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V
    .locals 0
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .prologue
    .line 27
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->setVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V

    .line 28
    return-void
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .prologue
    .line 56
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->showVideo(Ljava/lang/String;)V

    .line 59
    return-void
.end method
