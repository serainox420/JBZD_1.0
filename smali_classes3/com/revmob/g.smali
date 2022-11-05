.class final Lcom/revmob/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/revmob/FullscreenActivity;


# direct methods
.method constructor <init>(Lcom/revmob/FullscreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/g;->a:Lcom/revmob/FullscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/revmob/g;->a:Lcom/revmob/FullscreenActivity;

    iget-object v1, v0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/revmob/g;->a:Lcom/revmob/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/FullscreenActivity;->a:Lcom/revmob/ads/interstitial/b/g;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/revmob/g;->a:Lcom/revmob/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/FullscreenActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/revmob/g;->a:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/FullscreenActivity;->finish()V

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
