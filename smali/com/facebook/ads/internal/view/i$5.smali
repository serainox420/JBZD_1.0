.class Lcom/facebook/ads/internal/view/i$5;
.super Lcom/facebook/ads/internal/j/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/i;-><init>(Landroid/content/Context;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/internal/g/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i$5;->a:Lcom/facebook/ads/internal/view/i;

    invoke-direct {p0}, Lcom/facebook/ads/internal/j/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$5;->a:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$5;->a:Lcom/facebook/ads/internal/view/i;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/i;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d/c/c;->getTargetState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/d/c/d;->d:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$5;->a:Lcom/facebook/ads/internal/view/i;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/i;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d/c/c;->getTargetState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$5;->a:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i;->d()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i$5;->a:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i;->e()V

    return-void
.end method
