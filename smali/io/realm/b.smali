.class abstract Lio/realm/b;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/b$c;,
        Lio/realm/b$b;,
        Lio/realm/b$a;
    }
.end annotation


# static fields
.field static volatile a:Landroid/content/Context;

.field static final b:Lio/realm/internal/async/c;

.field public static final g:Lio/realm/b$c;


# instance fields
.field final c:J

.field protected d:Lio/realm/p;

.field protected e:Lio/realm/internal/SharedRealm;

.field f:Lio/realm/RealmSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lio/realm/internal/async/c;->a()Lio/realm/internal/async/c;

    move-result-object v0

    sput-object v0, Lio/realm/b;->b:Lio/realm/internal/async/c;

    .line 716
    new-instance v0, Lio/realm/b$c;

    invoke-direct {v0}, Lio/realm/b$c;-><init>()V

    sput-object v0, Lio/realm/b;->g:Lio/realm/b$c;

    return-void
.end method

.method protected constructor <init>(Lio/realm/p;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/b;->c:J

    .line 78
    iput-object p1, p0, Lio/realm/b;->d:Lio/realm/p;

    .line 80
    instance-of v0, p0, Lio/realm/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lio/realm/internal/SharedRealm;->a(Lio/realm/p;Lio/realm/internal/SharedRealm$a;Z)Lio/realm/internal/SharedRealm;

    move-result-object v0

    iput-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    .line 88
    new-instance v0, Lio/realm/RealmSchema;

    invoke-direct {v0, p0}, Lio/realm/RealmSchema;-><init>(Lio/realm/b;)V

    iput-object v0, p0, Lio/realm/b;->f:Lio/realm/RealmSchema;

    .line 89
    return-void

    .line 80
    :cond_0
    new-instance v0, Lio/realm/b$1;

    invoke-direct {v0, p0}, Lio/realm/b$1;-><init>(Lio/realm/b;)V

    goto :goto_0
.end method

.method protected static a(Lio/realm/p;Lio/realm/s;Lio/realm/b$a;Lio/realm/exceptions/RealmMigrationNeededException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 594
    if-nez p0, :cond_0

    .line 595
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RealmConfiguration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_0
    invoke-virtual {p0}, Lio/realm/p;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    :cond_1
    return-void

    .line 600
    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lio/realm/p;->e()Lio/realm/s;

    move-result-object v0

    if-nez v0, :cond_3

    .line 601
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/p;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RealmMigration must be provided"

    invoke-direct {v0, v1, v2, p3}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 604
    :cond_3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 606
    new-instance v1, Lio/realm/b$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lio/realm/b$3;-><init>(Lio/realm/p;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/realm/s;Lio/realm/b$a;)V

    invoke-static {p0, v1}, Lio/realm/n;->a(Lio/realm/p;Lio/realm/n$a;)V

    .line 643
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot migrate a Realm file which doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 645
    invoke-virtual {p0}, Lio/realm/p;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Lio/realm/p;)Z
    .locals 2

    .prologue
    .line 549
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 550
    new-instance v1, Lio/realm/b$2;

    invoke-direct {v1, p0, v0}, Lio/realm/b$2;-><init>(Lio/realm/p;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static {p0, v1}, Lio/realm/n;->a(Lio/realm/p;Lio/realm/n$a;)V

    .line 564
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/t;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;JZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lio/realm/b;->f:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 498
    invoke-virtual {v0, p2, p3}, Lio/realm/internal/Table;->f(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    .line 499
    iget-object v0, p0, Lio/realm/b;->d:Lio/realm/p;

    invoke-virtual {v0}, Lio/realm/p;->h()Lio/realm/internal/m;

    move-result-object v0

    iget-object v1, p0, Lio/realm/b;->f:Lio/realm/RealmSchema;

    invoke-virtual {v1, p1}, Lio/realm/RealmSchema;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    move-object v1, p1

    move-object v2, p0

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/m;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/n;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/t;

    move-result-object v1

    move-object v0, v1

    .line 501
    check-cast v0, Lio/realm/internal/l;

    .line 502
    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->f()V

    .line 503
    return-object v1
.end method

.method a(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/t;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "J)TE;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-wide/16 v8, -0x1

    .line 510
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 511
    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lio/realm/b;->f:Lio/realm/RealmSchema;

    invoke-virtual {v0, p2}, Lio/realm/RealmSchema;->d(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    move-object v2, v0

    .line 514
    :goto_1
    if-eqz v1, :cond_4

    .line 516
    new-instance v1, Lio/realm/e;

    cmp-long v0, p3, v8

    if-eqz v0, :cond_3

    .line 517
    invoke-virtual {v2, p3, p4}, Lio/realm/internal/Table;->h(J)Lio/realm/internal/CheckedRow;

    move-result-object v0

    :goto_2
    invoke-direct {v1, p0, v0}, Lio/realm/e;-><init>(Lio/realm/b;Lio/realm/internal/n;)V

    :goto_3
    move-object v0, v1

    .line 525
    check-cast v0, Lio/realm/internal/l;

    .line 526
    cmp-long v2, p3, v8

    if-eqz v2, :cond_0

    .line 527
    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->f()V

    .line 530
    :cond_0
    return-object v1

    :cond_1
    move v1, v5

    .line 510
    goto :goto_0

    .line 511
    :cond_2
    iget-object v0, p0, Lio/realm/b;->f:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 517
    :cond_3
    sget-object v0, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    goto :goto_2

    .line 520
    :cond_4
    iget-object v0, p0, Lio/realm/b;->d:Lio/realm/p;

    invoke-virtual {v0}, Lio/realm/p;->h()Lio/realm/internal/m;

    move-result-object v0

    cmp-long v1, p3, v8

    if-eqz v1, :cond_5

    .line 521
    invoke-virtual {v2, p3, p4}, Lio/realm/internal/Table;->f(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    :goto_4
    iget-object v1, p0, Lio/realm/b;->f:Lio/realm/RealmSchema;

    .line 522
    invoke-virtual {v1, p1}, Lio/realm/RealmSchema;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    .line 520
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/m;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/n;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/t;

    move-result-object v1

    goto :goto_3

    .line 521
    :cond_5
    sget-object v3, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    goto :goto_4
.end method

.method a(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/t;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            "Lio/realm/internal/UncheckedRow;",
            ")TE;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 481
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 484
    :goto_0
    if-eqz v0, :cond_1

    .line 486
    new-instance v1, Lio/realm/e;

    invoke-static {p3}, Lio/realm/internal/CheckedRow;->a(Lio/realm/internal/UncheckedRow;)Lio/realm/internal/CheckedRow;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lio/realm/e;-><init>(Lio/realm/b;Lio/realm/internal/n;)V

    :goto_1
    move-object v0, v1

    .line 491
    check-cast v0, Lio/realm/internal/l;

    .line 492
    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->f()V

    .line 493
    return-object v1

    :cond_0
    move v0, v5

    .line 481
    goto :goto_0

    .line 488
    :cond_1
    iget-object v0, p0, Lio/realm/b;->d:Lio/realm/p;

    invoke-virtual {v0}, Lio/realm/p;->h()Lio/realm/internal/m;

    move-result-object v0

    iget-object v1, p0, Lio/realm/b;->f:Lio/realm/RealmSchema;

    invoke-virtual {v1, p1}, Lio/realm/RealmSchema;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    .line 489
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    .line 488
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/m;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/n;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/t;

    move-result-object v1

    goto :goto_1
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/SharedRealm;->a(J)V

    .line 467
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lio/realm/b;->e()V

    .line 123
    iget-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->d()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lio/realm/b;->e()V

    .line 309
    iget-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->a()V

    .line 310
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 319
    invoke-virtual {p0}, Lio/realm/b;->e()V

    .line 320
    iget-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->b()V

    .line 321
    invoke-virtual {p0}, Lio/realm/b;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lio/realm/b;->d:Lio/realm/p;

    invoke-virtual {v0}, Lio/realm/p;->o()Z

    move-result v0

    invoke-static {v0}, Lio/realm/internal/h;->a(Z)Lio/realm/internal/h;

    move-result-object v0

    iget-object v1, p0, Lio/realm/b;->d:Lio/realm/p;

    iget-object v2, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    .line 326
    invoke-virtual {v2}, Lio/realm/internal/SharedRealm;->j()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/h;->a(Lio/realm/p;J)V

    .line 328
    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 420
    iget-wide v0, p0, Lio/realm/b;->c:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm instance can only be closed on the thread it was created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    invoke-static {p0}, Lio/realm/n;->a(Lio/realm/b;)V

    .line 425
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lio/realm/b;->e()V

    .line 340
    iget-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->c()V

    .line 341
    return-void
.end method

.method protected e()V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Realm instance has already been closed, making it unusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_1
    iget-wide v0, p0, Lio/realm/b;->c:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 353
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_2
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lio/realm/b;->d:Lio/realm/p;

    invoke-virtual {v0}, Lio/realm/p;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    const-string v0, "Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/realm/b;->d:Lio/realm/p;

    .line 654
    invoke-virtual {v3}, Lio/realm/p;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 652
    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 658
    return-void
.end method

.method public g()Lio/realm/p;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lio/realm/b;->d:Lio/realm/p;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method i()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->close()V

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    .line 435
    :cond_0
    iget-object v0, p0, Lio/realm/b;->f:Lio/realm/RealmSchema;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lio/realm/b;->f:Lio/realm/RealmSchema;

    invoke-virtual {v0}, Lio/realm/RealmSchema;->b()V

    .line 438
    :cond_1
    return-void
.end method

.method public j()Z
    .locals 4

    .prologue
    .line 447
    iget-wide v0, p0, Lio/realm/b;->c:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 448
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_0
    iget-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
