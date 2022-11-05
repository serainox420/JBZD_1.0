.class Lcom/adcolony/sdk/ci$26;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/adcolony/sdk/ci;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci;Lcom/adcolony/sdk/bq;I)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/adcolony/sdk/ci$26;->b:Lcom/adcolony/sdk/ci;

    iput p3, p0, Lcom/adcolony/sdk/ci$26;->a:I

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ci$26;->b:Lcom/adcolony/sdk/ci;

    iget-object v0, v0, Lcom/adcolony/sdk/ci;->I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 228
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 230
    const-string v0, "ser_rew.ymf"

    invoke-static {v0}, Lcom/adcolony/sdk/co;->l(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_1

    .line 232
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 233
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 234
    iget-object v3, p0, Lcom/adcolony/sdk/ci$26;->b:Lcom/adcolony/sdk/ci;

    iget-object v3, v3, Lcom/adcolony/sdk/ci;->I:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-static {v0}, Lcom/adcolony/sdk/co;->e(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 236
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 239
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServerRewardQueue callback called, queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 241
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v2, Lcom/adcolony/sdk/ci$26$1;

    invoke-direct {v2, p0, v1}, Lcom/adcolony/sdk/ci$26$1;-><init>(Lcom/adcolony/sdk/ci$26;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/adcolony/sdk/ci$26;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    monitor-exit p0

    return-void
.end method
