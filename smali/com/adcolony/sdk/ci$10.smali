.class Lcom/adcolony/sdk/ci$10;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci;->b(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/adcolony/sdk/ci;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci;Lcom/adcolony/sdk/bq;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/adcolony/sdk/ci$10;->b:Lcom/adcolony/sdk/ci;

    iput-object p3, p0, Lcom/adcolony/sdk/ci$10;->a:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 8

    .prologue
    .line 703
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAP send aborted"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    :goto_0
    monitor-exit p0

    return-void

    .line 708
    :cond_0
    :try_start_1
    new-instance v7, Lcom/adcolony/sdk/ci$10$1;

    invoke-direct {v7, p0}, Lcom/adcolony/sdk/ci$10$1;-><init>(Lcom/adcolony/sdk/ci$10;)V

    .line 714
    invoke-static {}, Lcom/adcolony/sdk/ce;->c()Lcom/adcolony/sdk/ce;

    move-result-object v0

    .line 715
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    .line 716
    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v1

    sget-object v2, Lcom/adcolony/sdk/bn;->aE:Ljava/lang/String;

    .line 717
    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/ci$10;->a:Ljava/util/Map;

    const-string v3, "amazonIap"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 714
    invoke-virtual/range {v0 .. v7}, Lcom/adcolony/sdk/ce;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;ILcom/adcolony/sdk/bk;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 703
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
