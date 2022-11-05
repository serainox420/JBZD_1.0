.class public Lcom/flurry/sdk/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/flurry/sdk/r;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/flurry/sdk/kd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kd",
            "<",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/flurry/sdk/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/p;->b:Landroid/util/SparseArray;

    .line 21
    new-instance v0, Lcom/flurry/sdk/kd;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/kd;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/flurry/sdk/p;->c:Lcom/flurry/sdk/kd;

    .line 24
    return-void
.end method

.method private declared-synchronized d(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/r;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    if-nez p1, :cond_0

    .line 55
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 58
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/flurry/sdk/p;->c:Lcom/flurry/sdk/kd;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/kd;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(I)Lcom/flurry/sdk/r;
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/p;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/p;->c:Lcom/flurry/sdk/kd;

    invoke-virtual {v0}, Lcom/flurry/sdk/kd;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/r;

    .line 95
    invoke-interface {v0}, Lcom/flurry/sdk/r;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 62
    monitor-enter p0

    if-nez p1, :cond_1

    .line 69
    :cond_0
    monitor-exit p0

    return-void

    .line 66
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/p;->c:Lcom/flurry/sdk/kd;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/kd;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/r;

    .line 67
    invoke-interface {v0}, Lcom/flurry/sdk/r;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lcom/flurry/sdk/r;)V
    .locals 2

    .prologue
    .line 32
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 36
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/p;->b:Landroid/util/SparseArray;

    invoke-interface {p2}, Lcom/flurry/sdk/r;->e()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/flurry/sdk/p;->c:Lcom/flurry/sdk/kd;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/kd;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 5

    .prologue
    .line 103
    monitor-enter p0

    const/4 v1, 0x0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/p;->c:Lcom/flurry/sdk/kd;

    invoke-virtual {v0}, Lcom/flurry/sdk/kd;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/r;

    .line 105
    instance-of v3, v0, Lcom/flurry/sdk/x;

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/flurry/sdk/r;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 108
    goto :goto_0

    .line 109
    :cond_0
    const/4 v0, 0x3

    sget-object v2, Lcom/flurry/sdk/p;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Number of expired ads: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 72
    monitor-enter p0

    if-nez p1, :cond_1

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/p;->c:Lcom/flurry/sdk/kd;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/kd;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/r;

    .line 77
    invoke-interface {v0}, Lcom/flurry/sdk/r;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;Lcom/flurry/sdk/r;)Z
    .locals 2

    .prologue
    .line 41
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    monitor-exit p0

    return v0

    .line 45
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/p;->b:Landroid/util/SparseArray;

    invoke-interface {p2}, Lcom/flurry/sdk/r;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/p;->c:Lcom/flurry/sdk/kd;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/kd;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 82
    monitor-enter p0

    if-nez p1, :cond_1

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/flurry/sdk/p;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/r;

    .line 89
    invoke-interface {v0}, Lcom/flurry/sdk/r;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
