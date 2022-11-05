.class Lcom/adcolony/sdk/ck$4;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ck;->b(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcom/adcolony/sdk/ck;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ck;Lcom/adcolony/sdk/bq;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/adcolony/sdk/ck$4;->b:Lcom/adcolony/sdk/ck;

    iput-object p3, p0, Lcom/adcolony/sdk/ck$4;->a:Ljava/util/Collection;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 318
    monitor-enter p0

    :try_start_0
    const-string v0, "STATS"

    const/4 v1, 0x0

    .line 319
    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v4

    .line 320
    if-eqz v4, :cond_4

    .line 321
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 324
    iget-object v0, p0, Lcom/adcolony/sdk/ck$4;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 325
    iget-object v0, p0, Lcom/adcolony/sdk/ck$4;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 326
    const-string v2, "stat_transaction_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 328
    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 329
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 331
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v2, v3

    .line 333
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 334
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 335
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 333
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 341
    :cond_3
    const-string v0, "STATS"

    invoke-static {v0, v4}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 343
    :cond_4
    invoke-virtual {p0}, Lcom/adcolony/sdk/ck$4;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    monitor-exit p0

    return-void
.end method
