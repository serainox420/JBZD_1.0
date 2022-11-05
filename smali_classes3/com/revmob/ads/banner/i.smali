.class final Lcom/revmob/ads/banner/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/revmob/ads/banner/RevMobBanner;


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/RevMobBanner;Z)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/banner/i;->b:Lcom/revmob/ads/banner/RevMobBanner;

    iput-boolean p2, p0, Lcom/revmob/ads/banner/i;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/revmob/ads/banner/i;->b:Lcom/revmob/ads/banner/RevMobBanner;

    iget-boolean v1, p0, Lcom/revmob/ads/banner/i;->a:Z

    invoke-static {v0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$1200(Lcom/revmob/ads/banner/RevMobBanner;Z)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
