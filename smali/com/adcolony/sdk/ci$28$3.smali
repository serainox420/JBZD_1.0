.class Lcom/adcolony/sdk/ci$28$3;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci$28;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/adcolony/sdk/ci$28;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci$28;Lcom/adcolony/sdk/bq;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/adcolony/sdk/ci$28$3;->c:Lcom/adcolony/sdk/ci$28;

    iput-object p3, p0, Lcom/adcolony/sdk/ci$28$3;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/adcolony/sdk/ci$28$3;->b:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 8

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 346
    const-string v0, "transactionId"

    iget-object v1, p0, Lcom/adcolony/sdk/ci$28$3;->a:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "] posting server call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/adcolony/sdk/bn;->aM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 350
    new-instance v7, Lcom/adcolony/sdk/ci$28$3$1;

    invoke-direct {v7, p0}, Lcom/adcolony/sdk/ci$28$3$1;-><init>(Lcom/adcolony/sdk/ci$28$3;)V

    .line 361
    invoke-static {}, Lcom/adcolony/sdk/ce;->c()Lcom/adcolony/sdk/ce;

    move-result-object v0

    .line 363
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    .line 364
    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v1

    sget-object v2, Lcom/adcolony/sdk/bn;->aM:Ljava/lang/String;

    .line 365
    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/ci$28$3;->b:Ljava/util/Map;

    const-string v3, "serverReward"

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 362
    invoke-virtual/range {v0 .. v7}, Lcom/adcolony/sdk/ce;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;ILcom/adcolony/sdk/bk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
