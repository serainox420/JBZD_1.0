.class Lcom/google/android/exoplayer2/upstream/cache/i$1;
.super Ljava/lang/Thread;
.source "SimpleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/upstream/cache/i;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/d;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/ConditionVariable;

.field final synthetic b:Lcom/google/android/exoplayer2/upstream/cache/i;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/i;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/i$1;->b:Lcom/google/android/exoplayer2/upstream/cache/i;

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/i$1;->a:Landroid/os/ConditionVariable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/i$1;->b:Lcom/google/android/exoplayer2/upstream/cache/i;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i$1;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i$1;->b:Lcom/google/android/exoplayer2/upstream/cache/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/i;->a(Lcom/google/android/exoplayer2/upstream/cache/i;)V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/i$1;->b:Lcom/google/android/exoplayer2/upstream/cache/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/i;->b(Lcom/google/android/exoplayer2/upstream/cache/i;)Lcom/google/android/exoplayer2/upstream/cache/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/cache/d;->a()V

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/i$1;->b:Lcom/google/android/exoplayer2/upstream/cache/i;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/i;->a(Lcom/google/android/exoplayer2/upstream/cache/i;Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;)Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
