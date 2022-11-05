.class Lcom/adcolony/sdk/ci$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:I

.field final synthetic f:Lcom/adcolony/sdk/ci;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1

    .prologue
    .line 438
    iput-object p1, p0, Lcom/adcolony/sdk/ci$3;->f:Lcom/adcolony/sdk/ci;

    iput-object p2, p0, Lcom/adcolony/sdk/ci$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/adcolony/sdk/ci$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/adcolony/sdk/ci$3;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/adcolony/sdk/ci$3;->d:J

    iput p7, p0, Lcom/adcolony/sdk/ci$3;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 441
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/adcolony/sdk/ci$3;->a:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/adcolony/sdk/ci$3;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/adcolony/sdk/ci$3;->c:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 445
    iget-object v2, p0, Lcom/adcolony/sdk/ci$3;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Invalid googleJsonString: empty"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 500
    :goto_0
    if-nez v0, :cond_0

    .line 501
    const-string v0, ""

    .line 503
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/adcolony/sdk/ci$3;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 504
    const-string v2, "productId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 509
    :goto_1
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->aB()Lcom/adcolony/sdk/bl;

    move-result-object v1

    const-string v2, "null value"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_0
    return-void

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/adcolony/sdk/ci$3;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 448
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Invalid purchaseSignature: empty"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 449
    :cond_2
    iget-object v2, p0, Lcom/adcolony/sdk/ci$3;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 450
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Invalid locale: empty"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 453
    :cond_3
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 454
    new-instance v4, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/adcolony/sdk/ci$3;->a:Ljava/lang/String;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 455
    const/4 v2, 0x0

    .line 456
    const-string v5, "orderId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 457
    const-string v2, "orderId"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 460
    :cond_4
    const-string v5, "productId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 461
    iget-wide v6, p0, Lcom/adcolony/sdk/ci$3;->d:J

    long-to-float v5, v6

    const v6, 0x49742400    # 1000000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    .line 462
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adcolony/sdk/bz;->i()Z

    move-result v6

    .line 464
    const-string v7, "iap_receipt_data"

    iget-object v8, p0, Lcom/adcolony/sdk/ci$3;->a:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v7, "iap_product_id"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    if-eqz v2, :cond_5

    .line 467
    const-string v4, "iap_transaction_id"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :cond_5
    const-string v2, "iap_price_locale"

    iget-object v4, p0, Lcom/adcolony/sdk/ci$3;->c:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string v2, "iap_signature"

    iget-object v4, p0, Lcom/adcolony/sdk/ci$3;->b:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v2, "iap_price"

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v2, "iap_service"

    const-string v4, "Google"

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v2, "in_game_currency_quantity"

    iget v4, p0, Lcom/adcolony/sdk/ci$3;->e:I

    .line 474
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 473
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    if-eqz v6, :cond_7

    .line 476
    const-string v2, "invisible"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :goto_2
    invoke-static {v3}, Lcom/adcolony/sdk/ci;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adcolony/sdk/bz;->g()Ljava/lang/String;

    move-result-object v4

    .line 483
    invoke-static {v2, v4}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "payloadSignature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 489
    iget-object v2, p0, Lcom/adcolony/sdk/ci$3;->f:Lcom/adcolony/sdk/ci;

    iget-object v2, v2, Lcom/adcolony/sdk/ci;->H:Ljava/util/Queue;

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v2, p0, Lcom/adcolony/sdk/ci$3;->f:Lcom/adcolony/sdk/ci;

    invoke-virtual {v2}, Lcom/adcolony/sdk/ci;->d()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON Error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6
    move v0, v1

    goto/16 :goto_0

    .line 478
    :cond_7
    :try_start_2
    const-string v2, "invisible"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 505
    :catch_1
    move-exception v1

    .line 506
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON Error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method
