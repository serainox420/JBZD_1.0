.class abstract Lcom/adcolony/sdk/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "digitalPackages"

.field static final b:Ljava/lang/String; = "digitalRedemptions"

.field static final c:Ljava/lang/String; = "customRewards"

.field static final d:Ljava/lang/String; = "googleIap"

.field static final e:Ljava/lang/String; = "amazonIap"

.field static final f:Ljava/lang/String; = "productId"

.field static final g:Ljava/lang/String; = "consumable"

.field static final h:Ljava/lang/String; = "invisible"

.field static final i:Ljava/lang/String; = "transactionId"

.field static final j:I = 0x0

.field static final k:I = 0x1

.field static final l:Ljava/lang/String; = "transactions"

.field static m:Lcom/adcolony/sdk/by;


# instance fields
.field private n:Lcom/adcolony/sdk/bu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/adcolony/sdk/by;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/by;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/adcolony/sdk/bh;->m:Lcom/adcolony/sdk/by;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/adcolony/sdk/bu;

    invoke-direct {v0}, Lcom/adcolony/sdk/bu;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bh;->n:Lcom/adcolony/sdk/bu;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public declared-synchronized a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/adcolony/sdk/bk;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/bk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/adcolony/sdk/bh;->n:Lcom/adcolony/sdk/bu;

    new-instance v0, Lcom/adcolony/sdk/bh$1;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p6

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/adcolony/sdk/bh$1;-><init>(Lcom/adcolony/sdk/bh;Ljava/lang/String;Lcom/adcolony/sdk/bk;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v9, v0}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;ILcom/adcolony/sdk/bk;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/adcolony/sdk/bk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/adcolony/sdk/bh;->n:Lcom/adcolony/sdk/bu;

    new-instance v0, Lcom/adcolony/sdk/bh$3;

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p8

    move/from16 v4, p5

    move/from16 v5, p7

    move-object v6, p1

    move-object v7, p4

    move-object v8, p3

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/adcolony/sdk/bh$3;-><init>(Lcom/adcolony/sdk/bh;Ljava/lang/String;Lcom/adcolony/sdk/bk;ZILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v10, v0}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;ILcom/adcolony/sdk/bk;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/adcolony/sdk/bk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callEndpoint"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 246
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->r()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/adcolony/sdk/bh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;ILcom/adcolony/sdk/bk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_0
    monitor-exit p0

    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 620
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bh;->n:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bh$9;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bh$9;-><init>(Lcom/adcolony/sdk/bh;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    monitor-exit p0

    return-void

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public declared-synchronized a(Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adcolony/sdk/bk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bh;->n:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bh$6;

    invoke-direct {v1, p0, p1, p3}, Lcom/adcolony/sdk/bh$6;-><init>(Lcom/adcolony/sdk/bh;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    monitor-exit p0

    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/adcolony/sdk/bk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/bk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bh;->n:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bh$4;

    invoke-direct {v1, p0, p1, p4}, Lcom/adcolony/sdk/bh$4;-><init>(Lcom/adcolony/sdk/bh;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adcolony/sdk/bk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 464
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bh;->n:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bh$5;

    invoke-direct {v1, p0, p2, p1, p4}, Lcom/adcolony/sdk/bh$5;-><init>(Lcom/adcolony/sdk/bh;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    monitor-exit p0

    return-void

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bn$a;Lcom/adcolony/sdk/bk;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adcolony/sdk/bn$a;",
            "Lcom/adcolony/sdk/bk;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 752
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleGoogleIap was called"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 761
    const-string v2, ""

    .line 762
    const-string v3, "retry"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 763
    const-string v0, "retry"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v4, v0

    .line 766
    :goto_0
    const-string v0, "iap_product_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    const-string v0, "iap_product_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 770
    :cond_0
    const-string v0, "currency_bonus"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    const-string v0, "currency_bonus"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 772
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 773
    const-string v3, "value"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string v3, "iap_transaction_id"

    const-string v5, "iap_transaction_id"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v3, "iap_product_id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v3

    const-string v5, "iapCurrencyBonusAvailable"

    sget-object v6, Lcom/adcolony/sdk/bn$b;->e:Lcom/adcolony/sdk/bn$b;

    const/4 v7, 0x0

    .line 777
    invoke-virtual {v3, v5, v6, v7, v0}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;Lcom/adcolony/sdk/bn$b;ZLjava/util/Map;)V

    .line 779
    :cond_1
    const-string v0, "iap_transaction_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 780
    sget-object v0, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    if-ne p4, v0, :cond_4

    .line 782
    if-nez v4, :cond_2

    .line 783
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ay()Lcom/adcolony/sdk/ci;

    move-result-object v4

    const-string v0, "iap_transaction_id"

    .line 785
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/adcolony/sdk/ci;->f(Ljava/lang/String;)V

    .line 788
    :cond_2
    invoke-virtual {p0}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "IAP reward success"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 790
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adcolony/sdk/bz;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 792
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 793
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 794
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aB()Lcom/adcolony/sdk/bl;

    move-result-object v0

    .line 795
    invoke-virtual {v0, v2, v1, v3}, Lcom/adcolony/sdk/bl;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 796
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 797
    const-string v3, "value"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string v1, "iap_transaction_id"

    const-string v3, "iap_transaction_id"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    const-string v1, "iap_product_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "iapCurrencyBonusGranted"

    sget-object v3, Lcom/adcolony/sdk/bn$b;->e:Lcom/adcolony/sdk/bn$b;

    const/4 v4, 0x0

    .line 801
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;Lcom/adcolony/sdk/bn$b;ZLjava/util/Map;)V

    .line 836
    :cond_3
    :goto_1
    invoke-virtual {p5, p4}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :goto_2
    monitor-exit p0

    return-void

    .line 806
    :cond_4
    :try_start_1
    const-string v4, "IAP Reward Failure: "

    .line 807
    const-string v0, ""

    .line 808
    const-string v5, ""

    .line 809
    const-string v0, "error_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 810
    const-string v0, "error_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 811
    sget-object p4, Lcom/adcolony/sdk/bn$a;->q:Lcom/adcolony/sdk/bn$a;

    .line 812
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "errorId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 814
    const-string v6, "invalidPayloadSignature"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 815
    sget-object p4, Lcom/adcolony/sdk/bn$a;->A:Lcom/adcolony/sdk/bn$a;

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Please check your Android secret key"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 818
    :cond_5
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 819
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 820
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    .line 823
    :cond_6
    new-instance v6, Lcom/adcolony/sdk/bs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IAP failure "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p4, v0}, Lcom/adcolony/sdk/bs;-><init>(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;)V

    .line 824
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 825
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 826
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aB()Lcom/adcolony/sdk/bl;

    move-result-object v7

    const-string v0, "iap_product_id"

    .line 827
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 828
    invoke-virtual {v6}, Lcom/adcolony/sdk/bs;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 827
    invoke-virtual {v7, v0, v6}, Lcom/adcolony/sdk/bl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_7
    invoke-virtual {p0}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 834
    invoke-virtual {p4}, Lcom/adcolony/sdk/bn$a;->ordinal()I

    move-result v4

    .line 833
    invoke-virtual/range {v0 .. v5}, Lcom/adcolony/sdk/bz;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 837
    :catch_0
    move-exception v0

    .line 838
    :try_start_2
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "caught exception in Networking"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 752
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    move v4, v0

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/adcolony/sdk/bk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/bk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bh;->n:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bh$2;

    invoke-direct {v1, p0, p1, p4, p5}, Lcom/adcolony/sdk/bh$2;-><init>(Lcom/adcolony/sdk/bh;Ljava/util/Map;Ljava/lang/String;Lcom/adcolony/sdk/bk;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    monitor-exit p0

    return-void

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b()V
.end method

.method protected abstract b(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public declared-synchronized b(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adcolony/sdk/bk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 506
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bn$a;Lcom/adcolony/sdk/bk;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adcolony/sdk/bn$a;",
            "Lcom/adcolony/sdk/bk;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 852
    monitor-enter p0

    .line 854
    :try_start_0
    const-string v2, "An error occurred while handleAmazonIap"

    .line 855
    const-string v2, "retry"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 856
    const-string v0, "retry"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 859
    :cond_0
    const-string v2, "currency_bonus"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 862
    :cond_1
    const-string v2, "iap_transaction_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 863
    const-string v2, "iap_product_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 864
    sget-object v4, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    if-ne p4, v4, :cond_4

    .line 866
    if-nez v0, :cond_2

    .line 867
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 868
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ay()Lcom/adcolony/sdk/ci;

    move-result-object v0

    .line 869
    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/ci;->g(Ljava/lang/String;)V

    .line 872
    :cond_2
    invoke-virtual {p0}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "IAP Reward Success"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 873
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 874
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 875
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aB()Lcom/adcolony/sdk/bl;

    move-result-object v0

    .line 876
    invoke-virtual {v0, v2, v1, v3}, Lcom/adcolony/sdk/bl;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 911
    :cond_3
    :goto_0
    invoke-virtual {p5, p4}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    :goto_1
    monitor-exit p0

    return-void

    .line 880
    :cond_4
    :try_start_1
    const-string v4, "IAP Reward Failure: "

    .line 881
    const-string v0, ""

    .line 882
    const-string v5, ""

    .line 883
    const-string v0, "error_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 884
    const-string v0, "error_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 886
    sget-object p4, Lcom/adcolony/sdk/bn$a;->q:Lcom/adcolony/sdk/bn$a;

    .line 887
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "errorId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 889
    const-string v6, "invalidPayloadSignature"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 890
    sget-object p4, Lcom/adcolony/sdk/bn$a;->A:Lcom/adcolony/sdk/bn$a;

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Please check your Android secret key"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 893
    :cond_5
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 894
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 895
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    .line 898
    :cond_6
    new-instance v6, Lcom/adcolony/sdk/bs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IAP failure "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p4, v0}, Lcom/adcolony/sdk/bs;-><init>(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;)V

    .line 899
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 900
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 901
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aB()Lcom/adcolony/sdk/bl;

    move-result-object v7

    const-string v0, "iap_product_id"

    .line 902
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 903
    invoke-virtual {v6}, Lcom/adcolony/sdk/bs;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 902
    invoke-virtual {v7, v0, v6}, Lcom/adcolony/sdk/bl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :cond_7
    invoke-virtual {p0}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 909
    invoke-virtual {p4}, Lcom/adcolony/sdk/bn$a;->ordinal()I

    move-result v4

    .line 908
    invoke-virtual/range {v0 .. v5}, Lcom/adcolony/sdk/bz;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 912
    :catch_0
    move-exception v0

    .line 913
    :try_start_2
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "Caught exception in Networking"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adcolony/sdk/bk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 574
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bh;->n:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bh$7;

    invoke-direct {v1, p0, p3, p1, p4}, Lcom/adcolony/sdk/bh$7;-><init>(Lcom/adcolony/sdk/bh;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    monitor-exit p0

    return-void

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adcolony/sdk/bk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 598
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bh;->n:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bh$8;

    invoke-direct {v1, p0, p3, p1, p4}, Lcom/adcolony/sdk/bh$8;-><init>(Lcom/adcolony/sdk/bh;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    monitor-exit p0

    return-void

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adcolony/sdk/bk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 644
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bh;->n:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bh$10;

    invoke-direct {v1, p0, p3, p1, p4}, Lcom/adcolony/sdk/bh$10;-><init>(Lcom/adcolony/sdk/bh;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    monitor-exit p0

    return-void

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
