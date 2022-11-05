.class Lcom/adcolony/sdk/ci$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adcolony/sdk/ci;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/adcolony/sdk/ci$28;->b:Lcom/adcolony/sdk/ci;

    iput-object p2, p0, Lcom/adcolony/sdk/ci$28;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 281
    const-string v1, "Service unavailable"

    .line 282
    const-string v2, "error_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v1

    new-instance v2, Lcom/adcolony/sdk/ci$28$1;

    invoke-direct {v2, p0, v0}, Lcom/adcolony/sdk/ci$28$1;-><init>(Lcom/adcolony/sdk/ci$28;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 385
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processing serverRewards"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 299
    const-string v0, "ser_rew.ymf"

    invoke-static {v0}, Lcom/adcolony/sdk/co;->l(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_3

    .line 303
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 304
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 306
    const-string v1, "transaction_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    iget-object v4, p0, Lcom/adcolony/sdk/ci$28;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 309
    const-string v3, "transaction_id"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v3, "device_id"

    .line 311
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adcolony/sdk/bz;->ar()Lcom/adcolony/sdk/bo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adcolony/sdk/bo;->j()Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v3, "encrypted_payload"

    const-string v4, "encrypted_payload"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v3, "user_params"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 315
    invoke-static {v0}, Lcom/adcolony/sdk/co;->e(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 316
    const-string v3, "user_params"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 338
    invoke-static {v2}, Lcom/adcolony/sdk/co;->e(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 339
    const-string v3, "server_reward"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v2, Lcom/adcolony/sdk/ci$28$3;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v3

    iget-object v3, v3, Lcom/adcolony/sdk/bz;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/adcolony/sdk/ci$28$3;-><init>(Lcom/adcolony/sdk/ci$28;Lcom/adcolony/sdk/bq;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 321
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 322
    const-string v1, "Reward Map is empty"

    .line 323
    const-string v3, "error_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v1

    new-instance v3, Lcom/adcolony/sdk/ci$28$2;

    invoke-direct {v3, p0, v0}, Lcom/adcolony/sdk/ci$28$2;-><init>(Lcom/adcolony/sdk/ci$28;Ljava/util/Map;)V

    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    move-object v1, v2

    goto :goto_1

    .line 371
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 372
    const-string v1, "unknown"

    .line 373
    const-string v2, "error_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v1

    new-instance v2, Lcom/adcolony/sdk/ci$28$4;

    invoke-direct {v2, p0, v0}, Lcom/adcolony/sdk/ci$28$4;-><init>(Lcom/adcolony/sdk/ci$28;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    goto/16 :goto_0
.end method
