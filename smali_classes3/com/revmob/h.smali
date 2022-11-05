.class final Lcom/revmob/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/revmob/RevMob;->access$000()Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/revmob/RevMob;->access$000()Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/ads/banner/RevMobBanner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/revmob/RevMob;->access$000()Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/ads/banner/RevMobBanner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {}, Lcom/revmob/RevMob;->access$000()Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-static {}, Lcom/revmob/RevMob;->access$100()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/revmob/RevMob;->access$102(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/revmob/RevMob;->access$002(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/ads/banner/RevMobBanner;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/revmob/RevMob;->access$202(Landroid/app/Activity;)Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "releaseBanner"

    invoke-static {v0, v3, v1, v3, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
