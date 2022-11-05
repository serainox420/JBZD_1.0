.class Lcom/applovin/impl/sdk/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinPostbackListener;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinPostbackListener;

.field final synthetic b:Lcom/applovin/impl/sdk/PostbackServiceImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/PostbackServiceImpl;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bq;->b:Lcom/applovin/impl/sdk/PostbackServiceImpl;

    iput-object p2, p0, Lcom/applovin/impl/sdk/bq;->a:Lcom/applovin/sdk/AppLovinPostbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostbackFailure(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/bq;->b:Lcom/applovin/impl/sdk/PostbackServiceImpl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/PostbackServiceImpl;->a(Lcom/applovin/impl/sdk/PostbackServiceImpl;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "PostbackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dispatch postback to URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bq;->a:Lcom/applovin/sdk/AppLovinPostbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bq;->a:Lcom/applovin/sdk/AppLovinPostbackListener;

    invoke-interface {v0, p1, p2}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onPostbackSuccess(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/bq;->b:Lcom/applovin/impl/sdk/PostbackServiceImpl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/PostbackServiceImpl;->a(Lcom/applovin/impl/sdk/PostbackServiceImpl;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "PostbackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully dispatched postback to URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bq;->a:Lcom/applovin/sdk/AppLovinPostbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bq;->a:Lcom/applovin/sdk/AppLovinPostbackListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
