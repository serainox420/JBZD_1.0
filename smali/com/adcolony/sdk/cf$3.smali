.class Lcom/adcolony/sdk/cf$3;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cf;->d(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/adcolony/sdk/cf;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cf;Lcom/adcolony/sdk/bq;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/adcolony/sdk/cf$3;->b:Lcom/adcolony/sdk/cf;

    iput-object p3, p0, Lcom/adcolony/sdk/cf$3;->a:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    const-string v0, "logEvent.ymf"

    invoke-static {v0}, Lcom/adcolony/sdk/co;->l(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogEventMessage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/cf$3;->b:Lcom/adcolony/sdk/cf;

    iget v2, v2, Lcom/adcolony/sdk/cf;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/cf$3;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v1, "logEvent.ymf"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/adcolony/sdk/cf$3;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
