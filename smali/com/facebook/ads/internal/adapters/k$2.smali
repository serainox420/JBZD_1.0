.class Lcom/facebook/ads/internal/adapters/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/adapters/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/k$2;->a:Lcom/facebook/ads/internal/adapters/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptBackButton()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k$2;->a:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/k;->b(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/view/d/b/h;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k$2;->a:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/k;->b(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/view/d/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/d/b/h;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
