.class Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;
.super Ljava/lang/Object;
.source "ActivityListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/ActivityListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityState"
.end annotation


# instance fields
.field private a:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->UNKNOWN:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    iput-object v0, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    return-object v0
.end method

.method static synthetic a(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    return-object p1
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v0, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 60
    iget-object v2, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->b:Ljava/util/List;

    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 62
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 64
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    .line 65
    if-nez v0, :cond_0

    .line 66
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 68
    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_2
    return-object v1
.end method

.method a(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->b:Ljava/util/List;

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->b:Ljava/util/List;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->b:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered activity listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_1
    return-void

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method b()Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->a:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    return-object v0
.end method

.method b(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V
    .locals 5

    .prologue
    .line 97
    iget-object v0, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 99
    iget-object v1, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->b:Ljava/util/List;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 101
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 103
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 104
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregistered activity listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 112
    :cond_2
    monitor-exit v1

    .line 114
    :cond_3
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
