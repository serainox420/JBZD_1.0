.class public final Lcom/flurry/sdk/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static k:I


# instance fields
.field public final a:I

.field public final b:Lcom/flurry/sdk/cs;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/av;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/flurry/sdk/hh;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/aw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/cs;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/ay;->c:Ljava/util/List;

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/ay;->l:Ljava/util/Map;

    .line 30
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/ay;->d:Ljava/util/LinkedList;

    .line 34
    iput-boolean v0, p0, Lcom/flurry/sdk/ay;->f:Z

    .line 35
    iput-boolean v0, p0, Lcom/flurry/sdk/ay;->g:Z

    .line 36
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/ay;->h:Z

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/sdk/ay;->j:Ljava/util/HashMap;

    .line 42
    sget v1, Lcom/flurry/sdk/ay;->k:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/flurry/sdk/ay;->k:I

    iput v1, p0, Lcom/flurry/sdk/ay;->a:I

    .line 43
    iput-object p1, p0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    move v1, v0

    .line 45
    :goto_0
    iget-object v0, p1, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/ay;->c:Ljava/util/List;

    new-instance v2, Lcom/flurry/sdk/av;

    invoke-direct {v2}, Lcom/flurry/sdk/av;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p1, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cn;

    iget-object v0, v0, Lcom/flurry/sdk/cn;->f:Ljava/lang/String;

    .line 49
    iget-object v2, p0, Lcom/flurry/sdk/ay;->l:Ljava/util/Map;

    new-instance v3, Lcom/flurry/sdk/aw;

    invoke-direct {v3, v0}, Lcom/flurry/sdk/aw;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/flurry/sdk/az;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flurry/sdk/ay;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/aw;

    .line 1018
    iget-object v0, v0, Lcom/flurry/sdk/aw;->a:Lcom/flurry/sdk/az;

    .line 66
    return-object v0
.end method

.method public final a(I)Lcom/flurry/sdk/cn;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    iget-object v0, v0, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    .line 79
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 80
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cn;

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    iget-object v0, v0, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    iget v1, p0, Lcom/flurry/sdk/ay;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cn;

    iget-object v0, v0, Lcom/flurry/sdk/cn;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)Lcom/flurry/sdk/bd;
    .locals 6

    .prologue
    .line 90
    invoke-static {}, Lcom/flurry/sdk/bd;->values()[Lcom/flurry/sdk/bd;

    move-result-object v3

    .line 91
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 92
    invoke-virtual {v1}, Lcom/flurry/sdk/bd;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1100
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ay;->a(I)Lcom/flurry/sdk/cn;

    move-result-object v0

    .line 1101
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/flurry/sdk/cn;->d:Lcom/flurry/sdk/cr;

    iget-object v0, v0, Lcom/flurry/sdk/cr;->d:Ljava/lang/String;

    .line 92
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 96
    :goto_2
    return-object v0

    .line 1101
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 91
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 96
    :cond_2
    sget-object v0, Lcom/flurry/sdk/bd;->e:Lcom/flurry/sdk/bd;

    goto :goto_2
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/de;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    iget-object v0, v0, Lcom/flurry/sdk/cs;->z:Lcom/flurry/sdk/dd;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    iget-object v0, v0, Lcom/flurry/sdk/cs;->z:Lcom/flurry/sdk/dd;

    iget-object v0, v0, Lcom/flurry/sdk/dd;->f:Ljava/util/List;

    .line 152
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Lcom/flurry/sdk/bd;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flurry/sdk/ay;->e:I

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ay;->b(I)Lcom/flurry/sdk/bd;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/sdk/bd;->e:Lcom/flurry/sdk/bd;

    goto :goto_0
.end method

.method public final c(I)Lcom/flurry/sdk/fr;
    .locals 1

    .prologue
    .line 128
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ay;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ay;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/av;

    .line 2042
    iget-object v0, v0, Lcom/flurry/sdk/av;->a:Lcom/flurry/sdk/fr;

    goto :goto_0
.end method

.method public final declared-synchronized d()Lcom/flurry/sdk/hh;
    .locals 2

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/ay;->d:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 271
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ay;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/flurry/sdk/ay;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hh;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 270
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ay;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 201
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2059
    :goto_0
    return-object v0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ay;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/av;

    .line 2058
    iget-object v1, v0, Lcom/flurry/sdk/av;->c:Ljava/util/List;

    if-nez v1, :cond_2

    .line 2059
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2062
    :cond_2
    iget-object v0, v0, Lcom/flurry/sdk/av;->c:Ljava/util/List;

    goto :goto_0
.end method

.method public final declared-synchronized e()Lcom/flurry/sdk/hh;
    .locals 2

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/ay;->d:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ay;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/flurry/sdk/ay;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hh;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 279
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e(I)Z
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ay;->d(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
