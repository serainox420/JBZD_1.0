.class Lcom/applovin/impl/sdk/cf;
.super Lcom/applovin/impl/sdk/cy;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/applovin/impl/sdk/ce;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ce;Ljava/lang/String;Lcom/applovin/impl/sdk/bz;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/cf;->b:Lcom/applovin/impl/sdk/ce;

    iput-object p5, p0, Lcom/applovin/impl/sdk/cf;->a:Lorg/json/JSONObject;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/cy;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/bz;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/q;->a(ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/o;Lcom/applovin/impl/sdk/p;)V
    .locals 2

    const-string v0, "device"

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/q;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cf;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cf;->b:Lcom/applovin/impl/sdk/ce;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ce;->a(Lorg/json/JSONObject;)V

    return-void
.end method
