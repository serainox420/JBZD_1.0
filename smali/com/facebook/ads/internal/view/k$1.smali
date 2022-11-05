.class Lcom/facebook/ads/internal/view/k$1;
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
        "Lcom/facebook/ads/internal/view/d/a/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/k$1;->a:Lcom/facebook/ads/internal/view/k;

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
            "Lcom/facebook/ads/internal/view/d/a/q;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/d/a/q;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/d/a/q;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/k$1;->a(Lcom/facebook/ads/internal/view/d/a/q;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/q;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$1;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->b(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/util/ah;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/d/a/q;->b()Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/k$1;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/k;->a(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/view/m;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/d/a/q;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/ads/internal/util/ah;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
