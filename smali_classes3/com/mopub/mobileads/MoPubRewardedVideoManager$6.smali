.class final Lcom/mopub/mobileads/MoPubRewardedVideoManager$6;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 656
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->c(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$6;->a:Ljava/lang/String;

    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->a()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->b(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->makeRewardedVideoCompletionRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    return-void
.end method
