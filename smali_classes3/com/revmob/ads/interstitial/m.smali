.class final Lcom/revmob/ads/interstitial/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/revmob/ads/interstitial/a;


# direct methods
.method constructor <init>(Lcom/revmob/ads/interstitial/a;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/interstitial/m;->a:Lcom/revmob/ads/interstitial/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/revmob/ads/interstitial/m;->a:Lcom/revmob/ads/interstitial/a;

    invoke-static {v0}, Lcom/revmob/ads/interstitial/a;->f(Lcom/revmob/ads/interstitial/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v3, Lcom/revmob/ads/interstitial/n;

    invoke-direct {v3, v0}, Lcom/revmob/ads/interstitial/n;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    return-void
.end method
