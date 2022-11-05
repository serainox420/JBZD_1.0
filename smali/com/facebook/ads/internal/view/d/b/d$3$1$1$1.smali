.class Lcom/facebook/ads/internal/view/d/b/d$3$1$1$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/d/b/d$3$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d/b/d$3$1$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/b/d$3$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/d$3$1$1$1;->a:Lcom/facebook/ads/internal/view/d/b/d$3$1$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/d$3$1$1$1;->a:Lcom/facebook/ads/internal/view/d/b/d$3$1$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/d/b/d$3$1$1;->a:Lcom/facebook/ads/internal/view/d/b/d$3$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/d/b/d$3$1;->a:Lcom/facebook/ads/internal/view/d/b/d$3;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/d/b/d$3;->a:Lcom/facebook/ads/internal/view/d/b/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/d/b/d;->setVisibility(I)V

    return-void
.end method
