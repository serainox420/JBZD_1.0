.class final Lcom/smartadserver/android/library/ui/c$1;
.super Ljava/util/TimerTask;
.source "SASViewabilityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 57
    invoke-static {}, Lcom/smartadserver/android/library/ui/c;->a()Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 58
    :try_start_0
    invoke-static {}, Lcom/smartadserver/android/library/ui/c;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/c$a;

    .line 59
    invoke-static {}, Lcom/smartadserver/android/library/ui/c;->b()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/smartadserver/android/library/ui/c$1$1;

    invoke-direct {v4, p0, v0}, Lcom/smartadserver/android/library/ui/c$1$1;-><init>(Lcom/smartadserver/android/library/ui/c$1;Lcom/smartadserver/android/library/ui/c$a;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    return-void
.end method
