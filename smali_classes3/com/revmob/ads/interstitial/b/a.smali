.class public Lcom/revmob/ads/interstitial/b/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/revmob/FullscreenActivity;

.field protected b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/revmob/FullscreenActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/b/a;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/revmob/ads/interstitial/b/a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/revmob/ads/interstitial/b/a;->a:Lcom/revmob/FullscreenActivity;

    return-void
.end method

.method private a()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/revmob/ads/interstitial/b/a;->c:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/b/a;->c:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/a;->a:Lcom/revmob/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/a;->a:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/FullscreenActivity;->d()V

    move v0, v1

    goto :goto_0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/a;->a:Lcom/revmob/FullscreenActivity;

    new-instance v1, Lcom/revmob/ads/interstitial/b/b;

    invoke-direct {v1, p0}, Lcom/revmob/ads/interstitial/b/b;-><init>(Lcom/revmob/ads/interstitial/b/a;)V

    invoke-virtual {v0, v1}, Lcom/revmob/FullscreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/b/a;->d()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/revmob/ads/interstitial/b/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/b/a;->d()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/b/a;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/revmob/ads/interstitial/b/a;->c:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/a;->a:Lcom/revmob/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/a;->a:Lcom/revmob/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDismissed()V

    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/a;->a:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/FullscreenActivity;->f()V

    goto :goto_0
.end method
