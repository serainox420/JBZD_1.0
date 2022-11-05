.class final Lcom/revmob/ads/interstitial/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Z

.field private synthetic b:Lcom/revmob/ads/interstitial/b/a;

.field private synthetic c:Lcom/revmob/ads/interstitial/a;


# direct methods
.method constructor <init>(Lcom/revmob/ads/interstitial/a;Lcom/revmob/ads/interstitial/b/a;)V
    .locals 1

    iput-object p1, p0, Lcom/revmob/ads/interstitial/c;->c:Lcom/revmob/ads/interstitial/a;

    iput-object p2, p0, Lcom/revmob/ads/interstitial/c;->b:Lcom/revmob/ads/interstitial/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/c;->a:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/c;->a:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/revmob/ads/interstitial/c;->a:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/c;->c:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/c;->c:Lcom/revmob/ads/interstitial/a;

    const-string v1, "clicks"

    invoke-static {v0, v1}, Lcom/revmob/ads/interstitial/a;->b(Lcom/revmob/ads/interstitial/a;Ljava/lang/String;)V

    :cond_0
    const-string v0, "%.2f"

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/revmob/ads/interstitial/c;->c:Lcom/revmob/ads/interstitial/a;

    iget-wide v4, v3, Lcom/revmob/ads/interstitial/a;->m:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/interstitial/c;->c:Lcom/revmob/ads/interstitial/a;

    iget-object v1, v1, Lcom/revmob/ads/interstitial/a;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/revmob/ads/interstitial/c;->c:Lcom/revmob/ads/interstitial/a;

    iget-object v1, v1, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    iget-object v1, v1, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v1}, Lcom/revmob/RevMobAdsListener;->onRevMobRewardedVideoCompleted()V

    :cond_1
    iget-object v1, p0, Lcom/revmob/ads/interstitial/c;->b:Lcom/revmob/ads/interstitial/b/a;

    invoke-virtual {v1, v0}, Lcom/revmob/ads/interstitial/b/a;->b(Ljava/lang/String;)Z

    :cond_2
    return-void
.end method
