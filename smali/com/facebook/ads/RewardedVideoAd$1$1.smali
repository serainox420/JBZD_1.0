.class Lcom/facebook/ads/RewardedVideoAd$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/RewardedVideoAd$1;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/RewardedVideoAd$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/RewardedVideoAd$1;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/RewardedVideoAd$1$1;->a:Lcom/facebook/ads/RewardedVideoAd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1$1;->a:Lcom/facebook/ads/RewardedVideoAd$1;

    iget-object v0, v0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1$1;->a:Lcom/facebook/ads/RewardedVideoAd$1;

    iget-object v0, v0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1$1;->a:Lcom/facebook/ads/RewardedVideoAd$1;

    iget-object v0, v0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd$1$1;->a:Lcom/facebook/ads/RewardedVideoAd$1;

    iget-object v1, v1, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/RewardedVideoAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    :cond_0
    return-void
.end method
