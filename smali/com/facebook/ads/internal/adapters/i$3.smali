.class Lcom/facebook/ads/internal/adapters/i$3;
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
        "Lcom/facebook/ads/internal/view/d/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/i;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/i$3;->a:Lcom/facebook/ads/internal/adapters/i;

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
            "Lcom/facebook/ads/internal/view/d/a/d;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/d/a/d;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/d/a/d;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/adapters/i$3;->a(Lcom/facebook/ads/internal/view/d/a/d;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/d;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$3;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/i;->a(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i$3;->a:Lcom/facebook/ads/internal/adapters/i;

    sget-object v2, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/a/a;->a(Lcom/facebook/ads/internal/adapters/r;Lcom/facebook/ads/AdError;)V

    return-void
.end method
