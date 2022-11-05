.class final Lcom/flurry/sdk/aa$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/am$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/af;

.field final synthetic b:Lcom/flurry/sdk/aa;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/aa;Lcom/flurry/sdk/af;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/flurry/sdk/aa$4;->b:Lcom/flurry/sdk/aa;

    iput-object p2, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/am;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 408
    iget-object v0, p0, Lcom/flurry/sdk/aa$4;->b:Lcom/flurry/sdk/aa;

    invoke-static {v0}, Lcom/flurry/sdk/aa;->c(Lcom/flurry/sdk/aa;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/aa$4;->b:Lcom/flurry/sdk/aa;

    invoke-static {v0}, Lcom/flurry/sdk/aa;->c(Lcom/flurry/sdk/aa;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    .line 1094
    iget-object v2, v2, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 409
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    iget-object v0, p0, Lcom/flurry/sdk/aa$4;->b:Lcom/flurry/sdk/aa;

    iget-object v1, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    invoke-static {v0, v1}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/aa;Lcom/flurry/sdk/af;)V

    .line 2080
    iget-boolean v0, p1, Lcom/flurry/sdk/am;->f:Z

    .line 414
    if-eqz v0, :cond_0

    .line 2088
    iget-wide v0, p1, Lcom/flurry/sdk/am;->e:J

    .line 416
    invoke-static {}, Lcom/flurry/sdk/aa;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Precaching: Download success: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    .line 2094
    iget-object v4, v4, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 416
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v2, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/af;->a(J)V

    .line 418
    iget-object v0, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    sget-object v1, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    invoke-static {v0, v1}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/af;Lcom/flurry/sdk/al;)V

    .line 419
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingDownloadSuccess"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    .line 428
    :goto_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/aa$4$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/aa$4$1;-><init>(Lcom/flurry/sdk/aa$4;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 434
    return-void

    .line 410
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 421
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/aa;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Precaching: Download error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    .line 3094
    iget-object v2, v2, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/flurry/sdk/aa$4;->a:Lcom/flurry/sdk/af;

    sget-object v1, Lcom/flurry/sdk/al;->g:Lcom/flurry/sdk/al;

    invoke-static {v0, v1}, Lcom/flurry/sdk/aa;->a(Lcom/flurry/sdk/af;Lcom/flurry/sdk/al;)V

    .line 423
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingDownloadError"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
