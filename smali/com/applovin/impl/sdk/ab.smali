.class Lcom/applovin/impl/sdk/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/aa;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ab;->a:Lcom/applovin/impl/sdk/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userDeclinedToViewAd(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ab;->a:Lcom/applovin/impl/sdk/aa;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aa;->d(Lcom/applovin/impl/sdk/aa;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    const-string v2, "User declined to view"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/ab;->a:Lcom/applovin/impl/sdk/aa;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aa;->d(Lcom/applovin/impl/sdk/aa;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User over quota: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/ab;->a:Lcom/applovin/impl/sdk/aa;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aa;->d(Lcom/applovin/impl/sdk/aa;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reward rejected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/ab;->a:Lcom/applovin/impl/sdk/aa;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aa;->d(Lcom/applovin/impl/sdk/aa;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reward validated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/ab;->a:Lcom/applovin/impl/sdk/aa;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aa;->d(Lcom/applovin/impl/sdk/aa;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reward validation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
