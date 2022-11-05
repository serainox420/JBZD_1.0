.class Lcom/facebook/ads/RewardedVideoAd$1;
.super Lcom/facebook/ads/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/RewardedVideoAd;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/RewardedVideoAd;


# direct methods
.method constructor <init>(Lcom/facebook/ads/RewardedVideoAd;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-direct {p0}, Lcom/facebook/ads/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/RewardedVideoAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->b(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardData;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/internal/adapters/x;

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v1}, Lcom/facebook/ads/RewardedVideoAd;->b(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/x;->a(Lcom/facebook/ads/RewardData;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->c(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/internal/c/b;

    move-result-object v0

    check-cast p1, Lcom/facebook/ads/internal/adapters/x;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/c/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->c(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/internal/c/b;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/RewardedVideoAd$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/RewardedVideoAd$1$1;-><init>(Lcom/facebook/ads/RewardedVideoAd$1;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/c/b;->a(Lcom/facebook/ads/internal/c/a;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/b;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/b;->b()Lcom/facebook/ads/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/RewardedVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/RewardedVideoAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onRewardedVideoCompleted()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onRewardedVideoClosed()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdListener;->onRewardServerFailed()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdListener;->onRewardServerSuccess()V

    :cond_0
    return-void
.end method
