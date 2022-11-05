.class Lcom/adcolony/sdk/bi$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bi;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bi;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bi;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/adcolony/sdk/bi$7;->a:Lcom/adcolony/sdk/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adcolony/sdk/bi$7;->a:Lcom/adcolony/sdk/bi;

    iget-wide v2, v2, Lcom/adcolony/sdk/bi;->s:J

    sub-long/2addr v0, v2

    .line 559
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 560
    const-string v3, "duration_ms"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v0, "download_ms"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v0, "document_ready_ms"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v0, "http_status_code"

    iget-object v1, p0, Lcom/adcolony/sdk/bi$7;->a:Lcom/adcolony/sdk/bi;

    iget v1, v1, Lcom/adcolony/sdk/bi;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v0, p0, Lcom/adcolony/sdk/bi$7;->a:Lcom/adcolony/sdk/bi;

    iget-wide v0, v0, Lcom/adcolony/sdk/bi;->u:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 565
    const-string v0, "loadtime_ms"

    iget-object v1, p0, Lcom/adcolony/sdk/bi$7;->a:Lcom/adcolony/sdk/bi;

    iget-wide v4, v1, Lcom/adcolony/sdk/bi;->u:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_0
    const-string v0, "request_url"

    iget-object v1, p0, Lcom/adcolony/sdk/bi$7;->a:Lcom/adcolony/sdk/bi;

    invoke-static {v1}, Lcom/adcolony/sdk/bi;->a(Lcom/adcolony/sdk/bi;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v0, p0, Lcom/adcolony/sdk/bi$7;->a:Lcom/adcolony/sdk/bi;

    iget-boolean v0, v0, Lcom/adcolony/sdk/bi;->A:Z

    if-eqz v0, :cond_1

    .line 569
    const-string v0, "source_id"

    iget-object v1, p0, Lcom/adcolony/sdk/bi$7;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->z:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v0, "reward_type"

    iget-object v1, p0, Lcom/adcolony/sdk/bi$7;->a:Lcom/adcolony/sdk/bi;

    iget v1, v1, Lcom/adcolony/sdk/bi;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/bi$7;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 573
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    const-string v1, "close_catalog"

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 574
    return-void
.end method
