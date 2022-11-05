.class Lcom/adcolony/sdk/bh$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bh;->d(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/adcolony/sdk/bk;)V
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
    .line 598
    iput-object p1, p0, Lcom/adcolony/sdk/bh$8;->d:Lcom/adcolony/sdk/bh;

    iput-object p2, p0, Lcom/adcolony/sdk/bh$8;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/adcolony/sdk/bh$8;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/adcolony/sdk/bh$8;->c:Lcom/adcolony/sdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 601
    iget-object v0, p0, Lcom/adcolony/sdk/bh$8;->a:Ljava/util/Map;

    const-string v1, "lastQueuedMessageId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 602
    iget-object v0, p0, Lcom/adcolony/sdk/bh$8;->a:Ljava/util/Map;

    const-string v2, "latestMessageLogged"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 604
    iget-object v2, p0, Lcom/adcolony/sdk/bh$8;->b:Ljava/util/Map;

    const-string v3, "status"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adcolony/sdk/bh$8;->b:Ljava/util/Map;

    const-string v3, "status"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->aC()Lcom/adcolony/sdk/cf;

    move-result-object v2

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/adcolony/sdk/cf;->b(J)V

    .line 606
    iget-object v2, p0, Lcom/adcolony/sdk/bh$8;->d:Lcom/adcolony/sdk/bh;

    invoke-virtual {v2}, Lcom/adcolony/sdk/bh;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adcolony/sdk/bz;->aC()Lcom/adcolony/sdk/cf;

    move-result-object v4

    iget v4, v4, Lcom/adcolony/sdk/cf;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 607
    if-ge v1, v0, :cond_0

    .line 608
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ax()Lcom/adcolony/sdk/br;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/adcolony/sdk/br;->a(Z)V

    .line 611
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ax()Lcom/adcolony/sdk/br;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/adcolony/sdk/br;->b(Z)V

    .line 613
    iget-object v0, p0, Lcom/adcolony/sdk/bh$8;->c:Lcom/adcolony/sdk/bk;

    sget-object v1, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    .line 614
    return-void
.end method
