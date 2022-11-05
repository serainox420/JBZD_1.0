.class Lcom/adcolony/sdk/bg$8$2;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg$8;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/adcolony/sdk/bg$8;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg$8;Lcom/adcolony/sdk/bq;Lcom/adcolony/sdk/bp;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Lcom/adcolony/sdk/bg$8$2;->b:Lcom/adcolony/sdk/bg$8;

    iput-object p4, p0, Lcom/adcolony/sdk/bg$8$2;->a:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;Lcom/adcolony/sdk/bp;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 855
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$8$2;->b:Lcom/adcolony/sdk/bg$8;

    iget-object v0, v0, Lcom/adcolony/sdk/bg$8;->d:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$8$2;->a:Ljava/util/Map;

    invoke-static {v0, p0, v1}, Lcom/adcolony/sdk/bg;->b(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bp;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    monitor-exit p0

    return-void

    .line 855
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
