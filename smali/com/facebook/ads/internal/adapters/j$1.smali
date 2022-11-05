.class Lcom/facebook/ads/internal/adapters/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/j;->loadInterstitialAd(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;Ljava/util/Map;Lcom/facebook/ads/internal/g/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/k;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/j;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/j;Lcom/facebook/ads/internal/adapters/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/j$1;->a:Lcom/facebook/ads/internal/adapters/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/r;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/j;->a(Lcom/facebook/ads/internal/adapters/j;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/j;->a(Lcom/facebook/ads/internal/adapters/j;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/j;->a(Lcom/facebook/ads/internal/adapters/j;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdLoaded(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V

    goto :goto_0
.end method

.method public a(Lcom/facebook/ads/internal/adapters/r;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/j$1;->a:Lcom/facebook/ads/internal/adapters/k;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/k;->h()Lcom/facebook/ads/internal/adapters/j$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/j;->a(Lcom/facebook/ads/internal/adapters/j;Lcom/facebook/ads/internal/adapters/j$a;)Lcom/facebook/ads/internal/adapters/j$a;

    invoke-static {}, Lcom/facebook/ads/internal/adapters/j;->a()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/j;->b(Lcom/facebook/ads/internal/adapters/j;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/j$1;->a:Lcom/facebook/ads/internal/adapters/k;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/r;Lcom/facebook/ads/AdError;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/j;->a(Lcom/facebook/ads/internal/adapters/j;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    invoke-interface {v0, v1, p2}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialError(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Lcom/facebook/ads/AdError;)V

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/adapters/r;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/j;->a(Lcom/facebook/ads/internal/adapters/j;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdClicked(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Lcom/facebook/ads/internal/adapters/r;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/j;->a(Lcom/facebook/ads/internal/adapters/j;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialLoggingImpression(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/j;->a(Lcom/facebook/ads/internal/adapters/j;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdDisplayed(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V

    return-void
.end method

.method public d(Lcom/facebook/ads/internal/adapters/r;)V
    .locals 2

    invoke-static {}, Lcom/facebook/ads/internal/adapters/j;->a()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/j;->b(Lcom/facebook/ads/internal/adapters/j;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/j;->a(Lcom/facebook/ads/internal/adapters/j;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/j$1;->b:Lcom/facebook/ads/internal/adapters/j;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdDismissed(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V

    return-void
.end method
