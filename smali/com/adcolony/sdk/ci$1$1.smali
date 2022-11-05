.class Lcom/adcolony/sdk/ci$1$1;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ci$1;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci$1;Lcom/adcolony/sdk/bq;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adcolony/sdk/ci$1$1;->a:Lcom/adcolony/sdk/ci$1;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 89
    const-string v3, "reward_name"

    iget-object v4, p0, Lcom/adcolony/sdk/ci$1$1;->a:Lcom/adcolony/sdk/ci$1;

    iget-object v4, v4, Lcom/adcolony/sdk/ci$1;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v3, Lcom/adcolony/sdk/ci;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/adcolony/sdk/ci$1$1;->a:Lcom/adcolony/sdk/ci$1;

    iget-boolean v4, v4, Lcom/adcolony/sdk/ci$1;->b:Z

    if-eqz v4, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 93
    const-string v0, "rewardKey"

    iget-object v1, p0, Lcom/adcolony/sdk/ci$1$1;->a:Lcom/adcolony/sdk/ci$1;

    iget-object v1, v1, Lcom/adcolony/sdk/ci$1;->c:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v7, Lcom/adcolony/sdk/ci$1$1$1;

    invoke-direct {v7, p0}, Lcom/adcolony/sdk/ci$1$1$1;-><init>(Lcom/adcolony/sdk/ci$1$1;)V

    .line 100
    invoke-static {}, Lcom/adcolony/sdk/ce;->c()Lcom/adcolony/sdk/ce;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v1

    sget-object v3, Lcom/adcolony/sdk/bn;->aG:Ljava/lang/String;

    .line 104
    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "customReward"

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 101
    invoke-virtual/range {v0 .. v7}, Lcom/adcolony/sdk/ce;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;ILcom/adcolony/sdk/bk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :cond_0
    move v0, v1

    .line 90
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
