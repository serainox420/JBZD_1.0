.class final Lcom/adcolony/sdk/cq$21;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cq;->p(Lcom/adcolony/sdk/cr;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bq;)V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 439
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 440
    const-string v1, "yvolver.js"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/adcolony/sdk/cq$21;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
