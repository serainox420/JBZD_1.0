.class Lcom/adcolony/sdk/bh$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bh;->c(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V
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
    .line 574
    iput-object p1, p0, Lcom/adcolony/sdk/bh$7;->d:Lcom/adcolony/sdk/bh;

    iput-object p2, p0, Lcom/adcolony/sdk/bh$7;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/adcolony/sdk/bh$7;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/adcolony/sdk/bh$7;->c:Lcom/adcolony/sdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 577
    iget-object v0, p0, Lcom/adcolony/sdk/bh$7;->a:Ljava/util/Map;

    const-string v1, "rewardKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 580
    iget-object v1, p0, Lcom/adcolony/sdk/bh$7;->b:Ljava/util/Map;

    const-string v2, "retry"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bh$7;->b:Ljava/util/Map;

    const-string v2, "retry"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/adcolony/sdk/bh$7;->d:Lcom/adcolony/sdk/bh;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "retry false code was executed"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 584
    const-string v1, "customRewards"

    invoke-static {v1, v4}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 585
    const-string v1, "customRewards"

    invoke-static {v1, v4}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    .line 586
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v0, "customRewards"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bh$7;->c:Lcom/adcolony/sdk/bk;

    sget-object v1, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    .line 592
    return-void
.end method
