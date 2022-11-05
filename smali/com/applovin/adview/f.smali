.class Lcom/applovin/adview/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/adview/AppLovinInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/f;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/applovin/adview/f;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->u(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/f;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->p(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/f;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/adview/AppLovinInterstitialActivity;Z)Z

    iget-object v0, p0, Lcom/applovin/adview/f;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->p(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/u;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v1, p0, Lcom/applovin/adview/f;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->l(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/sdk/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cb;->e()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/applovin/adview/f;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->p(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/adview/u;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/applovin/adview/f;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->s(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/f;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->v(Lcom/applovin/adview/AppLovinInterstitialActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/f;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->v(Lcom/applovin/adview/AppLovinInterstitialActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/adview/f;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->v(Lcom/applovin/adview/AppLovinInterstitialActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/adview/f;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "AppLovinInterstitialActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to show skip button: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
