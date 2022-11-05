.class Lcom/adcolony/sdk/bg$10;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->H()V
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
    .line 1179
    iput-object p1, p0, Lcom/adcolony/sdk/bg$10;->a:Lcom/adcolony/sdk/bg;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 8

    .prologue
    .line 1181
    monitor-enter p0

    :try_start_0
    new-instance v7, Lcom/adcolony/sdk/bg$10$1;

    invoke-direct {v7, p0}, Lcom/adcolony/sdk/bg$10$1;-><init>(Lcom/adcolony/sdk/bg$10;)V

    .line 1186
    invoke-static {}, Lcom/adcolony/sdk/ce;->c()Lcom/adcolony/sdk/ce;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/bg$10;->a:Lcom/adcolony/sdk/bg;

    iget-object v1, v1, Lcom/adcolony/sdk/bg;->m:Lcom/adcolony/sdk/bm;

    sget-object v2, Lcom/adcolony/sdk/bn;->aK:Ljava/lang/String;

    .line 1187
    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/adcolony/sdk/ce;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;ILcom/adcolony/sdk/bk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    monitor-exit p0

    return-void

    .line 1181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
