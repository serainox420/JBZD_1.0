.class abstract Lcom/adcolony/sdk/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/adcolony/sdk/bp;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/adcolony/sdk/bs;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bq;)V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;Lcom/adcolony/sdk/bp;)V

    .line 14
    return-void
.end method

.method constructor <init>(Lcom/adcolony/sdk/bq;Lcom/adcolony/sdk/bp;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;Lcom/adcolony/sdk/bp;Z)V

    .line 18
    return-void
.end method

.method constructor <init>(Lcom/adcolony/sdk/bq;Lcom/adcolony/sdk/bp;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v1, p0, Lcom/adcolony/sdk/bp;->b:Z

    .line 8
    iput-boolean v0, p0, Lcom/adcolony/sdk/bp;->c:Z

    .line 9
    iput-boolean v0, p0, Lcom/adcolony/sdk/bp;->d:Z

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adcolony/sdk/bp;->e:Lcom/adcolony/sdk/bs;

    .line 21
    iput-object p2, p0, Lcom/adcolony/sdk/bp;->a:Lcom/adcolony/sdk/bp;

    .line 22
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 23
    iput-boolean v1, p0, Lcom/adcolony/sdk/bp;->d:Z

    .line 24
    invoke-virtual {p1, p0}, Lcom/adcolony/sdk/bq;->a(Lcom/adcolony/sdk/bp;)V

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method declared-synchronized a(Lcom/adcolony/sdk/bs;)V
    .locals 1

    .prologue
    .line 45
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/adcolony/sdk/bp;->b:Z

    .line 46
    iput-object p1, p0, Lcom/adcolony/sdk/bp;->e:Lcom/adcolony/sdk/bs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/bn$a;->b:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {p0, p1, v0}, Lcom/adcolony/sdk/bp;->a(ZLcom/adcolony/sdk/bn$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZLcom/adcolony/sdk/bn$a;)V
    .locals 2

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/adcolony/sdk/bp;->b:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/bp;->d:Z

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Lcom/adcolony/sdk/bs;

    const-string v1, "Yvolver error when setSuccess"

    invoke-direct {v0, p2, v1}, Lcom/adcolony/sdk/bs;-><init>(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bp;->e:Lcom/adcolony/sdk/bs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bp;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()Lcom/adcolony/sdk/bs;
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bp;->e:Lcom/adcolony/sdk/bs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d()V
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/adcolony/sdk/bp;->c:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/bp;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized e()Z
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/bp;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f()Z
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/bp;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized g()Z
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/bp;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized h()Z
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/bp;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method i()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adcolony/sdk/bp;->a:Lcom/adcolony/sdk/bp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bp;->a:Lcom/adcolony/sdk/bp;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized j()Lcom/adcolony/sdk/bp;
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bp;->a:Lcom/adcolony/sdk/bp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
