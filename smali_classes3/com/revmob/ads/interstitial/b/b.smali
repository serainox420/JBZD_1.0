.class final Lcom/revmob/ads/interstitial/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/revmob/ads/interstitial/b/a;


# direct methods
.method constructor <init>(Lcom/revmob/ads/interstitial/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/interstitial/b/b;->a:Lcom/revmob/ads/interstitial/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/revmob/internal/d;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/b/b;->a:Lcom/revmob/ads/interstitial/b/a;

    iget-object v1, v1, Lcom/revmob/ads/interstitial/b/a;->a:Lcom/revmob/FullscreenActivity;

    iget-object v2, p0, Lcom/revmob/ads/interstitial/b/b;->a:Lcom/revmob/ads/interstitial/b/a;

    iget-object v2, v2, Lcom/revmob/ads/interstitial/b/a;->a:Lcom/revmob/FullscreenActivity;

    iget-object v2, v2, Lcom/revmob/FullscreenActivity;->b:Lcom/revmob/ads/interstitial/a/b;

    iget-object v3, p0, Lcom/revmob/ads/interstitial/b/b;->a:Lcom/revmob/ads/interstitial/b/a;

    iget-object v3, v3, Lcom/revmob/ads/interstitial/b/a;->a:Lcom/revmob/FullscreenActivity;

    iget-object v3, v3, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    new-instance v4, Lcom/revmob/ads/interstitial/b/c;

    invoke-direct {v4, p0}, Lcom/revmob/ads/interstitial/b/c;-><init>(Lcom/revmob/ads/interstitial/b/b;)V

    iget-object v5, p0, Lcom/revmob/ads/interstitial/b/b;->a:Lcom/revmob/ads/interstitial/b/a;

    iget-object v5, v5, Lcom/revmob/ads/interstitial/b/a;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/revmob/internal/d;-><init>(Landroid/app/Activity;Lcom/revmob/client/a;Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/i;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/revmob/internal/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/revmob/internal/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
