.class Lcom/facebook/ads/internal/view/k$5;
.super Lcom/facebook/ads/internal/g/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/k;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/g/s",
        "<",
        "Lcom/facebook/ads/internal/view/d/a/n;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/k$5;->a:Lcom/facebook/ads/internal/view/k;

    invoke-direct {p0}, Lcom/facebook/ads/internal/g/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/n;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/d/a/n;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/d/a/n;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/k$5;->a(Lcom/facebook/ads/internal/view/d/a/n;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/n;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$5;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->a(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/view/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->getState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/d/c/d;->b:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$5;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->d(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/util/w;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$5;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->d(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/util/w;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k$5;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/k;->a(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/view/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/w;->a(I)V

    goto :goto_0
.end method
