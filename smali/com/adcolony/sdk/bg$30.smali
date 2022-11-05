.class Lcom/adcolony/sdk/bg$30;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->b(Ljava/util/Map;)V
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
    .line 517
    iput-object p1, p0, Lcom/adcolony/sdk/bg$30;->b:Lcom/adcolony/sdk/bg;

    iput-object p3, p0, Lcom/adcolony/sdk/bg$30;->a:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 519
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$30;->b:Lcom/adcolony/sdk/bg;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adcolony/sdk/bg;->D:Z

    .line 520
    iget-object v0, p0, Lcom/adcolony/sdk/bg$30;->b:Lcom/adcolony/sdk/bg;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adcolony/sdk/bg;->w:Z

    .line 521
    iget-object v0, p0, Lcom/adcolony/sdk/bg$30;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$30;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bg;->c(Ljava/util/Map;)V

    .line 522
    iget-object v0, p0, Lcom/adcolony/sdk/bg$30;->b:Lcom/adcolony/sdk/bg;

    const-string v1, "SetApiKey"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bg;->f(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg$30;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
