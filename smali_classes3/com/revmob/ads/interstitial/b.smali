.class final Lcom/revmob/ads/interstitial/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/revmob/ads/interstitial/a;


# direct methods
.method constructor <init>(Lcom/revmob/ads/interstitial/a;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/revmob/ads/interstitial/a;->e:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/revmob/ads/interstitial/a;->a(Lcom/revmob/ads/interstitial/a;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a;->d()V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a;->b()V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobRewardedVideoCompleted()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/revmob/FullscreenActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/FullscreenActivity;->b()V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/FullscreenActivity;->finish()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/revmob/ads/interstitial/b;->a:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDismissed()V

    goto :goto_0
.end method
