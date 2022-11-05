.class Lcom/adcolony/sdk/bg$32;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->d(Ljava/lang/String;)V
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
    .line 569
    iput-object p1, p0, Lcom/adcolony/sdk/bg$32;->b:Lcom/adcolony/sdk/bg;

    iput-object p3, p0, Lcom/adcolony/sdk/bg$32;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$32;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/co;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 572
    iget-object v1, p0, Lcom/adcolony/sdk/bg$32;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bg;->c(Ljava/util/Map;)V

    .line 573
    iget-object v0, p0, Lcom/adcolony/sdk/bg$32;->b:Lcom/adcolony/sdk/bg;

    const-string v1, "SuperUserCommand"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bg;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    monitor-exit p0

    return-void

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
