.class Lcom/facebook/ads/InstreamVideoAdView$1;
.super Lcom/facebook/ads/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/InstreamVideoAdView;->getController()Lcom/facebook/ads/internal/DisplayAdController;
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

    iput-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-direct {p0}, Lcom/facebook/ads/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot present null view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0, p1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-virtual {v0}, Lcom/facebook/ads/InstreamVideoAdView;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v1}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/InstreamVideoAdView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->b(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/DisplayAdController;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    goto :goto_0
.end method

.method public a(Lcom/facebook/ads/internal/b;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/b;->b()Lcom/facebook/ads/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/InstreamVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdVideoComplete(Lcom/facebook/ads/Ad;)V

    goto :goto_0
.end method
