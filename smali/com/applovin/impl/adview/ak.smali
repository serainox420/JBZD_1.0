.class Lcom/applovin/impl/adview/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:Lcom/applovin/impl/adview/ah;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ah;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ak;->b:Lcom/applovin/impl/adview/ah;

    iput-object p2, p0, Lcom/applovin/impl/adview/ak;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/ak;->b:Lcom/applovin/impl/adview/ah;

    invoke-static {v0}, Lcom/applovin/impl/adview/ah;->a(Lcom/applovin/impl/adview/ah;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/ak;->b:Lcom/applovin/impl/adview/ah;

    invoke-static {v0}, Lcom/applovin/impl/adview/ah;->a(Lcom/applovin/impl/adview/ah;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/ak;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method
