.class Lio/realm/l$1;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/l;->a(Lio/realm/l$a;Lio/realm/l$a$b;Lio/realm/l$a$a;)Lio/realm/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/p;

.field final synthetic b:Lio/realm/l$a;

.field final synthetic c:Z

.field final synthetic d:Lio/realm/l$a$b;

.field final synthetic e:Lio/realm/internal/RealmNotifier;

.field final synthetic f:Lio/realm/l$a$a;

.field final synthetic g:Lio/realm/l;


# direct methods
.method constructor <init>(Lio/realm/l;Lio/realm/p;Lio/realm/l$a;ZLio/realm/l$a$b;Lio/realm/internal/RealmNotifier;Lio/realm/l$a$a;)V
    .locals 0

    .prologue
    .line 1417
    iput-object p1, p0, Lio/realm/l$1;->g:Lio/realm/l;

    iput-object p2, p0, Lio/realm/l$1;->a:Lio/realm/p;

    iput-object p3, p0, Lio/realm/l$1;->b:Lio/realm/l$a;

    iput-boolean p4, p0, Lio/realm/l$1;->c:Z

    iput-object p5, p0, Lio/realm/l$1;->d:Lio/realm/l$a$b;

    iput-object p6, p0, Lio/realm/l$1;->e:Lio/realm/internal/RealmNotifier;

    iput-object p7, p0, Lio/realm/l$1;->f:Lio/realm/l$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1420
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    new-array v1, v2, [Lio/realm/internal/SharedRealm$b;

    .line 1425
    new-array v2, v2, [Ljava/lang/Throwable;

    .line 1427
    iget-object v0, p0, Lio/realm/l$1;->a:Lio/realm/p;

    invoke-static {v0}, Lio/realm/l;->b(Lio/realm/p;)Lio/realm/l;

    move-result-object v3

    .line 1428
    invoke-virtual {v3}, Lio/realm/l;->b()V

    .line 1430
    :try_start_0
    iget-object v0, p0, Lio/realm/l$1;->b:Lio/realm/l$a;

    invoke-interface {v0, v3}, Lio/realm/l$a;->a(Lio/realm/l;)V

    .line 1432
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1444
    invoke-virtual {v3}, Lio/realm/l;->close()V

    goto :goto_0

    .line 1436
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lio/realm/l;->c()V

    .line 1439
    const/4 v0, 0x0

    iget-object v4, v3, Lio/realm/l;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v4}, Lio/realm/internal/SharedRealm;->i()Lio/realm/internal/SharedRealm$b;

    move-result-object v4

    aput-object v4, v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1444
    invoke-virtual {v3}, Lio/realm/l;->close()V

    .line 1447
    :goto_1
    aget-object v0, v2, v5

    .line 1449
    iget-boolean v2, p0, Lio/realm/l$1;->c:Z

    if-eqz v2, :cond_4

    .line 1450
    aget-object v2, v1, v5

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/realm/l$1;->d:Lio/realm/l$a$b;

    if-eqz v2, :cond_3

    .line 1451
    iget-object v0, p0, Lio/realm/l$1;->e:Lio/realm/internal/RealmNotifier;

    new-instance v2, Lio/realm/l$1$1;

    invoke-direct {v2, p0, v1}, Lio/realm/l$1$1;-><init>(Lio/realm/l$1;[Lio/realm/internal/SharedRealm$b;)V

    invoke-virtual {v0, v2}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1440
    :catch_0
    move-exception v0

    .line 1441
    const/4 v4, 0x0

    :try_start_2
    aput-object v0, v2, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1444
    invoke-virtual {v3}, Lio/realm/l;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lio/realm/l;->close()V

    throw v0

    .line 1473
    :cond_3
    if-eqz v0, :cond_0

    .line 1474
    iget-object v1, p0, Lio/realm/l$1;->e:Lio/realm/internal/RealmNotifier;

    new-instance v2, Lio/realm/l$1$2;

    invoke-direct {v2, p0, v0}, Lio/realm/l$1$2;-><init>(Lio/realm/l$1;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1486
    :cond_4
    if-eqz v0, :cond_0

    .line 1490
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string v2, "Async transaction failed"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
