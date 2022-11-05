.class Lcom/facebook/ads/internal/util/ad$5;
.super Lcom/facebook/ads/internal/g/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/util/ad;
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
.field final synthetic a:Lcom/facebook/ads/internal/util/ad;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/util/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/util/ad$5;->a:Lcom/facebook/ads/internal/util/ad;

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

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/util/ad$5;->a(Lcom/facebook/ads/internal/view/d/a/n;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/n;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/util/ad$5;->a:Lcom/facebook/ads/internal/util/ad;

    iget-object v1, p0, Lcom/facebook/ads/internal/util/ad$5;->a:Lcom/facebook/ads/internal/util/ad;

    invoke-static {v1}, Lcom/facebook/ads/internal/util/ad;->b(Lcom/facebook/ads/internal/util/ad;)Lcom/facebook/ads/internal/view/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/ad;->a(I)V

    return-void
.end method
