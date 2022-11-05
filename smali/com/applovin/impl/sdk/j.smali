.class Lcom/applovin/impl/sdk/j;
.super Lcom/applovin/impl/sdk/bw;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private final b:Lcom/applovin/sdk/AppLovinAdSize;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    const-string v0, "UpdateAdTask"

    invoke-static {p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/bw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/sdk/AppLovinAdSize;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;)Ljava/util/Map;

    move-result-object v0

    sget-object v3, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v3, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/i;

    iget-object v4, v0, Lcom/applovin/impl/sdk/i;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-object v5, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-static {v3, v5}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v5

    iget-object v3, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-static {v3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->e(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;)Z

    move-result v6

    invoke-static {v0}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/i;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/applovin/impl/sdk/i;->d:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    :goto_1
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v6, :cond_0

    iget-boolean v1, v0, Lcom/applovin/impl/sdk/i;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/applovin/impl/sdk/i;->e:Z

    iget-object v1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/sdk/AppLovinAdSize;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    new-instance v5, Lcom/applovin/impl/sdk/h;

    iget-object v6, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v0, v7}, Lcom/applovin/impl/sdk/h;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/e;)V

    invoke-static {v1, v2, v3, v5}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    :cond_0
    monitor-exit v4

    return-void

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
