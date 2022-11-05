.class final Lcom/revmob/ads/banner/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/revmob/ads/banner/RevMobBanner;


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/RevMobBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/banner/f;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/revmob/ads/banner/f;->a:Lcom/revmob/ads/banner/RevMobBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$002(Lcom/revmob/ads/banner/RevMobBanner;Z)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/revmob/ads/banner/f;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$100(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
