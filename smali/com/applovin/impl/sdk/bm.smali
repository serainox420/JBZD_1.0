.class public Lcom/applovin/impl/sdk/bm;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/applovin/impl/sdk/bm;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/bm;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/bm;->b:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/bm;->c:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a()Lcom/applovin/impl/sdk/bm;
    .locals 2

    const-class v1, Lcom/applovin/impl/sdk/bm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/applovin/impl/sdk/bm;->d:Lcom/applovin/impl/sdk/bm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/applovin/impl/sdk/bm;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/bm;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/bm;->d:Lcom/applovin/impl/sdk/bm;

    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/bm;->d:Lcom/applovin/impl/sdk/bm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/applovin/sdk/AppLovinAd;)Ljava/util/Map;
    .locals 2

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bm;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bm;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V
    .locals 2

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bm;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bm;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bm;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bm;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    .locals 2

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bm;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bm;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
