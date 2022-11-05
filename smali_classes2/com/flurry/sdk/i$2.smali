.class final Lcom/flurry/sdk/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/i;
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
        "Lcom/flurry/sdk/du;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/i;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/i;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    .line 102
    check-cast p1, Lcom/flurry/sdk/du;

    .line 1105
    iget-object v1, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    monitor-enter v1

    .line 1106
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-static {v0}, Lcom/flurry/sdk/i;->c(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/cw;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    iget-object v2, p1, Lcom/flurry/sdk/du;->a:Lcom/flurry/sdk/cw;

    invoke-static {v0, v2}, Lcom/flurry/sdk/i;->a(Lcom/flurry/sdk/i;Lcom/flurry/sdk/cw;)Lcom/flurry/sdk/cw;

    .line 1111
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    iget-object v0, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    iget-object v1, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-static {v1}, Lcom/flurry/sdk/i;->c(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/cw;

    move-result-object v1

    iget v1, v1, Lcom/flurry/sdk/cw;->b:I

    int-to-long v2, v1

    mul-long/2addr v2, v6

    const-wide/16 v4, 0x4b4

    mul-long/2addr v2, v4

    iget-object v1, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-static {v1}, Lcom/flurry/sdk/i;->c(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/cw;

    move-result-object v1

    iget v1, v1, Lcom/flurry/sdk/cw;->c:I

    int-to-long v4, v1

    mul-long/2addr v4, v6

    invoke-static {v0, v2, v3, v4, v5}, Lcom/flurry/sdk/i;->a(Lcom/flurry/sdk/i;JJ)V

    .line 1117
    iget-object v0, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-static {v0}, Lcom/flurry/sdk/i;->c(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/cw;

    move-result-object v0

    iget v0, v0, Lcom/flurry/sdk/cw;->d:I

    invoke-static {v0}, Lcom/flurry/sdk/fs;->a(I)V

    .line 1120
    iget-object v0, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-static {v0}, Lcom/flurry/sdk/i;->d(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/k;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-static {v1}, Lcom/flurry/sdk/i;->c(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/cw;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/cw;->a:Ljava/lang/String;

    .line 2076
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2080
    iput-object v1, v0, Lcom/flurry/sdk/k;->b:Ljava/lang/String;

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/i$2;->a:Lcom/flurry/sdk/i;

    invoke-static {v0}, Lcom/flurry/sdk/i;->d(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/k;

    move-result-object v0

    .line 2084
    const/4 v1, 0x0

    iput v1, v0, Lcom/flurry/sdk/k;->c:I

    .line 2087
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/k$2;

    invoke-direct {v2, v0}, Lcom/flurry/sdk/k$2;-><init>(Lcom/flurry/sdk/k;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 1109
    :goto_0
    return-void

    :cond_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 1111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
