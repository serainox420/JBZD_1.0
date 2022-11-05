.class Lcom/applovin/impl/adview/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/applovin/impl/adview/ah;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ah;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ai;->b:Lcom/applovin/impl/adview/ah;

    iput-object p2, p0, Lcom/applovin/impl/adview/ai;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/ai;->b:Lcom/applovin/impl/adview/ah;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/ah;->a(Lcom/applovin/impl/adview/ah;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ai;->b:Lcom/applovin/impl/adview/ah;

    iget-object v1, p0, Lcom/applovin/impl/adview/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/adview/ah;->showAndRender(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ai;->b:Lcom/applovin/impl/adview/ah;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/ah;->a(Lcom/applovin/impl/adview/ah;I)V

    return-void
.end method
