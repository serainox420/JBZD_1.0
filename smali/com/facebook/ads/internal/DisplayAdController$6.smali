.class Lcom/facebook/ads/internal/DisplayAdController$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/r;Lcom/facebook/ads/internal/f/d;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/r;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/a;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/r;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/internal/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/r;Lcom/facebook/ads/AdError;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    new-instance v1, Lcom/facebook/ads/internal/b;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/b;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/a;->a(Lcom/facebook/ads/internal/b;)V

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/adapters/r;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a;->a()V

    return-void
.end method

.method public c(Lcom/facebook/ads/internal/adapters/r;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a;->b()V

    return-void
.end method

.method public d(Lcom/facebook/ads/internal/adapters/r;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a;->c()V

    return-void
.end method
