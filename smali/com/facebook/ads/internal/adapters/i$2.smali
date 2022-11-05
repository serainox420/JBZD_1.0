.class Lcom/facebook/ads/internal/adapters/i$2;
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
        "Lcom/facebook/ads/internal/view/d/a/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/i;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/i$2;->a:Lcom/facebook/ads/internal/adapters/i;

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
            "Lcom/facebook/ads/internal/view/d/a/l;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/d/a/l;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/d/a/l;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/adapters/i$2;->a(Lcom/facebook/ads/internal/view/d/a/l;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/l;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$2;->a:Lcom/facebook/ads/internal/adapters/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/i;->a(Lcom/facebook/ads/internal/adapters/i;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$2;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/i;->a(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i$2;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-interface {v0, v1}, Lcom/facebook/ads/a/a;->a(Lcom/facebook/ads/internal/adapters/r;)V

    return-void
.end method
