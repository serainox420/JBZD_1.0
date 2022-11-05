.class Lcom/adcolony/sdk/ci$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/adcolony/sdk/ci;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 991
    iput-object p1, p0, Lcom/adcolony/sdk/ci$19;->d:Lcom/adcolony/sdk/ci;

    iput-object p2, p0, Lcom/adcolony/sdk/ci$19;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/adcolony/sdk/ci$19;->b:Ljava/lang/String;

    iput p4, p0, Lcom/adcolony/sdk/ci$19;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 994
    .line 995
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 996
    const-string v2, "json"

    iget-object v3, p0, Lcom/adcolony/sdk/ci$19;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    const-string v2, "signature"

    iget-object v3, p0, Lcom/adcolony/sdk/ci$19;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    const-string v2, "callbackId"

    iget v3, p0, Lcom/adcolony/sdk/ci$19;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/adcolony/sdk/ci$19;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1011
    const-string v3, "transaction_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1012
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1015
    iget-object v4, p0, Lcom/adcolony/sdk/ci$19;->d:Lcom/adcolony/sdk/ci;

    .line 1016
    invoke-static {v4, v2}, Lcom/adcolony/sdk/ci;->a(Lcom/adcolony/sdk/ci;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 1017
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1018
    const-string v6, "items"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    const-string v4, "transaction_id"

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const/4 v4, 0x0

    .line 1022
    invoke-static {v5, v4}, Lcom/adcolony/sdk/co;->a(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1023
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/adcolony/sdk/bz;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1024
    iget-object v5, p0, Lcom/adcolony/sdk/ci$19;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1026
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v4

    .line 1027
    invoke-virtual {v4}, Lcom/adcolony/sdk/bz;->ay()Lcom/adcolony/sdk/ci;

    move-result-object v4

    .line 1028
    invoke-static {v2}, Lcom/adcolony/sdk/co;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    iget v5, p0, Lcom/adcolony/sdk/ci$19;->c:I

    invoke-virtual {v4, v2, v3, v5}, Lcom/adcolony/sdk/ci;->a(Ljava/util/List;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :goto_0
    if-eqz v0, :cond_0

    .line 1037
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    sget-object v3, Lcom/adcolony/sdk/bn$b;->b:Lcom/adcolony/sdk/bn$b;

    const/4 v4, 0x0

    .line 1039
    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;Lcom/adcolony/sdk/bn$b;ZLjava/util/Map;)V

    .line 1041
    :cond_0
    return-void

    .line 1030
    :cond_1
    :try_start_1
    const-string v0, "Error in digital redemption, invalid signature"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in digital redemption from exception->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
