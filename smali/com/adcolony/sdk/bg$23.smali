.class Lcom/adcolony/sdk/bg$23;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/bp;Ljava/util/Map;)Lcom/adcolony/sdk/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/adcolony/sdk/bg$23;->c:Lcom/adcolony/sdk/bg;

    iput-object p3, p0, Lcom/adcolony/sdk/bg$23;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/adcolony/sdk/bg$23;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 9

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$23;->c:Lcom/adcolony/sdk/bg;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adcolony/sdk/bg;->B:Z

    .line 431
    iget-object v0, p0, Lcom/adcolony/sdk/bg$23;->c:Lcom/adcolony/sdk/bg;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adcolony/sdk/bg;->C:Z

    .line 433
    new-instance v8, Lcom/adcolony/sdk/bg$23$1;

    invoke-direct {v8, p0}, Lcom/adcolony/sdk/bg$23$1;-><init>(Lcom/adcolony/sdk/bg$23;)V

    .line 440
    invoke-static {}, Lcom/adcolony/sdk/ce;->c()Lcom/adcolony/sdk/ce;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/bg$23;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/adcolony/sdk/bg$23;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "config"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 441
    invoke-virtual/range {v0 .. v8}, Lcom/adcolony/sdk/ce;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;ILcom/adcolony/sdk/bk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    monitor-exit p0

    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
