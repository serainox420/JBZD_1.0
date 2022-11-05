.class Lcom/adcolony/sdk/bh$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bh;->e(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V
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
    .line 644
    iput-object p1, p0, Lcom/adcolony/sdk/bh$10;->d:Lcom/adcolony/sdk/bh;

    iput-object p2, p0, Lcom/adcolony/sdk/bh$10;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/adcolony/sdk/bh$10;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/adcolony/sdk/bh$10;->c:Lcom/adcolony/sdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 647
    iget-object v0, p0, Lcom/adcolony/sdk/bh$10;->a:Ljava/util/Map;

    const-string v1, "success"

    .line 648
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 649
    iget-object v1, p0, Lcom/adcolony/sdk/bh$10;->a:Ljava/util/Map;

    const-string v2, "failed"

    .line 650
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 652
    iget-object v2, p0, Lcom/adcolony/sdk/bh$10;->b:Ljava/util/Map;

    const-string v3, "stats"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 653
    iget-object v2, p0, Lcom/adcolony/sdk/bh$10;->b:Ljava/util/Map;

    const-string v3, "stats"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 654
    iget-object v3, p0, Lcom/adcolony/sdk/bh$10;->d:Lcom/adcolony/sdk/bh;

    invoke-virtual {v3}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleStats stats:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 655
    iget-object v3, p0, Lcom/adcolony/sdk/bh$10;->d:Lcom/adcolony/sdk/bh;

    invoke-virtual {v3, v2}, Lcom/adcolony/sdk/bh;->a(Ljava/util/ArrayList;)V

    .line 660
    :goto_0
    iget-object v2, p0, Lcom/adcolony/sdk/bh$10;->b:Ljava/util/Map;

    const-string v3, "retry"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adcolony/sdk/bh$10;->b:Ljava/util/Map;

    const-string v3, "retry"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 661
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 662
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->av()Lcom/adcolony/sdk/ck;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adcolony/sdk/ck;->b(Ljava/util/Collection;)V

    .line 663
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->av()Lcom/adcolony/sdk/ck;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/ck;->a(Ljava/util/Collection;)V

    .line 666
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->av()Lcom/adcolony/sdk/ck;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/ck;->a(Ljava/util/Collection;)V

    .line 667
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->av()Lcom/adcolony/sdk/ck;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/adcolony/sdk/ck;->a(J)V

    .line 669
    iget-object v0, p0, Lcom/adcolony/sdk/bh$10;->c:Lcom/adcolony/sdk/bk;

    sget-object v1, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    .line 670
    return-void

    .line 657
    :cond_1
    iget-object v2, p0, Lcom/adcolony/sdk/bh$10;->d:Lcom/adcolony/sdk/bh;

    invoke-virtual {v2}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleStats, no stats in results"

    invoke-static {v2, v3, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
