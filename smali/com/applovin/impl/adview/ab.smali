.class Lcom/applovin/impl/adview/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/applovin/impl/adview/x;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/x;Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/impl/adview/x;

    iput-object p2, p0, Lcom/applovin/impl/adview/ab;->a:Lcom/applovin/sdk/AppLovinAd;

    iput-object p3, p0, Lcom/applovin/impl/adview/ab;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/impl/adview/x;

    invoke-static {v0}, Lcom/applovin/impl/adview/x;->f(Lcom/applovin/impl/adview/x;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/ab;->a:Lcom/applovin/sdk/AppLovinAd;

    iget-object v2, p0, Lcom/applovin/impl/adview/ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/impl/adview/x;

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->a:Lcom/applovin/sdk/AppLovinAd;

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getCloseStyle()Lcom/applovin/impl/adview/v;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/applovin/impl/adview/x;->a(Lcom/applovin/impl/adview/x;Lcom/applovin/impl/adview/v;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->a:Lcom/applovin/sdk/AppLovinAd;

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getCloseDelay()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/impl/adview/x;

    invoke-static {v0}, Lcom/applovin/impl/sdk/di;->c(F)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/applovin/impl/adview/x;->a(Lcom/applovin/impl/adview/x;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/impl/adview/x;

    invoke-static {v0}, Lcom/applovin/impl/adview/x;->g(Lcom/applovin/impl/adview/x;)Lcom/applovin/impl/adview/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/u;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ab;->c:Lcom/applovin/impl/adview/x;

    invoke-static {v0}, Lcom/applovin/impl/adview/x;->g(Lcom/applovin/impl/adview/x;)Lcom/applovin/impl/adview/u;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/u;->setClickable(Z)V

    goto :goto_0
.end method
