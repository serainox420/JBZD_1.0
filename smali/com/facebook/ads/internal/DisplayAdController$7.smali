.class Lcom/facebook/ads/internal/DisplayAdController$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/x;Lcom/facebook/ads/internal/f/d;Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a;->g()V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/x;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/a;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/x;Lcom/facebook/ads/AdError;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    new-instance v1, Lcom/facebook/ads/internal/b;

    sget-object v2, Lcom/facebook/ads/internal/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/b;-><init>(Lcom/facebook/ads/internal/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/a;->a(Lcom/facebook/ads/internal/b;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->c(Lcom/facebook/ads/internal/DisplayAdController;)V

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/adapters/x;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a;->a()V

    return-void
.end method

.method public c(Lcom/facebook/ads/internal/adapters/x;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a;->b()V

    return-void
.end method

.method public d(Lcom/facebook/ads/internal/adapters/x;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a;->f()V

    return-void
.end method

.method public e(Lcom/facebook/ads/internal/adapters/x;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a;->h()V

    return-void
.end method

.method public f(Lcom/facebook/ads/internal/adapters/x;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a;->i()V

    return-void
.end method
