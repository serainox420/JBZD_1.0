.class Lcom/adcolony/sdk/bh$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bh;->a(Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/adcolony/sdk/bk;

.field final synthetic c:Lcom/adcolony/sdk/bh;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bh;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/adcolony/sdk/bh$6;->c:Lcom/adcolony/sdk/bh;

    iput-object p2, p0, Lcom/adcolony/sdk/bh$6;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/adcolony/sdk/bh$6;->b:Lcom/adcolony/sdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 514
    const/16 v6, 0x64

    .line 517
    iget-object v0, p0, Lcom/adcolony/sdk/bh$6;->a:Ljava/util/Map;

    const-string v1, "transactions"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 518
    iget-object v0, p0, Lcom/adcolony/sdk/bh$6;->a:Ljava/util/Map;

    const-string v1, "transactions"

    .line 519
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 520
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 522
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 525
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/adcolony/sdk/bn;->an:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 526
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "transaction_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 530
    iget-object v2, p0, Lcom/adcolony/sdk/bh$6;->a:Ljava/util/Map;

    const-string v9, "retry"

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 531
    iget-object v2, p0, Lcom/adcolony/sdk/bh$6;->a:Ljava/util/Map;

    const-string v9, "retry"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 534
    :goto_1
    if-ne v8, v4, :cond_0

    move v2, v5

    .line 543
    :goto_2
    new-instance v8, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 544
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 537
    :cond_0
    if-eq v8, v6, :cond_1

    if-nez v2, :cond_7

    :cond_1
    move v2, v4

    .line 538
    goto :goto_2

    .line 547
    :cond_2
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 548
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->c()Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 549
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->c()Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;->e()V

    .line 562
    :cond_3
    :goto_3
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ay()Lcom/adcolony/sdk/ci;

    move-result-object v0

    .line 564
    invoke-virtual {v0, v7}, Lcom/adcolony/sdk/ci;->a(Ljava/util/List;)V

    .line 567
    :cond_4
    iget-object v0, p0, Lcom/adcolony/sdk/bh$6;->b:Lcom/adcolony/sdk/bk;

    sget-object v1, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    .line 568
    return-void

    .line 551
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tried to call packageComplete when overlayIsVisible, but OverlayActivity is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseNetworking.handleRedemptionFinish"

    .line 555
    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_3

    .line 557
    :cond_6
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->az()Lcom/adcolony/sdk/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->az()Lcom/adcolony/sdk/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->n()V

    goto :goto_3

    :cond_7
    move v2, v4

    goto :goto_2

    :cond_8
    move v2, v5

    goto :goto_1
.end method
