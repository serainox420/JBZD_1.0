.class Lcom/applovin/impl/adview/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/x;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/x;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/af;->a:Lcom/applovin/impl/adview/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/af;->a:Lcom/applovin/impl/adview/x;

    invoke-static {v0}, Lcom/applovin/impl/adview/x;->g(Lcom/applovin/impl/adview/x;)Lcom/applovin/impl/adview/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/u;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->a:Lcom/applovin/impl/adview/x;

    invoke-static {v0}, Lcom/applovin/impl/adview/x;->g(Lcom/applovin/impl/adview/x;)Lcom/applovin/impl/adview/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/u;->bringToFront()V

    new-instance v0, Lcom/applovin/impl/sdk/cb;

    iget-object v1, p0, Lcom/applovin/impl/adview/af;->a:Lcom/applovin/impl/adview/x;

    invoke-static {v1}, Lcom/applovin/impl/adview/x;->i(Lcom/applovin/impl/adview/x;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/cb;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->e()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->a:Lcom/applovin/impl/adview/x;

    invoke-static {v0}, Lcom/applovin/impl/adview/x;->g(Lcom/applovin/impl/adview/x;)Lcom/applovin/impl/adview/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/u;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->a:Lcom/applovin/impl/adview/x;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/x;->dismiss()V

    goto :goto_0
.end method
