.class Lcom/adcolony/sdk/ci$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:I

.field final synthetic g:Lcom/adcolony/sdk/ci;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/adcolony/sdk/ci$4;->g:Lcom/adcolony/sdk/ci;

    iput-object p2, p0, Lcom/adcolony/sdk/ci$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/adcolony/sdk/ci$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/adcolony/sdk/ci$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/adcolony/sdk/ci$4;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/adcolony/sdk/ci$4;->e:Z

    iput p7, p0, Lcom/adcolony/sdk/ci$4;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 532
    iget-object v0, p0, Lcom/adcolony/sdk/ci$4;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ci$4;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ci$4;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ci$4;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 536
    const-string v1, "iap_product_id"

    iget-object v2, p0, Lcom/adcolony/sdk/ci$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v1, "iap_transaction_id"

    iget-object v2, p0, Lcom/adcolony/sdk/ci$4;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v1, "iap_user_id"

    iget-object v2, p0, Lcom/adcolony/sdk/ci$4;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v1, "invisible"

    iget-boolean v2, p0, Lcom/adcolony/sdk/ci$4;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v1, "iap_price"

    iget-object v2, p0, Lcom/adcolony/sdk/ci$4;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v1, "iap_service"

    const-string v2, "Amazon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v1, "in_game_currency_quantity"

    iget v2, p0, Lcom/adcolony/sdk/ci$4;->f:I

    .line 543
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 542
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-static {v0}, Lcom/adcolony/sdk/ci;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->g()Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-static {v1, v2}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "payloadSignature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 551
    const-string v2, "payload_signature"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v1, p0, Lcom/adcolony/sdk/ci$4;->g:Lcom/adcolony/sdk/ci;

    iget-object v1, v1, Lcom/adcolony/sdk/ci;->G:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 555
    iget-object v0, p0, Lcom/adcolony/sdk/ci$4;->g:Lcom/adcolony/sdk/ci;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ci;->e()V

    .line 556
    iget-object v0, p0, Lcom/adcolony/sdk/ci$4;->g:Lcom/adcolony/sdk/ci;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ci;->g()V

    goto :goto_0
.end method
