.class Lcom/applovin/adview/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/adview/AppLovinInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/n;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/applovin/adview/n;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->k(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v3, "AppLovinInterstitialActivity"

    const-string v4, "Video view tapped!"

    invoke-interface {v0, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/adview/n;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->l(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/sdk/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/n;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->m(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/n;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->m(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/s;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/n;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->m(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/s;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_2

    move v3, v2

    :goto_1
    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {v4, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/applovin/adview/o;

    invoke-direct {v1, p0, v0}, Lcom/applovin/adview/o;-><init>(Lcom/applovin/adview/n;Z)V

    invoke-virtual {v4, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/applovin/adview/n;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->m(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/s;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/applovin/impl/adview/s;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
