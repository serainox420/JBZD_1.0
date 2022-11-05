.class Lcom/facebook/ads/internal/view/d/b/d$3$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/d/b/d$3;->a(Lcom/facebook/ads/internal/view/d/a/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d/b/d$3;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/b/d$3;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/d$3$1;->a:Lcom/facebook/ads/internal/view/d/b/d$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/d$3$1;->a:Lcom/facebook/ads/internal/view/d/b/d$3;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/d/b/d$3;->a:Lcom/facebook/ads/internal/view/d/b/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b/d;->a(Lcom/facebook/ads/internal/view/d/b/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/view/d/b/d$3$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/d/b/d$3$1$1;-><init>(Lcom/facebook/ads/internal/view/d/b/d$3$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
