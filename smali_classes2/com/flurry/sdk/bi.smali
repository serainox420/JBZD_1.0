.class public Lcom/flurry/sdk/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/bh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/flurry/sdk/bi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bi;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bi;->b:Ljava/util/HashMap;

    .line 22
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/bh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/flurry/sdk/bi;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/b;)V
    .locals 6

    .prologue
    .line 29
    monitor-enter p0

    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1039
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 2078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 2109
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    iget-object v0, v0, Lcom/flurry/sdk/cs;->g:Ljava/util/List;

    .line 2110
    if-eqz v0, :cond_5

    .line 2114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cz;

    .line 2115
    sget-object v2, Lcom/flurry/sdk/da;->c:Lcom/flurry/sdk/da;

    iget-object v3, v0, Lcom/flurry/sdk/cz;->a:Lcom/flurry/sdk/da;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/da;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 35
    :goto_1
    if-eqz v1, :cond_0

    .line 40
    iget-object v2, v1, Lcom/flurry/sdk/cz;->b:Ljava/lang/String;

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/bi;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/bh;

    .line 46
    if-nez v0, :cond_3

    .line 47
    new-instance v0, Lcom/flurry/sdk/bh;

    iget-wide v4, v1, Lcom/flurry/sdk/cz;->e:J

    invoke-direct {v0, v2, v4, v5}, Lcom/flurry/sdk/bh;-><init>(Ljava/lang/String;J)V

    .line 48
    iget-object v1, p0, Lcom/flurry/sdk/bi;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_3
    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 3079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 4043
    iput-object v1, v0, Lcom/flurry/sdk/bh;->c:Ljava/lang/String;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4051
    iput-wide v2, v0, Lcom/flurry/sdk/bh;->e:J

    .line 54
    sget-object v1, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    iget-object v2, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5047
    iput-wide v2, v0, Lcom/flurry/sdk/bh;->d:J

    .line 57
    :cond_4
    iget-object v1, p1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 5079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 6054
    iput-object v1, v0, Lcom/flurry/sdk/bh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2120
    :cond_5
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 8

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/bi;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/bh;

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7037
    iget-wide v4, v0, Lcom/flurry/sdk/bh;->e:J

    .line 8025
    iget-wide v6, v0, Lcom/flurry/sdk/bh;->b:J

    .line 66
    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/flurry/sdk/bi;->b:Ljava/util/HashMap;

    .line 9021
    iget-object v0, v0, Lcom/flurry/sdk/bh;->a:Ljava/lang/String;

    .line 67
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_1
    monitor-exit p0

    return-void
.end method
