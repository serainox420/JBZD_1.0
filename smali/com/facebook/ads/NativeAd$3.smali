.class Lcom/facebook/ads/NativeAd$3;
.super Lcom/facebook/ads/internal/j/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/NativeAd;


# direct methods
.method constructor <init>(Lcom/facebook/ads/NativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-direct {p0}, Lcom/facebook/ads/internal/j/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->g(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/util/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/ah;->a()V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->h(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->b()V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->i(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/adapters/u;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->h(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->h(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->b()V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/NativeAd;->a(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/j/a;)Lcom/facebook/ads/internal/j/a;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->i(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/adapters/u;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->j(Lcom/facebook/ads/NativeAd;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/u;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->i(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/adapters/u;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->k(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/NativeAdView$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/u;->a(Lcom/facebook/ads/NativeAdView$Type;)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->i(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/adapters/u;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->l(Lcom/facebook/ads/NativeAd;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/u;->a(Z)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->i(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/adapters/u;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->m(Lcom/facebook/ads/NativeAd;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/u;->b(Z)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->i(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/adapters/u;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->n(Lcom/facebook/ads/NativeAd;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/u;->c(Z)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$3;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v0}, Lcom/facebook/ads/NativeAd;->i(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/adapters/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/u;->a()V

    goto :goto_0
.end method
