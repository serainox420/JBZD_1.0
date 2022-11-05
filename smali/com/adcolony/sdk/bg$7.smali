.class Lcom/adcolony/sdk/bg$7;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 787
    iput-object p1, p0, Lcom/adcolony/sdk/bg$7;->b:Lcom/adcolony/sdk/bg;

    iput-object p3, p0, Lcom/adcolony/sdk/bg$7;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    .prologue
    .line 789
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    iget-boolean v0, v0, Lcom/adcolony/sdk/j;->b:Z

    if-nez v0, :cond_0

    .line 791
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bg$7$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bg$7$1;-><init>(Lcom/adcolony/sdk/bg$7;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bz;->a(Lcom/adcolony/sdk/bw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    :goto_0
    monitor-exit p0

    return-void

    .line 797
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/bg$7;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bo;->p()V

    .line 798
    iget-object v0, p0, Lcom/adcolony/sdk/bg$7;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$7;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, v1, Lcom/adcolony/sdk/bg;->N:Ljava/lang/String;

    iget-object v2, p0, Lcom/adcolony/sdk/bg$7;->b:Lcom/adcolony/sdk/bg;

    iget v2, v2, Lcom/adcolony/sdk/bg;->G:I

    iget-object v3, p0, Lcom/adcolony/sdk/bg$7;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/bg;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
