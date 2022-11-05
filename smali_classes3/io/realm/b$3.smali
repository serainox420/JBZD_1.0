.class final Lio/realm/b$3;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Lio/realm/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/b;->a(Lio/realm/p;Lio/realm/s;Lio/realm/b$a;Lio/realm/exceptions/RealmMigrationNeededException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/p;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lio/realm/s;

.field final synthetic d:Lio/realm/b$a;


# direct methods
.method constructor <init>(Lio/realm/p;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/realm/s;Lio/realm/b$a;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lio/realm/b$3;->a:Lio/realm/p;

    iput-object p2, p0, Lio/realm/b$3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lio/realm/b$3;->c:Lio/realm/s;

    iput-object p4, p0, Lio/realm/b$3;->d:Lio/realm/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .prologue
    .line 609
    if-eqz p1, :cond_0

    .line 610
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot migrate a Realm file that is already open: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/b$3;->a:Lio/realm/p;

    .line 611
    invoke-virtual {v2}, Lio/realm/p;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/realm/b$3;->a:Lio/realm/p;

    invoke-virtual {v1}, Lio/realm/p;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 616
    iget-object v0, p0, Lio/realm/b$3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 640
    :cond_1
    :goto_0
    return-void

    .line 620
    :cond_2
    iget-object v0, p0, Lio/realm/b$3;->c:Lio/realm/s;

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/realm/b$3;->a:Lio/realm/p;

    invoke-virtual {v0}, Lio/realm/p;->e()Lio/realm/s;

    move-result-object v0

    .line 621
    :goto_1
    const/4 v1, 0x0

    .line 623
    :try_start_0
    iget-object v2, p0, Lio/realm/b$3;->a:Lio/realm/p;

    invoke-static {v2}, Lio/realm/d;->b(Lio/realm/p;)Lio/realm/d;

    move-result-object v1

    .line 624
    invoke-virtual {v1}, Lio/realm/d;->b()V

    .line 625
    invoke-virtual {v1}, Lio/realm/d;->h()J

    move-result-wide v2

    .line 626
    iget-object v4, p0, Lio/realm/b$3;->a:Lio/realm/p;

    invoke-virtual {v4}, Lio/realm/p;->d()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lio/realm/s;->a(Lio/realm/d;JJ)V

    .line 627
    iget-object v0, p0, Lio/realm/b$3;->a:Lio/realm/p;

    invoke-virtual {v0}, Lio/realm/p;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/realm/d;->a(J)V

    .line 628
    invoke-virtual {v1}, Lio/realm/d;->c()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    if-eqz v1, :cond_1

    .line 636
    invoke-virtual {v1}, Lio/realm/d;->close()V

    .line 637
    iget-object v0, p0, Lio/realm/b$3;->d:Lio/realm/b$a;

    invoke-interface {v0}, Lio/realm/b$a;->a()V

    goto :goto_0

    .line 620
    :cond_3
    iget-object v0, p0, Lio/realm/b$3;->c:Lio/realm/s;

    goto :goto_1

    .line 629
    :catch_0
    move-exception v0

    .line 630
    if-eqz v1, :cond_4

    .line 631
    :try_start_1
    invoke-virtual {v1}, Lio/realm/d;->d()V

    .line 633
    :cond_4
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 636
    invoke-virtual {v1}, Lio/realm/d;->close()V

    .line 637
    iget-object v1, p0, Lio/realm/b$3;->d:Lio/realm/b$a;

    invoke-interface {v1}, Lio/realm/b$a;->a()V

    :cond_5
    throw v0
.end method
