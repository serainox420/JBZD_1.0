.class Lcom/adcolony/sdk/bg$34;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/adcolony/sdk/bg$34;->c:Lcom/adcolony/sdk/bg;

    iput-object p3, p0, Lcom/adcolony/sdk/bg$34;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/adcolony/sdk/bg$34;->b:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$34;->c:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->r:Lcom/adcolony/sdk/br;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$34;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/adcolony/sdk/bg$34;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/br;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 647
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg$34;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    monitor-exit p0

    return-void

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
