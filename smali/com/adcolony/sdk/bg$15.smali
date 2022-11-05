.class Lcom/adcolony/sdk/bg$15;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;)V
    .locals 0

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/adcolony/sdk/bg$15;->a:Lcom/adcolony/sdk/bg;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 1501
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 1502
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v0

    .line 1501
    invoke-static {v0}, Lcom/adcolony/sdk/co;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1503
    if-eqz v0, :cond_0

    .line 1504
    iget-object v1, p0, Lcom/adcolony/sdk/bg$15;->a:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1505
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1507
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg$15;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1508
    monitor-exit p0

    return-void

    .line 1501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
