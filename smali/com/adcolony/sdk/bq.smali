.class Lcom/adcolony/sdk/bq;
.super Lcom/adcolony/sdk/cc;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adcolony/sdk/bp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cd;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/cc;-><init>(Lcom/adcolony/sdk/cd;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bq;->a:Ljava/util/ArrayList;

    .line 10
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v1, p0, Lcom/adcolony/sdk/bq;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bq;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    iget-object v0, p0, Lcom/adcolony/sdk/bq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 25
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 28
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bp;

    .line 29
    if-eqz v0, :cond_1

    .line 34
    :try_start_1
    invoke-virtual {v0}, Lcom/adcolony/sdk/bp;->a()V

    .line 36
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    :try_start_2
    invoke-virtual {v0}, Lcom/adcolony/sdk/bp;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 40
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 40
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 46
    :cond_2
    return-void
.end method

.method public a(Lcom/adcolony/sdk/bp;)V
    .locals 2

    .prologue
    .line 13
    iget-object v1, p0, Lcom/adcolony/sdk/bq;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p0}, Lcom/adcolony/sdk/bq;->c()V

    .line 16
    monitor-exit v1

    .line 17
    return-void

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/adcolony/sdk/bq;->a()V

    .line 51
    return-void
.end method
