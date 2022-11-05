.class Lcom/adcolony/sdk/bg$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/adcolony/sdk/bg$5;->f:Lcom/adcolony/sdk/bg;

    iput p2, p0, Lcom/adcolony/sdk/bg$5;->a:I

    iput-object p3, p0, Lcom/adcolony/sdk/bg$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/adcolony/sdk/bg$5;->c:Ljava/lang/String;

    iput p5, p0, Lcom/adcolony/sdk/bg$5;->d:I

    iput-object p6, p0, Lcom/adcolony/sdk/bg$5;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 701
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 702
    const-string v1, "in_game_currency_quantity"

    iget v2, p0, Lcom/adcolony/sdk/bg$5;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const-string v1, "iap_transaction_id"

    iget-object v2, p0, Lcom/adcolony/sdk/bg$5;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    const-string v1, "iap_product_id"

    iget-object v2, p0, Lcom/adcolony/sdk/bg$5;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-string v1, "error_code"

    iget v2, p0, Lcom/adcolony/sdk/bg$5;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const-string v1, "error"

    iget-object v2, p0, Lcom/adcolony/sdk/bg$5;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v1, p0, Lcom/adcolony/sdk/bg$5;->f:Lcom/adcolony/sdk/bg;

    const-string v2, "iapRewardError"

    sget-object v3, Lcom/adcolony/sdk/bn$b;->e:Lcom/adcolony/sdk/bn$b;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;Lcom/adcolony/sdk/bn$b;ZLjava/util/Map;)V

    .line 710
    return-void
.end method
