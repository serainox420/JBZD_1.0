.class Lcom/adcolony/sdk/bg$29;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/bp;Ljava/util/Map;Ljava/lang/String;)Lcom/adcolony/sdk/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;Lcom/adcolony/sdk/bp;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/adcolony/sdk/bg$29;->c:Lcom/adcolony/sdk/bg;

    iput-object p4, p0, Lcom/adcolony/sdk/bg$29;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/adcolony/sdk/bg$29;->b:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;Lcom/adcolony/sdk/bp;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 9

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$29;->c:Lcom/adcolony/sdk/bg;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adcolony/sdk/bg;->C:Z

    .line 458
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg$29;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg$29;->j()Lcom/adcolony/sdk/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bp;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg$29;->d()V

    .line 466
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$29;->c:Lcom/adcolony/sdk/bg;

    iget-boolean v0, v0, Lcom/adcolony/sdk/bg;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 508
    :goto_1
    monitor-exit p0

    return-void

    .line 462
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg$29;->j()Lcom/adcolony/sdk/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bp;->c()Lcom/adcolony/sdk/bs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg$29;->a(Lcom/adcolony/sdk/bs;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 471
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/adcolony/sdk/bg$29;->c:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->Q:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/adcolony/sdk/bg$29;->c:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid API key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 478
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 479
    iget-object v0, p0, Lcom/adcolony/sdk/bg$29;->c:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bo;->o()Ljava/lang/String;

    move-result-object v0

    .line 480
    const-string v1, "data"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v0, "reason"

    iget-object v1, p0, Lcom/adcolony/sdk/bg$29;->a:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcom/adcolony/sdk/bg$29;->c:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->P:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 483
    const-string v0, "s2s_session_token"

    iget-object v1, p0, Lcom/adcolony/sdk/bg$29;->c:Lcom/adcolony/sdk/bg;

    iget-object v1, v1, Lcom/adcolony/sdk/bg;->P:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_4
    iget-object v0, p0, Lcom/adcolony/sdk/bg$29;->c:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->l:Lcom/adcolony/sdk/be;

    invoke-virtual {v0}, Lcom/adcolony/sdk/be;->b()Ljava/util/Map;

    .line 491
    iget-object v0, p0, Lcom/adcolony/sdk/bg$29;->c:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->l:Lcom/adcolony/sdk/be;

    invoke-virtual {v0}, Lcom/adcolony/sdk/be;->e()Lorg/json/JSONArray;

    move-result-object v0

    .line 493
    const-string v1, "asset_signatures"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    new-instance v8, Lcom/adcolony/sdk/bg$29$1;

    invoke-direct {v8, p0}, Lcom/adcolony/sdk/bg$29$1;-><init>(Lcom/adcolony/sdk/bg$29;)V

    .line 503
    invoke-static {}, Lcom/adcolony/sdk/ce;->c()Lcom/adcolony/sdk/ce;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/bg$29;->c:Lcom/adcolony/sdk/bg;

    iget-object v2, p0, Lcom/adcolony/sdk/bg$29;->b:Ljava/util/Map;

    .line 504
    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/bg;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bg$29;->c:Lcom/adcolony/sdk/bg;

    iget-object v2, v2, Lcom/adcolony/sdk/bg;->m:Lcom/adcolony/sdk/bm;

    sget-object v4, Lcom/adcolony/sdk/bn;->aD:Ljava/lang/String;

    .line 505
    invoke-virtual {v2, v4}, Lcom/adcolony/sdk/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "init"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 504
    invoke-virtual/range {v0 .. v8}, Lcom/adcolony/sdk/ce;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;ILcom/adcolony/sdk/bk;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
