.class Lcom/adcolony/sdk/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/adcolony/sdk/u;

.field static b:Lcom/adcolony/sdk/u;

.field static c:Lcom/adcolony/sdk/u;

.field static d:Lcom/adcolony/sdk/u;

.field static e:Lcom/adcolony/sdk/u;

.field static f:Lcom/adcolony/sdk/u;

.field static g:Lcom/adcolony/sdk/u;

.field static h:Lcom/adcolony/sdk/u;


# instance fields
.field i:I

.field j:Z

.field k:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5
    new-instance v0, Lcom/adcolony/sdk/u;

    invoke-direct {v0, v4, v1}, Lcom/adcolony/sdk/u;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/u;->a:Lcom/adcolony/sdk/u;

    .line 6
    new-instance v0, Lcom/adcolony/sdk/u;

    invoke-direct {v0, v4, v2}, Lcom/adcolony/sdk/u;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    .line 7
    new-instance v0, Lcom/adcolony/sdk/u;

    invoke-direct {v0, v3, v1}, Lcom/adcolony/sdk/u;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/u;->c:Lcom/adcolony/sdk/u;

    .line 8
    new-instance v0, Lcom/adcolony/sdk/u;

    invoke-direct {v0, v3, v2}, Lcom/adcolony/sdk/u;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    .line 9
    new-instance v0, Lcom/adcolony/sdk/u;

    invoke-direct {v0, v2, v1}, Lcom/adcolony/sdk/u;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    .line 10
    new-instance v0, Lcom/adcolony/sdk/u;

    invoke-direct {v0, v2, v2}, Lcom/adcolony/sdk/u;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/u;->f:Lcom/adcolony/sdk/u;

    .line 11
    new-instance v0, Lcom/adcolony/sdk/u;

    invoke-direct {v0, v1, v1}, Lcom/adcolony/sdk/u;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 12
    new-instance v0, Lcom/adcolony/sdk/u;

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/u;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/u;->k:Ljava/lang/StringBuilder;

    .line 22
    iput p1, p0, Lcom/adcolony/sdk/u;->i:I

    .line 23
    iput-boolean p2, p0, Lcom/adcolony/sdk/u;->j:Z

    .line 24
    return-void
.end method


# virtual methods
.method declared-synchronized a(C)Lcom/adcolony/sdk/u;
    .locals 3

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/u;->j:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/adcolony/sdk/w;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 39
    :goto_0
    monitor-exit p0

    return-object v0

    .line 33
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/u;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 36
    iget v0, p0, Lcom/adcolony/sdk/u;->i:I

    iget-object v1, p0, Lcom/adcolony/sdk/u;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adcolony/sdk/u;->j:Z

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/w;->a(ILjava/lang/String;Z)V

    .line 37
    iget-object v0, p0, Lcom/adcolony/sdk/u;->k:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v0, p0

    .line 39
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(D)Lcom/adcolony/sdk/u;
    .locals 3

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/u;->j:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/adcolony/sdk/w;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 87
    :goto_0
    monitor-exit p0

    return-object v0

    .line 86
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    iget-object v1, p0, Lcom/adcolony/sdk/u;->k:Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v0, v1}, Lcom/adcolony/sdk/au;->a(DILjava/lang/StringBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 87
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(I)Lcom/adcolony/sdk/u;
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/u;->j:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/adcolony/sdk/w;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 97
    :goto_0
    monitor-exit p0

    return-object v0

    .line 96
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/u;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 97
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/Object;)Lcom/adcolony/sdk/u;
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/u;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adcolony/sdk/u;->j:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/adcolony/sdk/w;->a:Z

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    if-nez p1, :cond_2

    .line 70
    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    :goto_0
    monitor-exit p0

    return-object p0

    .line 74
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;)Lcom/adcolony/sdk/u;
    .locals 3

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/u;->j:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/adcolony/sdk/w;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 61
    :goto_0
    monitor-exit p0

    return-object v0

    .line 49
    :cond_0
    if-nez p1, :cond_2

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/u;->k:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move-object v0, p0

    .line 61
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 56
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/u;->a(C)Lcom/adcolony/sdk/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)Lcom/adcolony/sdk/u;
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/u;->j:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/adcolony/sdk/w;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 107
    :goto_0
    monitor-exit p0

    return-object v0

    .line 106
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/u;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 107
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(D)Lcom/adcolony/sdk/u;
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/adcolony/sdk/u;->a(D)Lcom/adcolony/sdk/u;

    .line 119
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u;->a(C)Lcom/adcolony/sdk/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(I)Lcom/adcolony/sdk/u;
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u;->a(I)Lcom/adcolony/sdk/u;

    .line 125
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u;->a(C)Lcom/adcolony/sdk/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 113
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u;->a(C)Lcom/adcolony/sdk/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Z)Lcom/adcolony/sdk/u;
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u;->a(Z)Lcom/adcolony/sdk/u;

    .line 131
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u;->a(C)Lcom/adcolony/sdk/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
