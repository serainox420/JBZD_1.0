.class public Lcom/applovin/impl/sdk/dc;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/applovin/impl/sdk/dc;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/dc;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/dc;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/dc;->a:Lcom/applovin/impl/sdk/dc;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/dc;->c:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/dc;->b:Ljava/lang/Object;

    return-void
.end method

.method static a()Lcom/applovin/impl/sdk/dc;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/dc;->a:Lcom/applovin/impl/sdk/dc;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/applovin/impl/sdk/de;
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/dc;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/dc;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/de;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Ljava/lang/String;JLjava/lang/String;Z)V
    .locals 8

    new-instance v1, Lcom/applovin/impl/sdk/de;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p4

    move-wide v4, p2

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/sdk/de;-><init>(Lcom/applovin/impl/sdk/dc;Ljava/lang/String;JZLcom/applovin/impl/sdk/dd;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/dc;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/dc;->c:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
