.class Lcom/adcolony/sdk/cn$2;
.super Lcom/adcolony/sdk/bk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/cn;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cn;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/adcolony/sdk/cn$2;->a:Lcom/adcolony/sdk/cn;

    invoke-direct {p0}, Lcom/adcolony/sdk/bk;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/adcolony/sdk/bn$a;)V
    .locals 6

    .prologue
    .line 335
    iget-object v0, p0, Lcom/adcolony/sdk/cn$2;->a:Lcom/adcolony/sdk/cn;

    invoke-static {v0}, Lcom/adcolony/sdk/cn;->b(Lcom/adcolony/sdk/cn;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/cn$2;->a:Lcom/adcolony/sdk/cn;

    invoke-static {v0}, Lcom/adcolony/sdk/cn;->c(Lcom/adcolony/sdk/cn;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/adcolony/sdk/cn$2;->a:Lcom/adcolony/sdk/cn;

    iget-object v2, p0, Lcom/adcolony/sdk/cn$2;->a:Lcom/adcolony/sdk/cn;

    invoke-static {v2}, Lcom/adcolony/sdk/cn;->c(Lcom/adcolony/sdk/cn;)Lcom/adcolony/sdk/cm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/cm;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/cn;->a(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/adcolony/sdk/cn$2;->a:Lcom/adcolony/sdk/cn;

    iget-object v2, p0, Lcom/adcolony/sdk/cn$2;->a:Lcom/adcolony/sdk/cn;

    invoke-static {v2}, Lcom/adcolony/sdk/cn;->c(Lcom/adcolony/sdk/cn;)Lcom/adcolony/sdk/cm;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm;)V

    .line 340
    iget-object v0, p0, Lcom/adcolony/sdk/cn$2;->a:Lcom/adcolony/sdk/cn;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cn;Lcom/adcolony/sdk/cm;)Lcom/adcolony/sdk/cm;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/cn$2;->a:Lcom/adcolony/sdk/cn;

    invoke-static {v0}, Lcom/adcolony/sdk/cn;->d(Lcom/adcolony/sdk/cn;)Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v2, Lcom/adcolony/sdk/cn$2$1;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/cn$2$1;-><init>(Lcom/adcolony/sdk/cn$2;)V

    .line 347
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/bm;->d()I

    move-result v3

    int-to-long v4, v3

    .line 342
    invoke-virtual {v0, v2, v4, v5}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;J)V

    .line 348
    monitor-exit v1

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
