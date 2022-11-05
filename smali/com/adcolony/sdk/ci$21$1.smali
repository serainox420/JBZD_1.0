.class Lcom/adcolony/sdk/ci$21$1;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci$21;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lcom/adcolony/sdk/ci$21;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci$21;Lcom/adcolony/sdk/bq;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/adcolony/sdk/ci$21$1;->b:Lcom/adcolony/sdk/ci$21;

    iput-object p3, p0, Lcom/adcolony/sdk/ci$21$1;->a:Lorg/json/JSONArray;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 8

    .prologue
    .line 1240
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1241
    const-string v0, "transactions"

    iget-object v1, p0, Lcom/adcolony/sdk/ci$21$1;->a:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    new-instance v7, Lcom/adcolony/sdk/ci$21$1$1;

    invoke-direct {v7, p0}, Lcom/adcolony/sdk/ci$21$1$1;-><init>(Lcom/adcolony/sdk/ci$21$1;)V

    .line 1248
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finishRedemptionTransactions successful. calling endpoint"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1249
    invoke-static {}, Lcom/adcolony/sdk/ce;->c()Lcom/adcolony/sdk/ce;

    move-result-object v0

    .line 1251
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    .line 1252
    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v1

    sget-object v3, Lcom/adcolony/sdk/bn;->aL:Ljava/lang/String;

    .line 1253
    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "digiFinish"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1250
    invoke-virtual/range {v0 .. v7}, Lcom/adcolony/sdk/ce;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;ILcom/adcolony/sdk/bk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1257
    monitor-exit p0

    return-void

    .line 1240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
