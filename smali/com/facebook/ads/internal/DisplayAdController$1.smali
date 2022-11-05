.class Lcom/facebook/ads/internal/DisplayAdController$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/server/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/server/e;

.field final synthetic b:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/server/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$1;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iput-object p2, p0, Lcom/facebook/ads/internal/DisplayAdController$1;->a:Lcom/facebook/ads/internal/server/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$1;->a:Lcom/facebook/ads/internal/server/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/server/e;->b()Lcom/facebook/ads/internal/f/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/d;->a()Lcom/facebook/ads/internal/f/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid placement in response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$1;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/f/d;)Lcom/facebook/ads/internal/f/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$1;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->c(Lcom/facebook/ads/internal/DisplayAdController;)V

    return-void
.end method
