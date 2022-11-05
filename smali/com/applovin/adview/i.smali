.class Lcom/applovin/adview/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# instance fields
.field final synthetic a:Lcom/applovin/adview/AppLovinInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/i;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v1, p0, Lcom/applovin/adview/i;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-static {v1, v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/impl/sdk/AppLovinAdImpl;)Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iget-object v0, p0, Lcom/applovin/adview/i;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->y(Lcom/applovin/adview/AppLovinInterstitialActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/i;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0, p1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->b(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/i;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0, p1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/adview/AppLovinInterstitialActivity;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method
