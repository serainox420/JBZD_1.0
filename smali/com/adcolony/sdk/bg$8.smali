.class Lcom/adcolony/sdk/bg$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lcom/adcolony/sdk/bg$8;->d:Lcom/adcolony/sdk/bg;

    iput-object p2, p0, Lcom/adcolony/sdk/bg$8;->a:Ljava/lang/String;

    iput p3, p0, Lcom/adcolony/sdk/bg$8;->b:I

    iput-object p4, p0, Lcom/adcolony/sdk/bg$8;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 809
    iget-object v0, p0, Lcom/adcolony/sdk/bg$8;->d:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startYvolver was called (apiKey1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bg$8;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", productionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adcolony/sdk/bg$8;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", configEndpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bg$8;->d:Lcom/adcolony/sdk/bg;

    iget v3, p0, Lcom/adcolony/sdk/bg$8;->b:I

    invoke-static {v2, v3}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/bg;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bg$8;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 810
    iget-object v0, p0, Lcom/adcolony/sdk/bg$8;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/bg$8;->d:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/adcolony/sdk/bg$8;->d:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/ck;->a(Z)V

    .line 821
    iget-object v0, p0, Lcom/adcolony/sdk/bg$8;->d:Lcom/adcolony/sdk/bg;

    iput-boolean v4, v0, Lcom/adcolony/sdk/bg;->x:Z

    .line 823
    new-instance v0, Lcom/adcolony/sdk/bg$8$1;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$8;->d:Lcom/adcolony/sdk/bg;

    iget-object v1, v1, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1}, Lcom/adcolony/sdk/bg$8$1;-><init>(Lcom/adcolony/sdk/bg$8;Lcom/adcolony/sdk/bq;)V

    .line 840
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 841
    const-string v2, "apiKey"

    iget-object v3, p0, Lcom/adcolony/sdk/bg$8;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string v2, "productionMode"

    iget v3, p0, Lcom/adcolony/sdk/bg$8;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-string v2, "configEndpoint"

    iget-object v3, p0, Lcom/adcolony/sdk/bg$8;->d:Lcom/adcolony/sdk/bg;

    iget v4, p0, Lcom/adcolony/sdk/bg$8;->b:I

    .line 844
    invoke-static {v3, v4}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/bg;I)Ljava/lang/String;

    move-result-object v3

    .line 843
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    iget-object v2, p0, Lcom/adcolony/sdk/bg$8;->d:Lcom/adcolony/sdk/bg;

    invoke-static {v2, v0, v1}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bp;Ljava/util/Map;)Lcom/adcolony/sdk/bp;

    move-result-object v0

    .line 848
    iget-object v2, p0, Lcom/adcolony/sdk/bg$8;->d:Lcom/adcolony/sdk/bg;

    iget-object v3, p0, Lcom/adcolony/sdk/bg$8;->c:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bp;Ljava/util/Map;Ljava/lang/String;)Lcom/adcolony/sdk/bp;

    move-result-object v0

    .line 851
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 853
    new-instance v1, Lcom/adcolony/sdk/bg$8$2;

    iget-object v3, p0, Lcom/adcolony/sdk/bg$8;->d:Lcom/adcolony/sdk/bg;

    iget-object v3, v3, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/adcolony/sdk/bg$8$2;-><init>(Lcom/adcolony/sdk/bg$8;Lcom/adcolony/sdk/bq;Lcom/adcolony/sdk/bp;Ljava/util/Map;)V

    goto :goto_0
.end method
