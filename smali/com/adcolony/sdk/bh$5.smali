.class Lcom/adcolony/sdk/bh$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bh;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/adcolony/sdk/bk;

.field final synthetic d:Lcom/adcolony/sdk/bh;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bh;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/adcolony/sdk/bh$5;->d:Lcom/adcolony/sdk/bh;

    iput-object p2, p0, Lcom/adcolony/sdk/bh$5;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/adcolony/sdk/bh$5;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/adcolony/sdk/bh$5;->c:Lcom/adcolony/sdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 467
    iget-object v0, p0, Lcom/adcolony/sdk/bh$5;->a:Ljava/util/Map;

    const-string v1, "product_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 470
    const/4 v5, 0x0

    .line 473
    iget-object v1, p0, Lcom/adcolony/sdk/bh$5;->b:Ljava/util/Map;

    const-string v4, "consumable"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 474
    iget-object v1, p0, Lcom/adcolony/sdk/bh$5;->b:Ljava/util/Map;

    const-string v4, "consumable"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 475
    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_0
    move v3, v4

    move v4, v1

    .line 478
    :goto_1
    iget-object v1, p0, Lcom/adcolony/sdk/bh$5;->b:Ljava/util/Map;

    const-string v6, "transaction_id"

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/adcolony/sdk/bh$5;->b:Ljava/util/Map;

    const-string v5, "transaction_id"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 482
    :goto_2
    const-string v5, "digitalRedemptions"

    invoke-static {v5, v2}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    .line 484
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 485
    const-string v6, "status"

    sget v7, Lcom/adcolony/sdk/ci;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v6, "consumable"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v3, "transactionId"

    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v3, "digitalRedemptions"

    invoke-static {v3, v2}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 491
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->ay()Lcom/adcolony/sdk/ci;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/ci;->a(Ljava/lang/String;)V

    .line 493
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 494
    const-string v3, "productId"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v0, "consumable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v0, "transactionId"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v0, p0, Lcom/adcolony/sdk/bh$5;->c:Lcom/adcolony/sdk/bk;

    sget-object v1, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    .line 499
    return-void

    :cond_0
    move v1, v3

    .line 475
    goto :goto_0

    :cond_1
    move-object v1, v5

    goto :goto_2

    :cond_2
    move v4, v3

    move v3, v2

    goto :goto_1
.end method
