.class Lcom/adcolony/sdk/bg$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->a(ILjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/adcolony/sdk/bg$4;->e:Lcom/adcolony/sdk/bg;

    iput p2, p0, Lcom/adcolony/sdk/bg$4;->a:I

    iput-object p3, p0, Lcom/adcolony/sdk/bg$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/adcolony/sdk/bg$4;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/adcolony/sdk/bg$4;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 683
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 684
    const-string v0, "in_game_currency_quantity"

    iget v2, p0, Lcom/adcolony/sdk/bg$4;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    const-string v0, "iap_transaction_id"

    iget-object v2, p0, Lcom/adcolony/sdk/bg$4;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string v0, "iap_product_id"

    iget-object v2, p0, Lcom/adcolony/sdk/bg$4;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-boolean v0, p0, Lcom/adcolony/sdk/bg$4;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "iapRewardSuccessCalled"

    .line 688
    :goto_0
    iget-object v2, p0, Lcom/adcolony/sdk/bg$4;->e:Lcom/adcolony/sdk/bg;

    sget-object v3, Lcom/adcolony/sdk/bn$b;->e:Lcom/adcolony/sdk/bn$b;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;Lcom/adcolony/sdk/bn$b;ZLjava/util/Map;)V

    .line 691
    return-void

    .line 687
    :cond_0
    const-string v0, "iapRewardSuccessAttempt"

    goto :goto_0
.end method
