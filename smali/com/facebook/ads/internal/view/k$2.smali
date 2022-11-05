.class Lcom/facebook/ads/internal/view/k$2;
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
        "Lcom/facebook/ads/internal/view/d/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/k$2;->a:Lcom/facebook/ads/internal/view/k;

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
            "Lcom/facebook/ads/internal/view/d/a/b;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/d/a/b;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/d/a/b;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/k$2;->a(Lcom/facebook/ads/internal/view/d/a/b;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/b;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$2;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->c(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/view/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$2;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->c(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/view/d$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/j;->a:Lcom/facebook/ads/internal/j;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/internal/view/d$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/g/q;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$2;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->d(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/util/w;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$2;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->d(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/util/w;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k$2;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/k;->a(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/view/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/w;->b(I)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$2;->a:Lcom/facebook/ads/internal/view/k;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/k;->i()V

    return-void
.end method
