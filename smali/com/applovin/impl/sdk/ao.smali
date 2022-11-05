.class Lcom/applovin/impl/sdk/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:I

.field final synthetic c:Lcom/applovin/impl/sdk/af;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/af;Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ao;->c:Lcom/applovin/impl/sdk/af;

    iput-object p2, p0, Lcom/applovin/impl/sdk/ao;->a:Lcom/applovin/sdk/AppLovinAd;

    iput p3, p0, Lcom/applovin/impl/sdk/ao;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ao;->c:Lcom/applovin/impl/sdk/af;

    invoke-static {v0}, Lcom/applovin/impl/sdk/af;->a(Lcom/applovin/impl/sdk/af;)Lcom/applovin/sdk/AppLovinAdRewardListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ao;->a:Lcom/applovin/sdk/AppLovinAd;

    iget v2, p0, Lcom/applovin/impl/sdk/ao;->b:I

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V

    return-void
.end method
