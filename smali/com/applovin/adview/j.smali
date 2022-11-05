.class Lcom/applovin/adview/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/adview/AppLovinInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/j;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/j;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->z(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/impl/adview/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ah;->e()Lcom/applovin/sdk/AppLovinAdClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdClickListener;->adClicked(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method
