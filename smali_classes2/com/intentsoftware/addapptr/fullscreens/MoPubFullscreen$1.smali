.class Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$1;
.super Ljava/lang/Object;
.source "MoPubFullscreen.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubRewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->createVideoListener()Lcom/mopub/mobileads/MoPubRewardedVideoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedVideoClosed(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;Z)V

    .line 167
    :cond_0
    return-void
.end method

.method public onRewardedVideoCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p2}, Lcom/mopub/common/MoPubReward;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->access$600(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->access$002(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;J)J

    .line 148
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public onRewardedVideoLoadSuccess(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->access$002(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;J)J

    .line 142
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V

    .line 143
    return-void
.end method

.method public onRewardedVideoPlaybackError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public onRewardedVideoStarted(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->access$002(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;J)J

    .line 154
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;)V

    .line 155
    return-void
.end method
