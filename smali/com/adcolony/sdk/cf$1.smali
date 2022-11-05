.class Lcom/adcolony/sdk/cf$1;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cf;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/adcolony/sdk/cf;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cf;Lcom/adcolony/sdk/bq;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/adcolony/sdk/cf$1;->c:Lcom/adcolony/sdk/cf;

    iput-object p3, p0, Lcom/adcolony/sdk/cf$1;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/adcolony/sdk/cf$1;->b:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 8

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    const-string v0, "logEvent.ymf"

    invoke-static {v0}, Lcom/adcolony/sdk/co;->l(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 57
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 58
    if-eqz v1, :cond_0

    .line 59
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 63
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bm;->E()I

    move-result v1

    .line 64
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v2

    .line 65
    if-ge v2, v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/adcolony/sdk/cf$1;->c:Lcom/adcolony/sdk/cf;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->S()I

    move-result v2

    iput v2, v1, Lcom/adcolony/sdk/cf;->a:I

    .line 67
    iget-object v1, p0, Lcom/adcolony/sdk/cf$1;->c:Lcom/adcolony/sdk/cf;

    iget v2, v1, Lcom/adcolony/sdk/cf;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/adcolony/sdk/cf;->a:I

    .line 68
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/cf$1;->c:Lcom/adcolony/sdk/cf;

    iget v2, v2, Lcom/adcolony/sdk/cf;->a:I

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/bz;->a(I)V

    .line 70
    iget-object v1, p0, Lcom/adcolony/sdk/cf$1;->c:Lcom/adcolony/sdk/cf;

    iget-object v2, p0, Lcom/adcolony/sdk/cf$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/adcolony/sdk/cf$1;->b:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/adcolony/sdk/cf;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/adcolony/sdk/cf$1;->c:Lcom/adcolony/sdk/cf;

    iget-object v2, v2, Lcom/adcolony/sdk/cf;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogEventMessage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%06d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/adcolony/sdk/cf$1;->c:Lcom/adcolony/sdk/cf;

    iget v7, v7, Lcom/adcolony/sdk/cf;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/adcolony/sdk/cf$1;->c:Lcom/adcolony/sdk/cf;

    iget-object v1, v1, Lcom/adcolony/sdk/cf;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 74
    iget-object v1, p0, Lcom/adcolony/sdk/cf$1;->c:Lcom/adcolony/sdk/cf;

    iget-object v1, v1, Lcom/adcolony/sdk/cf;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 75
    const-string v1, "logEvent.ymf"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ax()Lcom/adcolony/sdk/br;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/br;->a(Z)V

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/cf$1;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 79
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    const-string v3, "limit"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "current_amount"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/adcolony/sdk/cf$1;->c:Lcom/adcolony/sdk/cf;

    const-string v2, "overflow_log"

    invoke-virtual {v1, v2, v0}, Lcom/adcolony/sdk/cf;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
