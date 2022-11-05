.class final Lcom/revmob/ads/banner/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Lcom/revmob/ads/banner/RevMobBanner;


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/RevMobBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/banner/e;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/e;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$100(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/e;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$100(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/e;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/RevMobBanner;->reportShowOrHidden()V

    :cond_0
    return-void
.end method
