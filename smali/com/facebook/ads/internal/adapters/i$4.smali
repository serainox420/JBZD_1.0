.class Lcom/facebook/ads/internal/adapters/i$4;
.super Lcom/facebook/ads/internal/g/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/adapters/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/g/s",
        "<",
        "Lcom/facebook/ads/internal/view/d/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/i;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

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
            "Lcom/facebook/ads/internal/view/d/a/a;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/d/a/a;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/d/a/a;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/adapters/i$4;->a(Lcom/facebook/ads/internal/view/d/a/a;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/a;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/i;->a(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/i;->a(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-interface {v0, v1}, Lcom/facebook/ads/a/a;->b(Lcom/facebook/ads/internal/adapters/r;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/i;->b(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/g/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/i;->c(Lcom/facebook/ads/internal/adapters/i;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/i;->b(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/g/f;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/i;->c(Lcom/facebook/ads/internal/adapters/i;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/g/f;->c(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/i;->b(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/g/f;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/util/b;->a:Lcom/facebook/ads/internal/util/b;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/i;->d(Lcom/facebook/ads/internal/adapters/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/util/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/g/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
