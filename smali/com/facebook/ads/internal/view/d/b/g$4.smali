.class Lcom/facebook/ads/internal/view/d/b/g$4;
.super Lcom/facebook/ads/internal/view/d/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/d/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d/b/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/g$4;->a:Lcom/facebook/ads/internal/view/d/b/g;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/d/a/b;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/d/b/g$4;->a(Lcom/facebook/ads/internal/view/d/a/b;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/b;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/g$4;->a:Lcom/facebook/ads/internal/view/d/b/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b/g;->a(Lcom/facebook/ads/internal/view/d/b/g;)Lcom/facebook/ads/internal/view/d/b/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/d/b/l;->setChecked(Z)V

    return-void
.end method
