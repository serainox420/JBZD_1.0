.class final Lcom/adcolony/sdk/cq$19;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cq;->k(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V
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
    .line 394
    iput-object p2, p0, Lcom/adcolony/sdk/cq$19;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/adcolony/sdk/cq$19;->b:Lcom/adcolony/sdk/cr;

    iput p4, p0, Lcom/adcolony/sdk/cq$19;->c:I

    invoke-direct {p0, p1}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/cq$19;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 397
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 398
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 399
    const-string v2, "yvolver.js"

    invoke-static {v2}, Lcom/adcolony/sdk/co;->l(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 400
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v0, "yvolver.js"

    invoke-static {v2, v0}, Lcom/adcolony/sdk/co;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/cq$19$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/cq$19$1;-><init>(Lcom/adcolony/sdk/cq$19;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 409
    invoke-virtual {p0}, Lcom/adcolony/sdk/cq$19;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    monitor-exit p0

    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
