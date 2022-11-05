.class Lcom/facebook/ads/internal/util/ad$9;
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
        "Lcom/facebook/ads/internal/view/d/a/u;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/util/ad;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/util/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/util/ad$9;->a:Lcom/facebook/ads/internal/util/ad;

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
            "Lcom/facebook/ads/internal/view/d/a/u;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/d/a/u;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/d/a/u;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/util/ad$9;->a(Lcom/facebook/ads/internal/view/d/a/u;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/u;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/util/ad$9;->a:Lcom/facebook/ads/internal/util/ad;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/ad;->c()V

    return-void
.end method
