.class public Lcom/flurry/sdk/is;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:Ljava/util/concurrent/atomic/AtomicInteger;

.field static d:Lcom/flurry/sdk/kf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kf",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/it;",
            ">;>;"
        }
    .end annotation
.end field

.field private static f:Lcom/flurry/sdk/is;

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/flurry/sdk/it;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Ljava/lang/String;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:J

.field private j:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/jq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/flurry/sdk/is;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/flurry/sdk/is$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/is$1;-><init>(Lcom/flurry/sdk/is;)V

    iput-object v0, p0, Lcom/flurry/sdk/is;->j:Lcom/flurry/sdk/kh;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/is;->g:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/is;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/sdk/is;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    sget v0, Lcom/flurry/sdk/is;->b:I

    if-nez v0, :cond_0

    .line 72
    const v0, 0x927c0

    sput v0, Lcom/flurry/sdk/is;->b:I

    .line 75
    :cond_0
    sget v0, Lcom/flurry/sdk/is;->a:I

    if-nez v0, :cond_1

    .line 76
    const/16 v0, 0xf

    sput v0, Lcom/flurry/sdk/is;->a:I

    .line 1491
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    .line 2097
    iget-object v0, v0, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 1491
    const-string v1, "FLURRY_SHARED_PREFERENCES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1492
    const-string v1, "timeToSendNextPulseReport"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/is;->i:J

    .line 81
    sget-object v0, Lcom/flurry/sdk/is;->d:Lcom/flurry/sdk/kf;

    if-nez v0, :cond_2

    .line 82
    invoke-static {}, Lcom/flurry/sdk/is;->l()V

    .line 85
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/is;->j:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 86
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/is;
    .locals 2

    .prologue
    .line 89
    const-class v1, Lcom/flurry/sdk/is;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/is;->f:Lcom/flurry/sdk/is;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/flurry/sdk/is;

    invoke-direct {v0}, Lcom/flurry/sdk/is;-><init>()V

    sput-object v0, Lcom/flurry/sdk/is;->f:Lcom/flurry/sdk/is;

    .line 93
    :cond_0
    sget-object v0, Lcom/flurry/sdk/is;->f:Lcom/flurry/sdk/is;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/is;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 106
    sput p0, Lcom/flurry/sdk/is;->a:I

    .line 107
    return-void
.end method

.method public static b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/it;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/flurry/sdk/is;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    return-object v0
.end method

.method public static b(I)V
    .locals 0

    .prologue
    .line 110
    sput p0, Lcom/flurry/sdk/is;->b:I

    .line 111
    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/is;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/flurry/sdk/is;->j()V

    return-void
.end method

.method private declared-synchronized c(I)V
    .locals 4

    .prologue
    .line 188
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing report "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from PulseCallbackManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/flurry/sdk/is;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lcom/flurry/sdk/iq;)V
    .locals 4

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/flurry/sdk/iq;->d:Z

    .line 346
    invoke-virtual {p1}, Lcom/flurry/sdk/iq;->a()V

    .line 349
    sget-object v0, Lcom/flurry/sdk/is;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 25088
    iget-object v0, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    invoke-virtual {v0}, Lcom/flurry/sdk/ip;->c()V

    .line 354
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26072
    iget-object v3, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 26124
    iget-object v3, v3, Lcom/flurry/sdk/ip;->m:Lcom/flurry/sdk/it;

    .line 27083
    iget-object v3, v3, Lcom/flurry/sdk/it;->c:Ljava/lang/String;

    .line 354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " report to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 28076
    iget-object v3, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 28116
    iget-object v3, v3, Lcom/flurry/sdk/ip;->k:Ljava/lang/String;

    .line 355
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finalized."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/flurry/sdk/is;->c()V

    .line 360
    invoke-direct {p0}, Lcom/flurry/sdk/is;->f()V

    .line 361
    return-void
.end method

.method public static d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/it;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    sget-object v0, Lcom/flurry/sdk/is;->d:Lcom/flurry/sdk/kf;

    if-nez v0, :cond_0

    .line 334
    invoke-static {}, Lcom/flurry/sdk/is;->l()V

    .line 337
    :cond_0
    sget-object v0, Lcom/flurry/sdk/is;->d:Lcom/flurry/sdk/kf;

    invoke-virtual {v0}, Lcom/flurry/sdk/kf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 339
    return-object v0
.end method

.method static synthetic e()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/flurry/sdk/is;->l()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 365
    invoke-static {}, Lcom/flurry/sdk/is;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/is;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    const-string v2, "Threshold reached. Sending callback logging reports"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/flurry/sdk/is;->i()V

    .line 370
    :cond_1
    return-void
.end method

.method private static g()Z
    .locals 2

    .prologue
    .line 387
    sget-object v0, Lcom/flurry/sdk/is;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    sget v1, Lcom/flurry/sdk/is;->a:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 4

    .prologue
    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/is;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 400
    invoke-static {}, Lcom/flurry/sdk/is;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/it;

    .line 404
    invoke-virtual {v0}, Lcom/flurry/sdk/it;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ip;

    .line 405
    iget-object v1, v1, Lcom/flurry/sdk/ip;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 406
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/iq;

    .line 410
    iget-boolean v8, v1, Lcom/flurry/sdk/iq;->j:Z

    if-eqz v8, :cond_3

    .line 411
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 416
    :cond_3
    iget-object v8, v1, Lcom/flurry/sdk/iq;->f:Lcom/flurry/sdk/ir;

    sget-object v9, Lcom/flurry/sdk/ir;->d:Lcom/flurry/sdk/ir;

    invoke-virtual {v8, v9}, Lcom/flurry/sdk/ir;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 424
    iput-boolean v4, v1, Lcom/flurry/sdk/iq;->j:Z

    move v2, v4

    goto :goto_1

    .line 428
    :cond_4
    if-eqz v2, :cond_0

    .line 429
    invoke-static {}, Lcom/flurry/sdk/iu;->a()Lcom/flurry/sdk/iu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/iu;->a(Lcom/flurry/sdk/it;)V

    goto :goto_0

    .line 434
    :cond_5
    invoke-static {}, Lcom/flurry/sdk/iu;->a()Lcom/flurry/sdk/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/iu;->b()V

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/flurry/sdk/is;->b:I

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/flurry/sdk/is;->i:J

    .line 438
    invoke-direct {p0}, Lcom/flurry/sdk/is;->j()V

    .line 28454
    invoke-static {}, Lcom/flurry/sdk/is;->b()Ljava/util/List;

    move-result-object v0

    .line 28457
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/flurry/sdk/it;

    .line 28461
    invoke-virtual {v1}, Lcom/flurry/sdk/it;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29075
    iget v0, v1, Lcom/flurry/sdk/it;->b:I

    .line 28462
    invoke-direct {p0, v0}, Lcom/flurry/sdk/is;->c(I)V

    goto :goto_2

    .line 28466
    :cond_7
    invoke-virtual {v1}, Lcom/flurry/sdk/it;->a()Ljava/util/List;

    move-result-object v0

    .line 28469
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ip;

    .line 29127
    iget-boolean v5, v0, Lcom/flurry/sdk/ip;->l:Z

    .line 28472
    if-eqz v5, :cond_9

    .line 30096
    iget-object v5, v1, Lcom/flurry/sdk/it;->d:Ljava/util/Map;

    .line 30102
    iget-wide v6, v0, Lcom/flurry/sdk/ip;->b:J

    .line 28473
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 28478
    :cond_9
    iget-object v0, v0, Lcom/flurry/sdk/ip;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 28479
    :cond_a
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28480
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iq;

    .line 28482
    iget-boolean v0, v0, Lcom/flurry/sdk/iq;->j:Z

    if-eqz v0, :cond_a

    .line 28483
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 444
    :cond_b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/sdk/is;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 446
    invoke-virtual {p0}, Lcom/flurry/sdk/is;->c()V

    .line 447
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 496
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    .line 31097
    iget-object v0, v0, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 496
    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 498
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 499
    const-string v1, "timeToSendNextPulseReport"

    iget-wide v2, p0, Lcom/flurry/sdk/is;->i:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 500
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 501
    return-void
.end method

.method private declared-synchronized k()I
    .locals 1

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/is;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
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

.method private static l()V
    .locals 5

    .prologue
    .line 508
    new-instance v0, Lcom/flurry/sdk/kf;

    .line 509
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    .line 32097
    iget-object v1, v1, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 509
    const-string v2, ".yflurryanongoingpulsecallbackreporter"

    .line 510
    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryanongoingpulsecallbackreporter"

    const/4 v3, 0x2

    new-instance v4, Lcom/flurry/sdk/is$6;

    invoke-direct {v4}, Lcom/flurry/sdk/is$6;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/kf;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lj;)V

    sput-object v0, Lcom/flurry/sdk/is;->d:Lcom/flurry/sdk/kf;

    .line 519
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/flurry/sdk/iq;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 205
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6072
    iget-object v3, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 6124
    iget-object v3, v3, Lcom/flurry/sdk/ip;->m:Lcom/flurry/sdk/it;

    .line 7083
    iget-object v3, v3, Lcom/flurry/sdk/it;->c:Ljava/lang/String;

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " report sent successfully to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8076
    iget-object v3, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 8116
    iget-object v3, v3, Lcom/flurry/sdk/ip;->k:Ljava/lang/String;

    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/flurry/sdk/ir;->a:Lcom/flurry/sdk/ir;

    iput-object v0, p1, Lcom/flurry/sdk/iq;->f:Lcom/flurry/sdk/ir;

    .line 210
    const-string v0, ""

    iput-object v0, p1, Lcom/flurry/sdk/iq;->g:Ljava/lang/String;

    .line 212
    invoke-direct {p0, p1}, Lcom/flurry/sdk/is;->c(Lcom/flurry/sdk/iq;)V

    .line 215
    invoke-static {}, Lcom/flurry/sdk/km;->c()I

    move-result v0

    if-gt v0, v4, :cond_0

    invoke-static {}, Lcom/flurry/sdk/km;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/is$4;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/is$4;-><init>(Lcom/flurry/sdk/is;Lcom/flurry/sdk/iq;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_0
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/it;)V
    .locals 4

    .prologue
    .line 115
    monitor-enter p0

    if-nez p1, :cond_1

    .line 116
    const/4 v0, 0x3

    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    const-string v2, "Must add valid PulseCallbackAsyncReportInfo"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    monitor-exit p0

    return-void

    .line 120
    :cond_1
    const/4 v0, 0x3

    :try_start_1
    iget-object v1, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding and sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3083
    iget-object v3, p1, Lcom/flurry/sdk/it;->c:Ljava/lang/String;

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " report to PulseCallbackManager."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/flurry/sdk/it;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-wide v0, p0, Lcom/flurry/sdk/is;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/flurry/sdk/is;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/is;->i:J

    .line 128
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/is$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/is$2;-><init>(Lcom/flurry/sdk/is;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/flurry/sdk/is;->k()I

    move-result v0

    .line 3112
    iput v0, p1, Lcom/flurry/sdk/it;->b:I

    .line 138
    sget-object v1, Lcom/flurry/sdk/is;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p1}, Lcom/flurry/sdk/it;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ip;

    .line 141
    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v2

    .line 4094
    iget-object v2, v2, Lcom/flurry/sdk/hr;->c:Lcom/flurry/sdk/io;

    .line 142
    invoke-virtual {v2, v0}, Lcom/flurry/sdk/io;->b(Lcom/flurry/sdk/kw;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/iq;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    monitor-enter p0

    :try_start_0
    iget v2, p1, Lcom/flurry/sdk/iq;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/flurry/sdk/iq;->h:I

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/flurry/sdk/iq;->i:J

    .line 9056
    iget-object v2, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    iget v3, p1, Lcom/flurry/sdk/iq;->h:I

    .line 9098
    iget v2, v2, Lcom/flurry/sdk/ip;->d:I

    if-le v3, v2, :cond_1

    move v2, v0

    .line 232
    :goto_0
    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    :cond_0
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Maximum number of redirects attempted. Aborting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10072
    iget-object v4, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 10124
    iget-object v4, v4, Lcom/flurry/sdk/ip;->m:Lcom/flurry/sdk/it;

    .line 11083
    iget-object v4, v4, Lcom/flurry/sdk/it;->c:Ljava/lang/String;

    .line 234
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " report to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 12076
    iget-object v4, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 12116
    iget-object v4, v4, Lcom/flurry/sdk/ip;->k:Ljava/lang/String;

    .line 234
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/flurry/sdk/ir;->c:Lcom/flurry/sdk/ir;

    iput-object v0, p1, Lcom/flurry/sdk/iq;->f:Lcom/flurry/sdk/ir;

    .line 239
    const-string v0, ""

    iput-object v0, p1, Lcom/flurry/sdk/iq;->g:Ljava/lang/String;

    .line 241
    invoke-direct {p0, p1}, Lcom/flurry/sdk/is;->c(Lcom/flurry/sdk/iq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 257
    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    move v2, v1

    .line 9098
    goto :goto_0

    .line 247
    :cond_2
    const/4 v1, 0x3

    :try_start_1
    iget-object v2, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Report to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13076
    iget-object v4, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 13116
    iget-object v4, v4, Lcom/flurry/sdk/ip;->k:Ljava/lang/String;

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " redirecting to url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 14084
    iget-object v1, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 15067
    iput-object p2, v1, Lcom/flurry/sdk/kw;->r:Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Lcom/flurry/sdk/is;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/iq;)V
    .locals 4

    .prologue
    .line 262
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Maximum number of attempts reached. Aborting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15072
    iget-object v3, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 15124
    iget-object v3, v3, Lcom/flurry/sdk/ip;->m:Lcom/flurry/sdk/it;

    .line 16083
    iget-object v3, v3, Lcom/flurry/sdk/it;->c:Ljava/lang/String;

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/flurry/sdk/ir;->b:Lcom/flurry/sdk/ir;

    iput-object v0, p1, Lcom/flurry/sdk/iq;->f:Lcom/flurry/sdk/ir;

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/flurry/sdk/iq;->i:J

    .line 267
    const-string v0, ""

    iput-object v0, p1, Lcom/flurry/sdk/iq;->g:Ljava/lang/String;

    .line 270
    invoke-direct {p0, p1}, Lcom/flurry/sdk/is;->c(Lcom/flurry/sdk/iq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/it;)V
    .locals 5

    .prologue
    .line 150
    monitor-enter p0

    if-nez p1, :cond_0

    .line 151
    const/4 v0, 0x3

    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    const-string v2, "Must add valid PulseCallbackAsyncReportInfo"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/flurry/sdk/is;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/flurry/sdk/is;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/is;->i:J

    .line 158
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/is$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/is$3;-><init>(Lcom/flurry/sdk/is;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/is;->k()I

    move-result v0

    .line 4112
    iput v0, p1, Lcom/flurry/sdk/it;->b:I

    .line 169
    sget-object v1, Lcom/flurry/sdk/is;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p1}, Lcom/flurry/sdk/it;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ip;

    .line 173
    iget-object v0, v0, Lcom/flurry/sdk/ip;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    sget-object v2, Lcom/flurry/sdk/is;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4373
    invoke-static {}, Lcom/flurry/sdk/is;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4374
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    const-string v4, "Max Callback Attempts threshold reached. Sending callback logging reports"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4375
    invoke-direct {p0}, Lcom/flurry/sdk/is;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4380
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/flurry/sdk/is;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4381
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    const-string v2, "Time threshold reached. Sending callback logging reports"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4382
    invoke-direct {p0}, Lcom/flurry/sdk/is;->i()V

    .line 182
    :cond_5
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Restoring "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5083
    iget-object v3, p1, Lcom/flurry/sdk/it;->c:Ljava/lang/String;

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " report to PulseCallbackManager. Number of stored completed callbacks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/flurry/sdk/is;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 183
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/iq;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 277
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/flurry/sdk/ir;->c:Lcom/flurry/sdk/ir;

    iput-object v2, p1, Lcom/flurry/sdk/iq;->f:Lcom/flurry/sdk/ir;

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/flurry/sdk/iq;->i:J

    .line 279
    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p1, Lcom/flurry/sdk/iq;->g:Ljava/lang/String;

    .line 17052
    iget-object v2, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 18026
    iget v3, v2, Lcom/flurry/sdk/kw;->p:I

    .line 17094
    iget v2, v2, Lcom/flurry/sdk/ip;->c:I

    if-lt v3, v2, :cond_1

    move v2, v1

    .line 283
    :goto_0
    if-eqz v2, :cond_2

    .line 284
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Maximum number of attempts reached. Aborting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18072
    iget-object v4, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 18124
    iget-object v4, v4, Lcom/flurry/sdk/ip;->m:Lcom/flurry/sdk/it;

    .line 19083
    iget-object v4, v4, Lcom/flurry/sdk/it;->c:Ljava/lang/String;

    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " report to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 20076
    iget-object v4, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 20116
    iget-object v4, v4, Lcom/flurry/sdk/ip;->k:Ljava/lang/String;

    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/flurry/sdk/is;->c(Lcom/flurry/sdk/iq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    move v2, v0

    .line 17094
    goto :goto_0

    .line 21080
    :cond_2
    :try_start_1
    iget-object v2, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 22038
    iget-object v2, v2, Lcom/flurry/sdk/kw;->r:Ljava/lang/String;

    .line 292
    invoke-static {v2}, Lcom/flurry/sdk/mc;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 293
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22080
    iget-object v4, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 23038
    iget-object v4, v4, Lcom/flurry/sdk/kw;->r:Ljava/lang/String;

    .line 293
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0, p1}, Lcom/flurry/sdk/is;->c(Lcom/flurry/sdk/iq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 302
    :cond_3
    const/4 v0, 0x3

    :try_start_2
    iget-object v2, p0, Lcom/flurry/sdk/is;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Retrying callback to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23072
    iget-object v4, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 23124
    iget-object v4, v4, Lcom/flurry/sdk/ip;->m:Lcom/flurry/sdk/it;

    .line 24083
    iget-object v4, v4, Lcom/flurry/sdk/it;->c:Ljava/lang/String;

    .line 302
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/flurry/sdk/iq;->l:Lcom/flurry/sdk/ip;

    .line 24111
    iget-wide v4, v4, Lcom/flurry/sdk/ip;->g:J

    .line 303
    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Lcom/flurry/sdk/iq;->a()V

    .line 309
    sget-object v0, Lcom/flurry/sdk/is;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 310
    invoke-virtual {p0}, Lcom/flurry/sdk/is;->c()V

    .line 311
    invoke-direct {p0}, Lcom/flurry/sdk/is;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/is$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/is$5;-><init>(Lcom/flurry/sdk/is;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 330
    return-void
.end method
