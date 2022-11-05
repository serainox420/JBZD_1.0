.class Lcom/adcolony/sdk/ci$20;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci;->a(Ljava/util/List;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:[Ljava/lang/String;

.field final synthetic e:Lcom/adcolony/sdk/ci;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci;Lcom/adcolony/sdk/bq;Ljava/lang/String;Ljava/util/List;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/adcolony/sdk/ci$20;->e:Lcom/adcolony/sdk/ci;

    iput-object p3, p0, Lcom/adcolony/sdk/ci$20;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/adcolony/sdk/ci$20;->b:Ljava/util/List;

    iput p5, p0, Lcom/adcolony/sdk/ci$20;->c:I

    iput-object p6, p0, Lcom/adcolony/sdk/ci$20;->d:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1099
    monitor-enter p0

    .line 1105
    const/4 v4, -0x1

    .line 1107
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adcolony/sdk/co;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    if-eqz v1, :cond_a

    .line 1110
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v6

    .line 1109
    invoke-static {v1, v6}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 1111
    if-eqz v1, :cond_a

    sget-object v6, Lcom/adcolony/sdk/ci;->i:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1112
    sget-object v6, Lcom/adcolony/sdk/ci;->i:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1113
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "purchaseDigitalItems: transactionId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/adcolony/sdk/ci$20;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", redemptionMap = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1114
    if-eqz v1, :cond_a

    iget-object v6, p0, Lcom/adcolony/sdk/ci$20;->a:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1116
    iget-object v4, p0, Lcom/adcolony/sdk/ci$20;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1120
    :goto_0
    sget v4, Lcom/adcolony/sdk/ci;->c:I

    if-ne v1, v4, :cond_6

    .line 1121
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Transaction is pending; purchase digital items"

    const/4 v6, 0x1

    invoke-static {v1, v4, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1122
    iget-object v1, p0, Lcom/adcolony/sdk/ci$20;->e:Lcom/adcolony/sdk/ci;

    iget-object v4, p0, Lcom/adcolony/sdk/ci$20;->a:Ljava/lang/String;

    sget v6, Lcom/adcolony/sdk/ci;->d:I

    invoke-virtual {v1, v4, v6}, Lcom/adcolony/sdk/ci;->b(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    move v4, v3

    .line 1126
    :goto_1
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1127
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    iget-object v1, p0, Lcom/adcolony/sdk/ci$20;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1132
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 1133
    new-instance v8, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;

    invoke-direct {v8, v1}, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;-><init>(Ljava/util/Map;)V

    .line 1134
    if-eqz v8, :cond_1

    .line 1135
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1167
    :catch_0
    move-exception v1

    .line 1168
    const/4 v2, 0x2

    .line 1169
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in digital redemption for transactionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adcolony/sdk/ci$20;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exception caught during digital redemption process: %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1170
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1169
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1171
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    move v1, v2

    move-object v2, v3

    .line 1174
    :goto_3
    if-eqz v2, :cond_0

    .line 1175
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v3

    sget-object v4, Lcom/adcolony/sdk/bn$b;->b:Lcom/adcolony/sdk/bn$b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1176
    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;Lcom/adcolony/sdk/bn$b;ZLjava/util/Map;)V

    .line 1177
    iget-object v2, p0, Lcom/adcolony/sdk/ci$20;->e:Lcom/adcolony/sdk/ci;

    iget-object v3, p0, Lcom/adcolony/sdk/ci$20;->a:Ljava/lang/String;

    sget v4, Lcom/adcolony/sdk/ci;->f:I

    invoke-virtual {v2, v3, v4}, Lcom/adcolony/sdk/ci;->b(Ljava/lang/String;I)Ljava/lang/Boolean;

    .line 1179
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->x()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_7

    .line 1190
    :goto_4
    monitor-exit p0

    return-void

    .line 1137
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not create local digital item from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Digital redemption did not complete."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not create local digital item from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1139
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/adcolony/sdk/bn$b;->b:Lcom/adcolony/sdk/bn$b;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v7, v8, v9}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;Lcom/adcolony/sdk/bn$b;ZLjava/util/Map;)V

    .line 1145
    :cond_2
    iget-object v1, p0, Lcom/adcolony/sdk/ci$20;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1146
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;

    .line 1147
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempting to grant "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1148
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v6

    .line 1149
    invoke-virtual {v6}, Lcom/adcolony/sdk/bz;->aB()Lcom/adcolony/sdk/bl;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/adcolony/sdk/bl;->a(Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 1099
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1152
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/adcolony/sdk/ci$20;->e:Lcom/adcolony/sdk/ci;

    iget-object v2, p0, Lcom/adcolony/sdk/ci$20;->a:Ljava/lang/String;

    sget v6, Lcom/adcolony/sdk/ci;->e:I

    invoke-virtual {v1, v2, v6}, Lcom/adcolony/sdk/ci;->b(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v3

    move-object v2, v5

    .line 1153
    goto/16 :goto_3

    .line 1156
    :cond_4
    const-string v2, "Error in digital redemption, not all items in the digital package could be granted."

    .line 1157
    const/4 v1, 0x3

    goto/16 :goto_3

    .line 1160
    :cond_5
    const-string v2, "Error in digital redemption, digital redemption delegates not implemented."

    .line 1161
    const/4 v1, 0x5

    goto/16 :goto_3

    .line 1164
    :cond_6
    const-string v1, "Error in digital redemption, unable to redeem digital items, bad transaction state"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v10, v2

    move-object v2, v1

    move v1, v10

    goto/16 :goto_3

    .line 1183
    :cond_7
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v3

    iget v4, p0, Lcom/adcolony/sdk/ci$20;->c:I

    invoke-virtual {v3, v4, v2}, Lcom/adcolony/sdk/cp;->a(ILjava/util/List;)V

    .line 1188
    iget-object v2, p0, Lcom/adcolony/sdk/ci$20;->e:Lcom/adcolony/sdk/ci;

    iget-object v3, p0, Lcom/adcolony/sdk/ci$20;->d:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Lcom/adcolony/sdk/ci;->a(Ljava/lang/String;)V

    .line 1189
    iget-object v1, p0, Lcom/adcolony/sdk/ci$20;->e:Lcom/adcolony/sdk/ci;

    invoke-virtual {v1}, Lcom/adcolony/sdk/ci;->k()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    :cond_8
    move v1, v4

    move-object v2, v5

    goto/16 :goto_3

    :cond_9
    move v4, v2

    goto/16 :goto_1

    :cond_a
    move v1, v4

    goto/16 :goto_0
.end method
