.class Lcom/smartadserver/android/library/c/l$d;
.super Ljava/lang/Object;
.source "SASMoPubAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubRewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/l;


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/c/l;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/smartadserver/android/library/c/l$d;->a:Lcom/smartadserver/android/library/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/c/l;Lcom/smartadserver/android/library/c/l$1;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/c/l$d;-><init>(Lcom/smartadserver/android/library/c/l;)V

    return-void
.end method


# virtual methods
.method public onRewardedVideoClosed(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 218
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onRewardedVideoClosed for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$d;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$d;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/c/l$d$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/l$d$1;-><init>(Lcom/smartadserver/android/library/c/l$d;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 226
    :cond_0
    return-void
.end method

.method public onRewardedVideoCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V
    .locals 6
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
    .line 230
    const-string v0, "SASMoPubAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoPub onRewardedVideoCompleted for interstitial : label:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " amount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$d;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$d;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/model/b;

    invoke-virtual {p2}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result v3

    int-to-double v4, v3

    invoke-direct {v1, v2, v4, v5}, Lcom/smartadserver/android/library/model/b;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/model/b;)V

    .line 234
    :cond_0
    return-void
.end method

.method public onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    .prologue
    .line 202
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onRewardedVideoLoadFailure for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$d;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public onRewardedVideoLoadSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 191
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onRewardedVideoLoadSuccess for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$d;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$d;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$d;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$d;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$d;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setExpandUseCustomCloseProperty(Z)V

    .line 196
    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedVideos;->showRewardedVideo(Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onRewardedVideoPlaybackError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    .prologue
    .line 213
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onRewardedVideoPlaybackError for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public onRewardedVideoStarted(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 208
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onRewardedVideoStarted for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method
