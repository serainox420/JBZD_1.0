.class Lcom/adcolony/sdk/ck$6;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ck;->f()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ck;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ck;Lcom/adcolony/sdk/bq;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/adcolony/sdk/ck$6;->a:Lcom/adcolony/sdk/ck;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 387
    monitor-enter p0

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 388
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 389
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :try_start_1
    iget-object v1, p0, Lcom/adcolony/sdk/ck$6;->a:Lcom/adcolony/sdk/ck;

    invoke-static {v1}, Lcom/adcolony/sdk/ck;->b(Lcom/adcolony/sdk/ck;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pre send queue:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/adcolony/sdk/ck$6;->a:Lcom/adcolony/sdk/ck;

    invoke-static {v5}, Lcom/adcolony/sdk/ck;->a(Lcom/adcolony/sdk/ck;)Ljava/util/Queue;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v1, v2, v5}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 393
    iget-object v1, p0, Lcom/adcolony/sdk/ck$6;->a:Lcom/adcolony/sdk/ck;

    invoke-static {v1}, Lcom/adcolony/sdk/ck;->a(Lcom/adcolony/sdk/ck;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 394
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    .line 395
    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bm;->y()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 396
    add-int/lit8 v2, v1, 0x1

    .line 397
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 398
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 399
    sget-object v7, Lcom/adcolony/sdk/bn;->as:Ljava/lang/String;

    sget-object v8, Lcom/adcolony/sdk/bn;->as:Ljava/lang/String;

    .line 400
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 399
    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    sget-object v7, Lcom/adcolony/sdk/bn;->at:Ljava/lang/String;

    sget-object v8, Lcom/adcolony/sdk/bn;->at:Ljava/lang/String;

    .line 402
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 401
    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    sget-object v7, Lcom/adcolony/sdk/bn;->au:Ljava/lang/String;

    sget-object v8, Lcom/adcolony/sdk/bn;->au:Ljava/lang/String;

    .line 404
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 403
    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 407
    const-string v8, "op"

    const-string v9, "op"

    .line 408
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 407
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    const-string v8, "stat"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    const-string v1, "time"

    const-string v8, "time"

    .line 411
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 410
    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    sget-object v1, Lcom/adcolony/sdk/bn;->ad:Ljava/lang/String;

    sget-object v8, Lcom/adcolony/sdk/bn;->ad:Ljava/lang/String;

    .line 413
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 412
    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string v1, "stat_transaction_id"

    const-string v8, "stat_transaction_id"

    .line 415
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 414
    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    const-string v1, "checksum"

    const-string v8, "checksum"

    .line 417
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 416
    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/adcolony/sdk/bn;->as:Ljava/lang/String;

    .line 420
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v1, "stat_transaction_id"

    .line 421
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v8, Lcom/adcolony/sdk/bn;->au:Ljava/lang/String;

    .line 422
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/adcolony/sdk/bz;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    const-string v8, "checksum"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    move v1, v2

    .line 433
    goto/16 :goto_0

    .line 428
    :cond_0
    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 435
    :catch_0
    move-exception v0

    .line 436
    :try_start_2
    new-instance v1, Lcom/adcolony/sdk/bs;

    sget-object v2, Lcom/adcolony/sdk/bn$a;->t:Lcom/adcolony/sdk/bn$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred while flushing STAT queue->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 438
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adcolony/sdk/bs;-><init>(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;)V

    .line 439
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    sget-object v3, Lcom/adcolony/sdk/bn$a;->t:Lcom/adcolony/sdk/bn$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurred while flushing STAT queue->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 441
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 440
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Lcom/adcolony/sdk/bn$a;Ljava/lang/String;Z)V

    .line 442
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/ck$6;->a(Lcom/adcolony/sdk/bs;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    :goto_2
    monitor-exit p0

    return-void

    .line 446
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/adcolony/sdk/ck$6;->a:Lcom/adcolony/sdk/ck;

    invoke-static {v0}, Lcom/adcolony/sdk/ck;->b(Lcom/adcolony/sdk/ck;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no stats in array"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 448
    invoke-virtual {p0}, Lcom/adcolony/sdk/ck$6;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 452
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/adcolony/sdk/ck$6;->a:Lcom/adcolony/sdk/ck;

    invoke-static {v1}, Lcom/adcolony/sdk/ck;->b(Lcom/adcolony/sdk/ck;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "statsParam: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v1, v2, v5}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 455
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 456
    const-string v1, "data"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 459
    const-string v0, "success"

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v0, "stats"

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v0, "failed"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v7, Lcom/adcolony/sdk/ck$6$1;

    invoke-direct {v7, p0}, Lcom/adcolony/sdk/ck$6$1;-><init>(Lcom/adcolony/sdk/ck$6;)V

    .line 469
    invoke-static {}, Lcom/adcolony/sdk/ce;->c()Lcom/adcolony/sdk/ce;

    move-result-object v0

    .line 471
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v1

    sget-object v3, Lcom/adcolony/sdk/bn;->aJ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "stats"

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 470
    invoke-virtual/range {v0 .. v7}, Lcom/adcolony/sdk/ce;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;ILcom/adcolony/sdk/bk;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method
