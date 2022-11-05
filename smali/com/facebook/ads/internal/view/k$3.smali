.class Lcom/facebook/ads/internal/view/k$3;
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
        "Lcom/facebook/ads/internal/view/d/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/k$3;->a:Lcom/facebook/ads/internal/view/k;

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

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/k$3;->a(Lcom/facebook/ads/internal/view/d/a/d;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/d;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$3;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->c(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/view/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$3;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->c(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/view/d$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/j;->d:Lcom/facebook/ads/internal/j;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/d$a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$3;->a:Lcom/facebook/ads/internal/view/k;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/k;->i()V

    return-void
.end method
