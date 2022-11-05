.class public Lcom/flurry/sdk/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/aa$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/af;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/flurry/sdk/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ap",
            "<[B>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/af;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/am;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/flurry/sdk/aa$a;

.field private final g:J

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/flurry/sdk/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/aa;->a:Ljava/util/Map;

    .line 34
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/aa;->d:Ljava/util/Map;

    .line 36
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/aa;->e:Ljava/util/Map;

    .line 38
    sget-object v1, Lcom/flurry/sdk/aa$a;->a:Lcom/flurry/sdk/aa$a;

    iput-object v1, p0, Lcom/flurry/sdk/aa;->f:Lcom/flurry/sdk/aa$a;

    .line 45
    new-instance v1, Lcom/flurry/sdk/ap;

    new-instance v2, Lcom/flurry/sdk/lc;

    invoke-direct {v2}, Lcom/flurry/sdk/lc;-><init>()V

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/flurry/sdk/ap;-><init>(Lcom/flurry/sdk/lg;Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/flurry/sdk/aa;->b:Lcom/flurry/sdk/ap;

    .line 46
    iput-wide p4, p0, Lcom/flurry/sdk/aa;->g:J

    .line 47
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    iput v0, p0, Lcom/flurry/sdk/aa;->h:I

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/aa;)V
    .locals 8

    .prologue
    .line 27
    .line 16499
    invoke-direct {p0}, Lcom/flurry/sdk/aa;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/af;

    .line 16501
    sget-object v2, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/aa;->c(Lcom/flurry/sdk/af;)Lcom/flurry/sdk/al;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 16502
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Precaching: expiring cached asset: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17094
    iget-object v5, v0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 16502
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " asset exp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 17108
    iget-wide v6, v0, Lcom/flurry/sdk/af;->f:J

    .line 16502
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " device epoch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 18094
    iget-object v0, v0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 16503
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/aa;Lcom/flurry/sdk/af;)V
    .locals 3

    .prologue
    .line 25447
    if-eqz p1, :cond_0

    .line 25451
    iget-object v1, p0, Lcom/flurry/sdk/aa;->d:Ljava/util/Map;

    monitor-enter v1

    .line 25452
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/aa;->d:Ljava/util/Map;

    .line 26094
    iget-object v2, p1, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 25452
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25453
    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/af;Lcom/flurry/sdk/al;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/flurry/sdk/aa;->b(Lcom/flurry/sdk/af;Lcom/flurry/sdk/al;)V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/aa;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 27
    .line 18358
    invoke-direct {p0}, Lcom/flurry/sdk/aa;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18362
    sget-object v0, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    const-string v1, "Precaching: Download files"

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 18364
    iget-object v1, p0, Lcom/flurry/sdk/aa;->d:Ljava/util/Map;

    monitor-enter v1

    .line 18365
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/aa;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 18366
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18367
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/af;

    .line 18369
    iget-object v3, p0, Lcom/flurry/sdk/aa;->b:Lcom/flurry/sdk/ap;

    .line 19094
    iget-object v4, v0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 18369
    invoke-virtual {v3, v4}, Lcom/flurry/sdk/ap;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18370
    const/4 v3, 0x3

    sget-object v4, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Precaching: Asset already cached.  Skipping download:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20094
    iget-object v6, v0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 18370
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 18373
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 18374
    sget-object v3, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    invoke-static {v0, v3}, Lcom/flurry/sdk/aa;->b(Lcom/flurry/sdk/af;Lcom/flurry/sdk/al;)V

    goto :goto_0

    .line 18389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 18378
    :cond_1
    :try_start_1
    sget-object v3, Lcom/flurry/sdk/al;->c:Lcom/flurry/sdk/al;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/aa;->c(Lcom/flurry/sdk/af;)Lcom/flurry/sdk/al;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 18382
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/flurry/sdk/jw;->b(Ljava/lang/Object;)J

    move-result-wide v4

    iget v3, p0, Lcom/flurry/sdk/aa;->h:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 18383
    const/4 v0, 0x3

    sget-object v2, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    const-string v3, "Precaching: Download limit reached"

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 18384
    monitor-exit v1

    :cond_2
    :goto_1
    return-void

    .line 20395
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v3

    const-string v4, "precachingDownloadStarted"

    invoke-virtual {v3, v4}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    .line 20397
    const/4 v3, 0x3

    sget-object v4, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Precaching: Submitting for download: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21094
    iget-object v6, v0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 20397
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 20399
    new-instance v3, Lcom/flurry/sdk/ar;

    iget-object v4, p0, Lcom/flurry/sdk/aa;->b:Lcom/flurry/sdk/ap;

    .line 22094
    iget-object v5, v0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 20399
    invoke-direct {v3, v4, v5}, Lcom/flurry/sdk/ar;-><init>(Lcom/flurry/sdk/aq;Ljava/lang/String;)V

    .line 23094
    iget-object v4, v0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 24064
    iput-object v4, v3, Lcom/flurry/sdk/am;->b:Ljava/lang/String;

    .line 24072
    const v4, 0x9c40

    iput v4, v3, Lcom/flurry/sdk/am;->c:I

    .line 20402
    iget-object v4, p0, Lcom/flurry/sdk/aa;->b:Lcom/flurry/sdk/ap;

    .line 24076
    iput-object v4, v3, Lcom/flurry/sdk/am;->d:Lcom/flurry/sdk/aq;

    .line 20405
    new-instance v4, Lcom/flurry/sdk/aa$4;

    invoke-direct {v4, p0, v0}, Lcom/flurry/sdk/aa$4;-><init>(Lcom/flurry/sdk/aa;Lcom/flurry/sdk/af;)V

    .line 25060
    iput-object v4, v3, Lcom/flurry/sdk/am;->a:Lcom/flurry/sdk/am$a;

    .line 20436
    invoke-virtual {v3}, Lcom/flurry/sdk/am;->a()V

    .line 20438
    iget-object v4, p0, Lcom/flurry/sdk/aa;->e:Ljava/util/Map;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20439
    :try_start_2
    iget-object v5, p0, Lcom/flurry/sdk/aa;->e:Ljava/util/Map;

    .line 25094
    iget-object v6, v0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 20439
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20440
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20442
    :try_start_3
    sget-object v3, Lcom/flurry/sdk/al;->c:Lcom/flurry/sdk/al;

    invoke-static {v0, v3}, Lcom/flurry/sdk/aa;->b(Lcom/flurry/sdk/af;Lcom/flurry/sdk/al;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 20440
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 18389
    :cond_4
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 18391
    sget-object v0, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    const-string v1, "Precaching: No more files to download"

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Lcom/flurry/sdk/af;)V
    .locals 4

    .prologue
    .line 303
    if-nez p1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    invoke-direct {p0, p1}, Lcom/flurry/sdk/aa;->c(Lcom/flurry/sdk/af;)Lcom/flurry/sdk/al;

    move-result-object v0

    .line 309
    sget-object v1, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    sget-object v1, Lcom/flurry/sdk/al;->c:Lcom/flurry/sdk/al;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/flurry/sdk/al;->b:Lcom/flurry/sdk/al;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/aa;->d:Ljava/util/Map;

    monitor-enter v1

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/aa;->d:Ljava/util/Map;

    .line 10094
    iget-object v2, p1, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 314
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/flurry/sdk/aa;->d:Ljava/util/Map;

    .line 11094
    iget-object v2, p1, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 315
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :goto_1
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/aa$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/aa$3;-><init>(Lcom/flurry/sdk/aa;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 320
    :cond_4
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Precaching: Queueing asset:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12094
    iget-object v3, p1, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingDownloadRequested"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/flurry/sdk/al;->b:Lcom/flurry/sdk/al;

    invoke-static {p1, v0}, Lcom/flurry/sdk/aa;->b(Lcom/flurry/sdk/af;Lcom/flurry/sdk/al;)V

    .line 324
    iget-object v1, p0, Lcom/flurry/sdk/aa;->d:Ljava/util/Map;

    monitor-enter v1

    .line 325
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/aa;->d:Ljava/util/Map;

    .line 13094
    iget-object v2, p1, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 325
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private static b(Lcom/flurry/sdk/af;Lcom/flurry/sdk/al;)V
    .locals 4

    .prologue
    .line 480
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/af;->a()Lcom/flurry/sdk/al;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Asset status changed for asset:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15094
    iget-object v3, p0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 489
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/af;->a()Lcom/flurry/sdk/al;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/af;->a(Lcom/flurry/sdk/al;)V

    .line 492
    new-instance v0, Lcom/flurry/sdk/ae;

    invoke-direct {v0}, Lcom/flurry/sdk/ae;-><init>()V

    .line 16094
    iget-object v1, p0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 493
    iput-object v1, v0, Lcom/flurry/sdk/ae;->a:Ljava/lang/String;

    .line 494
    iput-object p1, v0, Lcom/flurry/sdk/ae;->b:Lcom/flurry/sdk/al;

    .line 495
    invoke-virtual {v0}, Lcom/flurry/sdk/ae;->b()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/flurry/sdk/af;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/flurry/sdk/aa;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-object v1

    .line 238
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v2, p0, Lcom/flurry/sdk/aa;->a:Ljava/util/Map;

    monitor-enter v2

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/aa;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/af;

    .line 245
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {v0}, Lcom/flurry/sdk/af;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Precaching: expiring cached asset: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8094
    iget-object v5, v0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 249
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " asset exp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8108
    iget-wide v6, v0, Lcom/flurry/sdk/af;->f:J

    .line 249
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " device epoch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 9094
    iget-object v0, v0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 250
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/aa;->a(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    :goto_1
    move-object v1, v0

    .line 258
    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 253
    :cond_3
    invoke-direct {p0, v0}, Lcom/flurry/sdk/aa;->c(Lcom/flurry/sdk/af;)Lcom/flurry/sdk/al;

    .line 254
    invoke-virtual {v0}, Lcom/flurry/sdk/af;->c()V

    goto :goto_1
.end method

.method private c(Lcom/flurry/sdk/af;)Lcom/flurry/sdk/al;
    .locals 2

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    sget-object v0, Lcom/flurry/sdk/al;->a:Lcom/flurry/sdk/al;

    .line 354
    :goto_0
    return-object v0

    .line 344
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/af;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    sget-object v0, Lcom/flurry/sdk/al;->a:Lcom/flurry/sdk/al;

    goto :goto_0

    .line 348
    :cond_1
    sget-object v0, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    invoke-virtual {p1}, Lcom/flurry/sdk/af;->a()Lcom/flurry/sdk/al;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/flurry/sdk/aa;->b:Lcom/flurry/sdk/ap;

    .line 14094
    iget-object v1, p1, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 349
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ap;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    sget-object v0, Lcom/flurry/sdk/al;->f:Lcom/flurry/sdk/al;

    invoke-static {p1, v0}, Lcom/flurry/sdk/aa;->b(Lcom/flurry/sdk/af;Lcom/flurry/sdk/al;)V

    .line 354
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/af;->a()Lcom/flurry/sdk/al;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/flurry/sdk/aa;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/flurry/sdk/aa;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized g()Z
    .locals 2

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/aa$a;->b:Lcom/flurry/sdk/aa$a;

    iget-object v1, p0, Lcom/flurry/sdk/aa;->f:Lcom/flurry/sdk/aa$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aa$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()Z
    .locals 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/aa$a;->c:Lcom/flurry/sdk/aa$a;

    iget-object v1, p0, Lcom/flurry/sdk/aa;->f:Lcom/flurry/sdk/aa$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aa$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/af;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v1, p0, Lcom/flurry/sdk/aa;->a:Ljava/util/Map;

    monitor-enter v1

    .line 275
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/flurry/sdk/aa;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/flurry/sdk/af;)V
    .locals 6

    .prologue
    .line 72
    monitor-enter p0

    .line 1286
    if-eqz p1, :cond_0

    .line 2094
    :try_start_0
    iget-object v0, p1, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 1290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/flurry/sdk/aa;->a:Ljava/util/Map;

    .line 3094
    iget-object v1, p1, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 1294
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1295
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Precaching: adding cached asset info from persisted storage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4094
    iget-object v3, p1, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 1295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " asset exp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4108
    iget-wide v4, p1, Lcom/flurry/sdk/af;->f:J

    .line 1295
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " saved time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4124
    iget-wide v4, p1, Lcom/flurry/sdk/af;->c:J

    .line 1295
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1296
    iget-object v1, p0, Lcom/flurry/sdk/aa;->a:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1297
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/aa;->a:Ljava/util/Map;

    .line 5094
    iget-object v2, p1, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 1297
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/flurry/sdk/aa;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/flurry/sdk/aa;->a:Ljava/util/Map;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/aa;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v0, p0, Lcom/flurry/sdk/aa;->b:Lcom/flurry/sdk/ap;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ap;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/aa$a;->b:Lcom/flurry/sdk/aa$a;

    iget-object v1, p0, Lcom/flurry/sdk/aa;->f:Lcom/flurry/sdk/aa$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aa$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/aa$a;->c:Lcom/flurry/sdk/aa$a;

    iget-object v1, p0, Lcom/flurry/sdk/aa;->f:Lcom/flurry/sdk/aa$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/aa$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/flurry/sdk/as;J)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/flurry/sdk/aa;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 166
    sget-object v1, Lcom/flurry/sdk/as;->c:Lcom/flurry/sdk/as;

    invoke-virtual {v1, p2}, Lcom/flurry/sdk/as;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/flurry/sdk/as;->b:Lcom/flurry/sdk/as;

    invoke-virtual {v1, p2}, Lcom/flurry/sdk/as;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :cond_2
    invoke-direct {p0, p1}, Lcom/flurry/sdk/aa;->c(Ljava/lang/String;)Lcom/flurry/sdk/af;

    move-result-object v0

    .line 171
    if-nez v0, :cond_4

    .line 172
    new-instance v0, Lcom/flurry/sdk/af;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/flurry/sdk/af;-><init>(Ljava/lang/String;Lcom/flurry/sdk/as;J)V

    .line 173
    iget-object v1, p0, Lcom/flurry/sdk/aa;->a:Ljava/util/Map;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/flurry/sdk/aa;->a:Ljava/util/Map;

    .line 7094
    iget-object v3, v0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 174
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-direct {p0, v0}, Lcom/flurry/sdk/aa;->b(Lcom/flurry/sdk/af;)V

    .line 181
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 177
    :cond_4
    sget-object v1, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/aa;->c(Lcom/flurry/sdk/af;)Lcom/flurry/sdk/al;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 178
    invoke-direct {p0, v0}, Lcom/flurry/sdk/aa;->b(Lcom/flurry/sdk/af;)V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Lcom/flurry/sdk/al;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/flurry/sdk/aa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    sget-object v0, Lcom/flurry/sdk/al;->a:Lcom/flurry/sdk/al;

    .line 218
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/flurry/sdk/aa;->c(Ljava/lang/String;)Lcom/flurry/sdk/af;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/aa;->c(Lcom/flurry/sdk/af;)Lcom/flurry/sdk/al;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/af;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/flurry/sdk/aa;->a:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    :try_start_1
    iget-object v2, p0, Lcom/flurry/sdk/aa;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit p0

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 3

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/aa;->g()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    const-string v2, "Precaching: Starting AssetCache"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/flurry/sdk/aa;->b:Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->a()V

    .line 87
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/aa$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/aa$1;-><init>(Lcom/flurry/sdk/aa;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 95
    sget-object v0, Lcom/flurry/sdk/aa$a;->b:Lcom/flurry/sdk/aa$a;

    iput-object v0, p0, Lcom/flurry/sdk/aa;->f:Lcom/flurry/sdk/aa$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 8

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/aa;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    const-string v2, "Precaching: Stopping AssetCache"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 5458
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    const-string v2, "Precaching: Cancelling in-progress downloads"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 5459
    iget-object v1, p0, Lcom/flurry/sdk/aa;->e:Ljava/util/Map;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5460
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/aa;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5461
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/am;

    invoke-virtual {v0}, Lcom/flurry/sdk/am;->b()V

    goto :goto_1

    .line 5465
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5464
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/flurry/sdk/aa;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5465
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5468
    :try_start_5
    iget-object v1, p0, Lcom/flurry/sdk/aa;->d:Ljava/util/Map;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5469
    :try_start_6
    iget-object v0, p0, Lcom/flurry/sdk/aa;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5470
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/af;

    .line 5471
    sget-object v3, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/aa;->c(Lcom/flurry/sdk/af;)Lcom/flurry/sdk/al;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5472
    const/4 v3, 0x3

    sget-object v4, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Precaching: Download cancelled: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6124
    iget-wide v6, v0, Lcom/flurry/sdk/af;->c:J

    .line 5472
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 5473
    sget-object v3, Lcom/flurry/sdk/al;->e:Lcom/flurry/sdk/al;

    invoke-static {v0, v3}, Lcom/flurry/sdk/aa;->b(Lcom/flurry/sdk/af;Lcom/flurry/sdk/al;)V

    goto :goto_2

    .line 5476
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_3
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 109
    :try_start_9
    iget-object v0, p0, Lcom/flurry/sdk/aa;->b:Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Lcom/flurry/sdk/ap;->b()V

    .line 111
    sget-object v0, Lcom/flurry/sdk/aa$a;->a:Lcom/flurry/sdk/aa$a;

    iput-object v0, p0, Lcom/flurry/sdk/aa;->f:Lcom/flurry/sdk/aa$a;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0
.end method

.method public final declared-synchronized e()V
    .locals 3

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/aa;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 137
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/flurry/sdk/aa;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/aa;->c:Ljava/lang/String;

    const-string v2, "Precaching: Resuming AssetCache"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/aa$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/aa$2;-><init>(Lcom/flurry/sdk/aa;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 153
    sget-object v0, Lcom/flurry/sdk/aa$a;->b:Lcom/flurry/sdk/aa$a;

    iput-object v0, p0, Lcom/flurry/sdk/aa;->f:Lcom/flurry/sdk/aa$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
