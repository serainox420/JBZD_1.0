.class Lcom/mopub/mobileads/MoPubRewardedVideo$a;
.super Ljava/lang/Object;
.source "MoPubRewardedVideo.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
.implements Lcom/mopub/mobileads/RewardedVastVideoInterstitial$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MoPubRewardedVideo;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/MoPubRewardedVideo;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$a;->a:Lcom/mopub/mobileads/MoPubRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/MoPubRewardedVideo;Lcom/mopub/mobileads/MoPubRewardedVideo$1;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideo$a;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideo;)V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked()V
    .locals 2

    .prologue
    .line 159
    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    const-string v1, "mopub_rewarded_video_id"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public onInterstitialDismissed()V
    .locals 2

    .prologue
    .line 169
    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    const-string v1, "mopub_rewarded_video_id"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideo$1;->a:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    const-string v1, "mopub_rewarded_video_id"

    invoke-static {v0, v1, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 149
    :goto_0
    return-void

    .line 142
    :pswitch_0
    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    const-string v1, "mopub_rewarded_video_id"

    invoke-static {v0, v1, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoPlaybackError(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onInterstitialLoaded()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$a;->a:Lcom/mopub/mobileads/MoPubRewardedVideo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideo;->a(Lcom/mopub/mobileads/MoPubRewardedVideo;Z)Z

    .line 134
    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    const-string v1, "mopub_rewarded_video_id"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public onInterstitialShown()V
    .locals 2

    .prologue
    .line 153
    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    const-string v1, "mopub_rewarded_video_id"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public onLeaveApplication()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public onVideoComplete()V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$a;->a:Lcom/mopub/mobileads/MoPubRewardedVideo;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideo;->a(Lcom/mopub/mobileads/MoPubRewardedVideo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    const-string v0, "No rewarded video was loaded, so no reward is possible"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 178
    :cond_0
    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideo;

    const-string v1, "mopub_rewarded_video_id"

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$a;->a:Lcom/mopub/mobileads/MoPubRewardedVideo;

    invoke-static {v2}, Lcom/mopub/mobileads/MoPubRewardedVideo;->a(Lcom/mopub/mobileads/MoPubRewardedVideo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubRewardedVideo$a;->a:Lcom/mopub/mobileads/MoPubRewardedVideo;

    invoke-static {v3}, Lcom/mopub/mobileads/MoPubRewardedVideo;->b(Lcom/mopub/mobileads/MoPubRewardedVideo;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    goto :goto_0
.end method
