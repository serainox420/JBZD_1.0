.class Lcom/facebook/ads/internal/view/i$3;
.super Lcom/facebook/ads/internal/view/d/a/m;


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

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i$3;->a:Lcom/facebook/ads/internal/view/i;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/d/a/l;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/i$3;->a(Lcom/facebook/ads/internal/view/d/a/l;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/l;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$3;->a:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$3;->a:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i;->d()V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$3;->a:Lcom/facebook/ads/internal/view/i;

    new-instance v1, Lcom/facebook/ads/internal/view/i$3$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/i$3$1;-><init>(Lcom/facebook/ads/internal/view/i$3;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
