.class Lcom/adcolony/sdk/bg$31;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->c(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/adcolony/sdk/bg$31;->b:Lcom/adcolony/sdk/bg;

    iput-object p3, p0, Lcom/adcolony/sdk/bg$31;->a:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->a:Ljava/util/Map;

    const-string v1, "yv_h"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->a:Ljava/util/Map;

    const-string v1, "yv_h"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->a:Ljava/util/Map;

    const-string v1, "yv_h"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iget-object v1, p0, Lcom/adcolony/sdk/bg$31;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->a:Ljava/util/Map;

    const-string v2, "yv_h"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/adcolony/sdk/bg;->S:Ljava/lang/String;

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$31;->b:Lcom/adcolony/sdk/bg;

    iget v1, v1, Lcom/adcolony/sdk/bg;->H:I

    iput v1, v0, Lcom/adcolony/sdk/bg;->G:I

    .line 541
    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->a:Ljava/util/Map;

    const-string v1, "yv_e"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->a:Ljava/util/Map;

    const-string v1, "yv_e"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->a:Ljava/util/Map;

    const-string v1, "yv_e"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->a:Ljava/util/Map;

    const-string v1, "yv_e"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 543
    const-string v1, "dev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 544
    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$31;->b:Lcom/adcolony/sdk/bg;

    iget v1, v1, Lcom/adcolony/sdk/bg;->L:I

    iput v1, v0, Lcom/adcolony/sdk/bg;->G:I

    .line 554
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->a:Ljava/util/Map;

    const-string v1, "yv_apikey"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->a:Ljava/util/Map;

    const-string v1, "yv_apikey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->a:Ljava/util/Map;

    const-string v1, "yv_apikey"

    .line 555
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 556
    iget-object v1, p0, Lcom/adcolony/sdk/bg$31;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->a:Ljava/util/Map;

    const-string v2, "yv_apikey"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/adcolony/sdk/bg;->N:Ljava/lang/String;

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$31;->a:Ljava/util/Map;

    iput-object v1, v0, Lcom/adcolony/sdk/bg;->aa:Ljava/util/Map;

    .line 561
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg$31;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    monitor-exit p0

    return-void

    .line 545
    :cond_3
    :try_start_1
    const-string v1, "staging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 546
    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$31;->b:Lcom/adcolony/sdk/bg;

    iget v1, v1, Lcom/adcolony/sdk/bg;->K:I

    iput v1, v0, Lcom/adcolony/sdk/bg;->G:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 547
    :cond_4
    :try_start_2
    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 548
    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$31;->b:Lcom/adcolony/sdk/bg;

    iget v1, v1, Lcom/adcolony/sdk/bg;->J:I

    iput v1, v0, Lcom/adcolony/sdk/bg;->G:I

    goto :goto_0

    .line 549
    :cond_5
    const-string v1, "swap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/adcolony/sdk/bg$31;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$31;->b:Lcom/adcolony/sdk/bg;

    iget v1, v1, Lcom/adcolony/sdk/bg;->I:I

    iput v1, v0, Lcom/adcolony/sdk/bg;->G:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
