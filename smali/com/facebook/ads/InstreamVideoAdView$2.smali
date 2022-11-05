.class Lcom/facebook/ads/InstreamVideoAdView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/InstreamVideoAdView;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/InstreamVideoAdView;


# direct methods
.method constructor <init>(Lcom/facebook/ads/InstreamVideoAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/r;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    goto :goto_0
.end method

.method public a(Lcom/facebook/ads/internal/adapters/r;Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot present null view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0, p2}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-virtual {v0}, Lcom/facebook/ads/InstreamVideoAdView;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v1}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/InstreamVideoAdView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/r;Lcom/facebook/ads/AdError;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1, p2}, Lcom/facebook/ads/InstreamVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    goto :goto_0
.end method

.method public b(Lcom/facebook/ads/internal/adapters/r;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    goto :goto_0
.end method

.method public c(Lcom/facebook/ads/internal/adapters/r;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/facebook/ads/internal/adapters/r;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdVideoComplete(Lcom/facebook/ads/Ad;)V

    goto :goto_0
.end method
