.class public final Lcom/flurry/sdk/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/flurry/sdk/v;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/flurry/sdk/kd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kd",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/w;->a:Landroid/util/SparseArray;

    .line 20
    new-instance v0, Lcom/flurry/sdk/kd;

    invoke-direct {v0}, Lcom/flurry/sdk/kd;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/w;->b:Lcom/flurry/sdk/kd;

    .line 23
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)Lcom/flurry/sdk/v;
    .locals 1

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/w;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/sdk/v;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 66
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 87
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 72
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/w;->b:Lcom/flurry/sdk/kd;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/kd;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/v;

    .line 74
    invoke-virtual {v0}, Lcom/flurry/sdk/v;->f()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    :goto_1
    if-eqz v0, :cond_1

    .line 83
    iget-object v1, p0, Lcom/flurry/sdk/w;->b:Lcom/flurry/sdk/kd;

    invoke-virtual {v1, p2, v0}, Lcom/flurry/sdk/kd;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Lcom/flurry/sdk/w;->b:Lcom/flurry/sdk/kd;

    invoke-virtual {v1, p2, v0}, Lcom/flurry/sdk/kd;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Lcom/flurry/sdk/v;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 52
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 57
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/flurry/sdk/w;->b:Lcom/flurry/sdk/kd;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/kd;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/w;->b:Lcom/flurry/sdk/kd;

    invoke-virtual {v0}, Lcom/flurry/sdk/kd;->d()Ljava/util/Collection;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/v;

    .line 2386
    iget-object v0, v0, Lcom/flurry/sdk/v;->e:Lcom/flurry/sdk/dv;

    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 149
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 103
    monitor-enter p0

    if-nez p1, :cond_1

    .line 113
    :cond_0
    monitor-exit p0

    return-void

    .line 107
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/w;->b:Lcom/flurry/sdk/kd;

    invoke-virtual {v0}, Lcom/flurry/sdk/kd;->d()Ljava/util/Collection;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/v;

    .line 109
    invoke-virtual {v0}, Lcom/flurry/sdk/v;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {v0}, Lcom/flurry/sdk/v;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/v;)V
    .locals 2

    .prologue
    .line 30
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 34
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/w;->a:Landroid/util/SparseArray;

    .line 1219
    iget v1, p3, Lcom/flurry/sdk/v;->b:I

    .line 34
    invoke-virtual {v0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/flurry/sdk/w;->b:Lcom/flurry/sdk/kd;

    invoke-virtual {v0, p2, p3}, Lcom/flurry/sdk/kd;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/flurry/sdk/v;)Z
    .locals 2

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    monitor-exit p0

    return v0

    .line 43
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/w;->a:Landroid/util/SparseArray;

    .line 2219
    iget v1, p2, Lcom/flurry/sdk/v;->b:I

    .line 43
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 44
    iget-object v0, p0, Lcom/flurry/sdk/w;->b:Lcom/flurry/sdk/kd;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/kd;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 116
    monitor-enter p0

    if-nez p1, :cond_1

    .line 126
    :cond_0
    monitor-exit p0

    return-void

    .line 120
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/w;->b:Lcom/flurry/sdk/kd;

    invoke-virtual {v0}, Lcom/flurry/sdk/kd;->d()Ljava/util/Collection;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/v;

    .line 122
    invoke-virtual {v0}, Lcom/flurry/sdk/v;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    invoke-virtual {v0}, Lcom/flurry/sdk/v;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 91
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/sdk/v;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/flurry/sdk/w;->b:Lcom/flurry/sdk/kd;

    invoke-virtual {v1, p2, v0}, Lcom/flurry/sdk/kd;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v0}, Lcom/flurry/sdk/v;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 129
    monitor-enter p0

    if-nez p1, :cond_1

    .line 142
    :cond_0
    monitor-exit p0

    return-void

    .line 133
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/w;->b:Lcom/flurry/sdk/kd;

    invoke-virtual {v0}, Lcom/flurry/sdk/kd;->d()Ljava/util/Collection;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 135
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/v;

    .line 137
    invoke-virtual {v0}, Lcom/flurry/sdk/v;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 139
    invoke-virtual {v0}, Lcom/flurry/sdk/v;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
