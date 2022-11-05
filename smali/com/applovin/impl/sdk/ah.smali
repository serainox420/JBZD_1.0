.class Lcom/applovin/impl/sdk/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:Lcom/applovin/impl/sdk/af;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/af;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ah;->b:Lcom/applovin/impl/sdk/af;

    iput-object p2, p0, Lcom/applovin/impl/sdk/ah;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ah;->b:Lcom/applovin/impl/sdk/af;

    invoke-static {v0}, Lcom/applovin/impl/sdk/af;->b(Lcom/applovin/impl/sdk/af;)Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ah;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdDisplayListener;->adHidden(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method
