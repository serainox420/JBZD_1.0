.class Lcom/adcolony/sdk/ci$18;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/adcolony/sdk/ci;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci;Lcom/adcolony/sdk/bq;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 932
    iput-object p1, p0, Lcom/adcolony/sdk/ci$18;->c:Lcom/adcolony/sdk/ci;

    iput-object p3, p0, Lcom/adcolony/sdk/ci$18;->a:Ljava/lang/String;

    iput p4, p0, Lcom/adcolony/sdk/ci$18;->b:I

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 934
    monitor-enter p0

    const/4 v3, 0x0

    .line 936
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPurchaseDigitalItem called: transactionId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/adcolony/sdk/ci$18;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "null"

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 937
    iget-object v1, p0, Lcom/adcolony/sdk/ci$18;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/adcolony/sdk/ci$18;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 940
    sget v1, Lcom/adcolony/sdk/ci;->b:I

    .line 943
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/adcolony/sdk/co;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 944
    if-eqz v5, :cond_3

    .line 946
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v4

    .line 945
    invoke-static {v5, v4}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 947
    if-eqz v4, :cond_5

    sget-object v6, Lcom/adcolony/sdk/ci;->i:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 948
    sget-object v0, Lcom/adcolony/sdk/ci;->i:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 949
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startPurchaseDigitalItem: transactionId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/adcolony/sdk/ci$18;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", redemptionMap="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 950
    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/adcolony/sdk/ci$18;->a:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 951
    iget-object v1, p0, Lcom/adcolony/sdk/ci$18;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v9, v1

    move-object v1, v4

    move v4, v9

    .line 958
    :goto_1
    if-nez v1, :cond_0

    .line 959
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 961
    :cond_0
    if-nez v0, :cond_1

    .line 962
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 964
    :cond_1
    sget v6, Lcom/adcolony/sdk/ci;->b:I

    if-ne v4, v6, :cond_4

    .line 965
    iget-object v3, p0, Lcom/adcolony/sdk/ci$18;->a:Ljava/lang/String;

    sget v4, Lcom/adcolony/sdk/ci;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startPurchaseDigitalItem: transactionId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/adcolony/sdk/ci$18;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", state = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/adcolony/sdk/ci$18;->a:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 967
    sget-object v3, Lcom/adcolony/sdk/ci;->i:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v0

    .line 968
    invoke-static {v1, v5, v0}, Lcom/adcolony/sdk/co;->a(Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;)V

    move v0, v2

    .line 974
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 975
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 976
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPurchaseDigitalItem: params sent back to callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/adcolony/sdk/co;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 979
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    iget v2, p0, Lcom/adcolony/sdk/ci$18;->b:I

    invoke-virtual {v0, v2, v1}, Lcom/adcolony/sdk/cp;->a(ILjava/util/List;)V

    .line 980
    invoke-virtual {p0}, Lcom/adcolony/sdk/ci$18;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    monitor-exit p0

    return-void

    .line 936
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/adcolony/sdk/ci$18;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 955
    :cond_3
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v4

    const-string v6, "startPurchaseDigitalItem: fileStore !found"

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v1

    move-object v1, v0

    goto/16 :goto_1

    .line 934
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v9, v1

    move-object v1, v4

    move v4, v9

    goto/16 :goto_1
.end method
