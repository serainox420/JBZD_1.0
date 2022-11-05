.class Lcom/facebook/ads/internal/util/ad$7;
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
        "Lcom/facebook/ads/internal/view/d/a/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/util/ad;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/util/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/util/ad$7;->a:Lcom/facebook/ads/internal/util/ad;

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
            "Lcom/facebook/ads/internal/view/d/a/o;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/d/a/o;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/d/a/o;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/util/ad$7;->a(Lcom/facebook/ads/internal/view/d/a/o;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/o;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/util/ad$7;->a:Lcom/facebook/ads/internal/util/ad;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/d/a/o;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/d/a/o;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/util/ad;->a(II)V

    return-void
.end method
