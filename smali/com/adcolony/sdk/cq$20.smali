.class final Lcom/adcolony/sdk/cq$20;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cq;->l(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V
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
    .line 417
    iput-object p2, p0, Lcom/adcolony/sdk/cq$20;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/adcolony/sdk/cq$20;->b:Lcom/adcolony/sdk/cr;

    iput p4, p0, Lcom/adcolony/sdk/cq$20;->c:I

    invoke-direct {p0, p1}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 419
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/cq$20;->a:Ljava/lang/String;

    .line 420
    const-string v1, "yvolver.js"

    invoke-static {v1}, Lcom/adcolony/sdk/co;->l(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 421
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string v0, "yvolver.js"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/co;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/cq$20$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/cq$20$1;-><init>(Lcom/adcolony/sdk/cq$20;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 430
    invoke-virtual {p0}, Lcom/adcolony/sdk/cq$20;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
