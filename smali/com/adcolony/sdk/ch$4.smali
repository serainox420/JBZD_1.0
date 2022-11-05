.class Lcom/adcolony/sdk/ch$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ch;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ch;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ch;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/adcolony/sdk/ch$4;->a:Lcom/adcolony/sdk/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 432
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ch$4;->a:Lcom/adcolony/sdk/ch;

    invoke-static {v0}, Lcom/adcolony/sdk/ch;->a(Lcom/adcolony/sdk/ch;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v1, p0, Lcom/adcolony/sdk/ch$4;->a:Lcom/adcolony/sdk/ch;

    iget-object v0, p0, Lcom/adcolony/sdk/ch$4;->a:Lcom/adcolony/sdk/ch;

    invoke-static {v0}, Lcom/adcolony/sdk/ch;->a(Lcom/adcolony/sdk/ch;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/ch;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    const-string v1, "Push Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught exception while processing pending GCM queue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 438
    :cond_0
    return-void
.end method
