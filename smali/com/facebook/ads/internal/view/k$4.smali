.class Lcom/facebook/ads/internal/view/k$4;
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
        "Lcom/facebook/ads/internal/view/d/a/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/k$4;->a:Lcom/facebook/ads/internal/view/k;

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

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/k$4;->a(Lcom/facebook/ads/internal/view/d/a/l;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/l;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$4;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->e(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$4;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->e(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->a()V

    :cond_0
    return-void
.end method
