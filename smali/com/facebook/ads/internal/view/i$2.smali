.class Lcom/facebook/ads/internal/view/i$2;
.super Lcom/facebook/ads/internal/view/d/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i$2;->a:Lcom/facebook/ads/internal/view/i;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/d/a/h;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i$2;->a(Lcom/facebook/ads/internal/view/d/a/h;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/h;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$2;->a:Lcom/facebook/ads/internal/view/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/MediaViewListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$2;->a:Lcom/facebook/ads/internal/view/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/MediaViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i$2;->a:Lcom/facebook/ads/internal/view/i;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/i;->b(Lcom/facebook/ads/internal/view/i;)Lcom/facebook/ads/MediaView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/MediaViewListener;->onPause(Lcom/facebook/ads/MediaView;)V

    goto :goto_0
.end method
