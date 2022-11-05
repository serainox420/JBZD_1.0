.class Lcom/adcolony/sdk/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adcolony/sdk/cc;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Thread;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Boolean;

.field private f:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/cd;->a:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/cd;->c:Ljava/lang/Object;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/cd;->d:Ljava/lang/Object;

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/cd;->e:Ljava/lang/Boolean;

    .line 15
    iput-boolean v1, p0, Lcom/adcolony/sdk/cd;->f:Z

    return-void
.end method

.method private static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adcolony/sdk/cd;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/cd;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adcolony/sdk/cd;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/adcolony/sdk/cd;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adcolony/sdk/cd;->b:Ljava/lang/Thread;

    .line 36
    iget-object v0, p0, Lcom/adcolony/sdk/cd;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/cd;->f:Z

    .line 39
    :cond_0
    return-void
.end method

.method public a(Lcom/adcolony/sdk/cc;)V
    .locals 2

    .prologue
    .line 28
    iget-object v1, p0, Lcom/adcolony/sdk/cd;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/cd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    monitor-exit v1

    .line 31
    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-static {}, Lcom/adcolony/sdk/cd;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Signalling pump manager."

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    iget-object v1, p0, Lcom/adcolony/sdk/cd;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/cd;->e:Ljava/lang/Boolean;

    .line 50
    iget-object v0, p0, Lcom/adcolony/sdk/cd;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 51
    monitor-exit v1

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/adcolony/sdk/cd;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/adcolony/sdk/cd;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 61
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/adcolony/sdk/cd;->e:Ljava/lang/Boolean;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-static {}, Lcom/adcolony/sdk/cd;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Pump manager waiting"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/cd;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/adcolony/sdk/cd;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Pump manager DONE waiting."

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    :cond_1
    monitor-exit v1

    .line 75
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 4

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    :goto_0
    invoke-static {}, Lcom/adcolony/sdk/cd;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Starting to process managers."

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v2, p0, Lcom/adcolony/sdk/cd;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/cd;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :try_start_2
    invoke-static {v1}, Lcom/adcolony/sdk/co;->a(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/cc;

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/adcolony/sdk/cc;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    :try_start_3
    invoke-static {}, Lcom/adcolony/sdk/cd;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unhandled exception caught in internal message pump"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "Unhandled exception caught in internal message pump"

    const/4 v3, 0x1

    .line 102
    invoke-virtual {v1, v0, v2, v3}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 79
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_1
    :try_start_6
    invoke-static {}, Lcom/adcolony/sdk/cd;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Done updating managers."

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    invoke-virtual {p0}, Lcom/adcolony/sdk/cd;->c()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method
