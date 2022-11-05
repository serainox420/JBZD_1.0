.class Lcom/adcolony/sdk/ck$3;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ck;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ck;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ck;Lcom/adcolony/sdk/bq;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/adcolony/sdk/ck$3;->a:Lcom/adcolony/sdk/ck;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    .prologue
    .line 280
    monitor-enter p0

    .line 281
    :try_start_0
    const-string v0, "STATS"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    .line 282
    if-eqz v2, :cond_1

    .line 283
    iget-object v0, p0, Lcom/adcolony/sdk/ck$3;->a:Lcom/adcolony/sdk/ck;

    invoke-static {v0}, Lcom/adcolony/sdk/ck;->a(Lcom/adcolony/sdk/ck;)Ljava/util/Queue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/adcolony/sdk/ck$3;->a:Lcom/adcolony/sdk/ck;

    invoke-static {v0}, Lcom/adcolony/sdk/ck;->a(Lcom/adcolony/sdk/ck;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 285
    const-string v1, "stat_transaction_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 289
    :cond_0
    :try_start_1
    const-string v0, "STATS"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/adcolony/sdk/ck$3;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    monitor-exit p0

    return-void
.end method
