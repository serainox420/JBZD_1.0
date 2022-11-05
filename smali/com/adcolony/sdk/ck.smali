.class Lcom/adcolony/sdk/ck;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/Semaphore;

.field private b:J

.field private c:J

.field private d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private g:Lcom/adcolony/sdk/bv;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/adcolony/sdk/ck;->a:Ljava/util/concurrent/Semaphore;

    .line 28
    iput-wide v2, p0, Lcom/adcolony/sdk/ck;->b:J

    .line 29
    iput-wide v2, p0, Lcom/adcolony/sdk/ck;->c:J

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/ck;->d:Ljava/util/Queue;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adcolony/sdk/ck;->e:Ljava/util/ArrayList;

    .line 32
    const-string v0, "STATS"

    iput-object v0, p0, Lcom/adcolony/sdk/ck;->f:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/adcolony/sdk/ck$1;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/ck$1;-><init>(Lcom/adcolony/sdk/ck;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ck;->g:Lcom/adcolony/sdk/bv;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/ck;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->d:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic b(Lcom/adcolony/sdk/ck;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method


# virtual methods
.method declared-synchronized a()I
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->d:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 76
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/ck;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 91
    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Stat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 97
    :cond_0
    const-string v1, "value"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 98
    if-nez v0, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stat value is not of type long"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 103
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method a(J)V
    .locals 7

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scheduleStatsUpdateFromNowMs was called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 244
    add-long v2, v0, p1

    .line 246
    iget-wide v4, p0, Lcom/adcolony/sdk/ck;->c:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    iget-wide v4, p0, Lcom/adcolony/sdk/ck;->c:J

    cmp-long v0, v4, v0

    if-gtz v0, :cond_1

    .line 247
    :cond_0
    iput-wide v2, p0, Lcom/adcolony/sdk/ck;->c:J

    .line 249
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aw()Lcom/adcolony/sdk/by;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ck;->g:Lcom/adcolony/sdk/bv;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;)V

    .line 250
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aw()Lcom/adcolony/sdk/by;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ck;->g:Lcom/adcolony/sdk/bv;

    invoke-virtual {v0, v1, p1, p2}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;J)V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 253
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught Exception->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cachedStats()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/ck;->e:Ljava/util/ArrayList;

    .line 58
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "making statsRefreshed callback"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aB()Lcom/adcolony/sdk/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bl;->c()V

    .line 65
    :cond_1
    if-eqz p1, :cond_2

    .line 66
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cachedStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "items, _statsList has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/ck;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cachedStats: null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->d:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/ck;->d:Ljava/util/Queue;

    goto :goto_0
.end method

.method a(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 269
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->p()I

    move-result v0

    int-to-long v0, v0

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 271
    if-nez p1, :cond_0

    iget-wide v4, p0, Lcom/adcolony/sdk/ck;->b:J

    sub-long v4, v2, v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Saving stats"

    invoke-static {v0, v1, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 274
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-ge v0, v6, :cond_2

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/ck$3;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    iget-object v1, v1, Lcom/adcolony/sdk/bz;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1}, Lcom/adcolony/sdk/ck$3;-><init>(Lcom/adcolony/sdk/ck;Lcom/adcolony/sdk/bq;)V

    .line 295
    iput-wide v2, p0, Lcom/adcolony/sdk/ck;->b:J

    goto :goto_0
.end method

.method a(Ljava/lang/String;J)Z
    .locals 2

    .prologue
    .line 481
    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adcolony/sdk/ck;->a(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method a(Ljava/lang/String;JI)Z
    .locals 2

    .prologue
    .line 121
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/adcolony/sdk/ck;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot queue a stat with a null name value"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stats are not available at this time."

    invoke-static {v0, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adcolony/sdk/ck;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stats are not currently available for this app."

    invoke-static {v0, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :cond_3
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    and-int/lit8 v0, p3, 0x70

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v2, v0

    .line 149
    :goto_1
    const/4 v5, 0x0

    .line 150
    const/4 v4, 0x0

    .line 153
    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    .line 155
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 157
    const-string v0, "ops"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 158
    const-string v0, "type"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 159
    const-string v0, "promo"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 160
    const/4 v0, 0x1

    :goto_3
    move v4, v0

    move v5, v3

    move-object v3, v1

    .line 163
    goto :goto_2

    .line 141
    :cond_4
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1

    .line 164
    :cond_5
    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .line 165
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Stat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 169
    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 172
    and-int/lit8 v0, p3, 0x6

    if-eqz v0, :cond_7

    .line 173
    if-nez v2, :cond_7

    .line 174
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zero value used for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stat command"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 182
    :cond_7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-static {}, Lcom/adcolony/sdk/co;->i()Ljava/lang/String;

    move-result-object v7

    .line 184
    const-string v0, ""

    .line 187
    invoke-static {}, Lcom/adcolony/sdk/co;->h()J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-nez v0, :cond_a

    .line 188
    const/4 v0, 0x0

    .line 189
    invoke-static {}, Lcom/adcolony/sdk/co;->i()Ljava/lang/String;

    move-result-object v1

    .line 198
    :goto_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 199
    const-string v9, "op"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v9, Lcom/adcolony/sdk/bn;->as:Ljava/lang/String;

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v9, Lcom/adcolony/sdk/bn;->at:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v5, Lcom/adcolony/sdk/bn;->au:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/adcolony/sdk/bz;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    const-string v5, "time"

    invoke-interface {v8, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v1, Lcom/adcolony/sdk/bn;->ad:Ljava/lang/String;

    invoke-interface {v8, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "stat_transaction_id"

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "checksum"

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "server_time_valid"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->d:Ljava/util/Queue;

    invoke-interface {v0, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was queued"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ck;->a(Z)V

    .line 218
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->k()I

    move-result v0

    .line 219
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stat freq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 221
    and-int/lit8 v1, p3, 0x78

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    .line 224
    :goto_5
    if-nez v1, :cond_8

    if-eqz v4, :cond_9

    .line 226
    :cond_8
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bm;->l()I

    move-result v1

    .line 227
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "promo stat freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 228
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 230
    :cond_9
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/adcolony/sdk/ck;->a(J)V

    .line 231
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleUpdateFromNowMs was called: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 232
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statQueueSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->av()Lcom/adcolony/sdk/ck;

    move-result-object v2

    iget-object v2, v2, Lcom/adcolony/sdk/ck;->d:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 233
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 191
    :cond_a
    const/4 v0, 0x1

    .line 192
    invoke-static {}, Lcom/adcolony/sdk/co;->j()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 221
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_c
    move-object v1, v3

    move v0, v4

    move v3, v5

    goto/16 :goto_3

    :cond_d
    move v0, v4

    goto/16 :goto_3
.end method

.method declared-synchronized b()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStats: _statsList has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/ck;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 108
    if-nez p1, :cond_0

    move-object v0, v1

    .line 117
    :goto_0
    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ck;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 112
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 116
    :cond_2
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Stat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 117
    goto :goto_0
.end method

.method b(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Lcom/adcolony/sdk/ck$4;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    iget-object v1, v1, Lcom/adcolony/sdk/bz;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1, p1}, Lcom/adcolony/sdk/ck$4;-><init>(Lcom/adcolony/sdk/ck;Lcom/adcolony/sdk/bq;Ljava/util/Collection;)V

    .line 346
    return-void
.end method

.method b(Ljava/lang/String;J)Z
    .locals 2

    .prologue
    .line 485
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adcolony/sdk/ck;->a(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method c()V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aw()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/ck$2;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ck$2;-><init>(Lcom/adcolony/sdk/ck;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 264
    return-void
.end method

.method c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 493
    const-wide/16 v0, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/adcolony/sdk/ck;->a(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method c(Ljava/lang/String;J)Z
    .locals 2

    .prologue
    .line 489
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adcolony/sdk/ck;->a(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method d()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 302
    const-string v0, ""

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/adcolony/sdk/ck;->a(Ljava/lang/String;JI)Z

    .line 303
    invoke-virtual {p0, v2, v3}, Lcom/adcolony/sdk/ck;->a(J)V

    .line 304
    return-void
.end method

.method e()V
    .locals 2

    .prologue
    .line 350
    new-instance v0, Lcom/adcolony/sdk/ck$5;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    iget-object v1, v1, Lcom/adcolony/sdk/bz;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1}, Lcom/adcolony/sdk/ck$5;-><init>(Lcom/adcolony/sdk/ck;Lcom/adcolony/sdk/bq;)V

    .line 369
    return-void
.end method

.method f()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 374
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "flushStats()"

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 376
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->x()Z

    move-result v2

    if-nez v2, :cond_0

    .line 477
    :goto_0
    return v0

    .line 380
    :cond_0
    iget-object v2, p0, Lcom/adcolony/sdk/ck;->d:Ljava/util/Queue;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adcolony/sdk/ck;->d:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 381
    :cond_1
    invoke-direct {p0}, Lcom/adcolony/sdk/ck;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "stats queue is empty"

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 385
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/ck$6;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    iget-object v2, v2, Lcom/adcolony/sdk/bz;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v2}, Lcom/adcolony/sdk/ck$6;-><init>(Lcom/adcolony/sdk/ck;Lcom/adcolony/sdk/bq;)V

    move v0, v1

    .line 477
    goto :goto_0
.end method

.method g()Z
    .locals 4

    .prologue
    .line 497
    const-string v0, ""

    const-wide/16 v2, 0x0

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/adcolony/sdk/ck;->a(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method h()Z
    .locals 4

    .prologue
    .line 501
    const-string v0, ""

    const-wide/16 v2, 0x0

    const/16 v1, 0x40

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/adcolony/sdk/ck;->a(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method
