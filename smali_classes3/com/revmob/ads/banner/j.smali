.class final Lcom/revmob/ads/banner/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/revmob/ads/banner/RevMobBanner;


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/RevMobBanner;Z)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/banner/j;->b:Lcom/revmob/ads/banner/RevMobBanner;

    iput-boolean p2, p0, Lcom/revmob/ads/banner/j;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/revmob/ads/banner/j;->b:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$100(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/banner/j;->b:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$100(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/revmob/ads/banner/j;->b:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$100(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-boolean v0, p0, Lcom/revmob/ads/banner/j;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/banner/j;->b:Lcom/revmob/ads/banner/RevMobBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$102(Lcom/revmob/ads/banner/RevMobBanner;Landroid/view/View;)Landroid/view/View;

    :cond_1
    return-void
.end method
