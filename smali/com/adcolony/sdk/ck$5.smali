.class Lcom/adcolony/sdk/ck$5;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ck;->e()V
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
    .line 350
    iput-object p1, p0, Lcom/adcolony/sdk/ck$5;->a:Lcom/adcolony/sdk/ck;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ck$5;->a:Lcom/adcolony/sdk/ck;

    invoke-static {v0}, Lcom/adcolony/sdk/ck;->a(Lcom/adcolony/sdk/ck;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 355
    const-string v0, "STATS"

    const/4 v1, 0x0

    .line 356
    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_1

    .line 359
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 360
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 361
    iget-object v2, p0, Lcom/adcolony/sdk/ck$5;->a:Lcom/adcolony/sdk/ck;

    invoke-static {v2}, Lcom/adcolony/sdk/ck;->a(Lcom/adcolony/sdk/ck;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 363
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/ck$5;->a:Lcom/adcolony/sdk/ck;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/adcolony/sdk/ck;->a(J)V

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/adcolony/sdk/ck$5;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    monitor-exit p0

    return-void
.end method
