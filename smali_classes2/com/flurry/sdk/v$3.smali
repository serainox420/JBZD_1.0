.class final Lcom/flurry/sdk/v$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kh",
        "<",
        "Lcom/flurry/sdk/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/v;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/v;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/flurry/sdk/v$3;->a:Lcom/flurry/sdk/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 6

    .prologue
    .line 106
    check-cast p1, Lcom/flurry/sdk/d;

    .line 1109
    iget-object v0, p1, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    iget-object v1, p0, Lcom/flurry/sdk/v$3;->a:Lcom/flurry/sdk/v;

    if-ne v0, v1, :cond_6

    .line 1114
    iget-object v0, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    if-eqz v0, :cond_6

    .line 1120
    iget-object v1, p0, Lcom/flurry/sdk/v$3;->a:Lcom/flurry/sdk/v;

    .line 1545
    sget-object v0, Lcom/flurry/sdk/d$a;->c:Lcom/flurry/sdk/d$a;

    iget-object v2, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    iget-object v2, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1546
    :cond_0
    invoke-virtual {v1}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->a()I

    move-result v0

    .line 1547
    if-nez v0, :cond_1

    .line 1548
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Starting ad request from EnsureCacheNotEmpty size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1549
    invoke-virtual {v1}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dw;

    move-result-object v0

    invoke-virtual {v1}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/y;Lcom/flurry/sdk/au;)V

    .line 1553
    :cond_1
    sget-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iget-object v2, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1554
    monitor-enter v1

    .line 1555
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/v$a;->a:Lcom/flurry/sdk/v$a;

    iget-object v2, v1, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1556
    sget-object v0, Lcom/flurry/sdk/v$a;->b:Lcom/flurry/sdk/v$a;

    iput-object v0, v1, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    .line 1560
    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1562
    iget-boolean v0, v1, Lcom/flurry/sdk/v;->k:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/v$a;->d:Lcom/flurry/sdk/v$a;

    iget-object v2, v1, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1563
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/v$7;

    invoke-direct {v2, v1}, Lcom/flurry/sdk/v$7;-><init>(Lcom/flurry/sdk/v;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 1572
    :cond_4
    sget-object v0, Lcom/flurry/sdk/d$a;->g:Lcom/flurry/sdk/d$a;

    iget-object v2, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1573
    invoke-virtual {v1}, Lcom/flurry/sdk/v;->p()V

    .line 1123
    :cond_5
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/j;->b()Lcom/flurry/android/FlurryAdListener;

    move-result-object v0

    .line 1124
    if-eqz v0, :cond_6

    .line 1128
    iget-object v1, p1, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    invoke-interface {v1}, Lcom/flurry/sdk/r;->h()Ljava/lang/String;

    move-result-object v1

    .line 1129
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/v$3$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/flurry/sdk/v$3$1;-><init>(Lcom/flurry/sdk/v$3;Lcom/flurry/sdk/d;Lcom/flurry/android/FlurryAdListener;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 106
    :cond_6
    return-void

    .line 1557
    :cond_7
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/v$a;->c:Lcom/flurry/sdk/v$a;

    iget-object v2, v1, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1558
    sget-object v0, Lcom/flurry/sdk/v$a;->d:Lcom/flurry/sdk/v$a;

    iput-object v0, v1, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    goto :goto_0

    .line 1560
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
