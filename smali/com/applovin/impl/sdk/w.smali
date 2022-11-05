.class Lcom/applovin/impl/sdk/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/ck;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/bt;

.field final synthetic b:Lcom/applovin/impl/sdk/EventServiceImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/EventServiceImpl;Lcom/applovin/impl/sdk/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/EventServiceImpl;

    iput-object p2, p0, Lcom/applovin/impl/sdk/w;->a:Lcom/applovin/impl/sdk/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/t;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/EventServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/sdk/w;->a:Lcom/applovin/impl/sdk/bt;

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/EventServiceImpl;Lcom/applovin/impl/sdk/bt;Lcom/applovin/impl/sdk/t;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {v1}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/EventServiceImpl;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getPersistentPostbackManager()Lcom/applovin/impl/sdk/bn;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/w;->a:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/bt;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/bn;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {v1}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/EventServiceImpl;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "EventServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to track event due to failure to convert event parameters into JSONObject for event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/w;->a:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
