.class final Lcom/adcolony/sdk/cq$18;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cq;->j(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adcolony/sdk/cr;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bq;Ljava/lang/String;Lcom/adcolony/sdk/cr;I)V
    .locals 0

    .prologue
    .line 361
    iput-object p2, p0, Lcom/adcolony/sdk/cq$18;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/adcolony/sdk/cq$18;->b:Lcom/adcolony/sdk/cr;

    iput p4, p0, Lcom/adcolony/sdk/cq$18;->c:I

    invoke-direct {p0, p1}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/cq$18;->a:Ljava/lang/String;

    .line 364
    const-string v1, "yvolver.js"

    invoke-static {v1}, Lcom/adcolony/sdk/co;->l(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 365
    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 366
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 367
    invoke-static {v0}, Lcom/adcolony/sdk/co;->e(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 368
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 369
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 370
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v1

    new-instance v2, Lcom/adcolony/sdk/cq$18$1;

    invoke-direct {v2, p0, v0}, Lcom/adcolony/sdk/cq$18$1;-><init>(Lcom/adcolony/sdk/cq$18;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 386
    :goto_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/cq$18;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    monitor-exit p0

    return-void

    .line 379
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/cq$18$2;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/cq$18$2;-><init>(Lcom/adcolony/sdk/cq$18;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
