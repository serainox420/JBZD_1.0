.class Lcom/facebook/ads/internal/view/d/b/k$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/d/b/k;->a(Lcom/facebook/ads/internal/view/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/m;

.field final synthetic b:Lcom/facebook/ads/internal/view/d/b/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/b/k;Lcom/facebook/ads/internal/view/m;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/k$3;->b:Lcom/facebook/ads/internal/view/d/b/k;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/d/b/k$3;->a:Lcom/facebook/ads/internal/view/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/k$3;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->getState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/internal/view/d/c/d;->c:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/k$3;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->d()V

    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/k$3;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->getState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/k$3;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->d()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/k$3;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->getState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/internal/view/d/c/d;->d:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/k$3;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->e()V

    goto :goto_0
.end method
