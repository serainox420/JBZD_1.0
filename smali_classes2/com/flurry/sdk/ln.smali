.class final Lcom/flurry/sdk/ln;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ln$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Lcom/flurry/sdk/ln$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ln;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/flurry/sdk/ln;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ln;->a:Ljava/util/Timer;

    .line 47
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ln;->b:Lcom/flurry/sdk/ln$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 32
    monitor-enter p0

    .line 1051
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ln;->a:Ljava/util/Timer;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 32
    :goto_0
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/flurry/sdk/ln;->a()V

    .line 36
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "FlurrySessionTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/ln;->a:Ljava/util/Timer;

    .line 37
    new-instance v0, Lcom/flurry/sdk/ln$a;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ln$a;-><init>(Lcom/flurry/sdk/ln;)V

    iput-object v0, p0, Lcom/flurry/sdk/ln;->b:Lcom/flurry/sdk/ln$a;

    .line 38
    iget-object v0, p0, Lcom/flurry/sdk/ln;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/flurry/sdk/ln;->b:Lcom/flurry/sdk/ln$a;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 1051
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
