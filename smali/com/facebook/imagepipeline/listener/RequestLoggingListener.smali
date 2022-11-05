.class public Lcom/facebook/imagepipeline/listener/RequestLoggingListener;
.super Ljava/lang/Object;
.source "RequestLoggingListener.java"

# interfaces
.implements Lcom/facebook/imagepipeline/listener/RequestListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestLoggingListener"


# instance fields
.field private final mProducerStartTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mRequestStartTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->mProducerStartTimeMap:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->mRequestStartTimeMap:Ljava/util/Map;

    .line 39
    return-void
.end method

.method private static getElapsedTime(Ljava/lang/Long;J)J
    .locals 3
    .param p0    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 213
    if-eqz p0, :cond_0

    .line 214
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 216
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static getTime()J
    .locals 2

    .prologue
    .line 220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized onProducerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 142
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->mProducerStartTimeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 145
    invoke-static {}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getTime()J

    move-result-wide v2

    .line 146
    const-string v1, "RequestLoggingListener"

    const-string v4, "time %d: onProducerEvent: {requestId: %s, stage: %s, eventName: %s; elapsedTime: %d ms}"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 149
    invoke-static {}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    const/4 v6, 0x4

    .line 153
    invoke-static {v0, v2, v3}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getElapsedTime(Ljava/lang/Long;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    .line 146
    invoke-static {v1, v4, v5}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onProducerFinishWithCancellation(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->mProducerStartTimeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 126
    invoke-static {}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getTime()J

    move-result-wide v2

    .line 127
    const-string v1, "RequestLoggingListener"

    const-string v4, "time %d: onProducerFinishWithCancellation: {requestId: %s, stage: %s, elapsedTime: %d ms, extraMap: %s}"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 131
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    .line 134
    invoke-static {v0, v2, v3}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getElapsedTime(Ljava/lang/Long;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x4

    aput-object p3, v5, v0

    .line 127
    invoke-static {v1, v4, v5}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 8
    .param p4    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->mProducerStartTimeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 104
    invoke-static {}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getTime()J

    move-result-wide v2

    .line 105
    const-string v1, "RequestLoggingListener"

    const-string v4, "time %d: onProducerFinishWithFailure: {requestId: %s, stage: %s, elapsedTime: %d ms, extraMap: %s, throwable: %s}"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    .line 112
    invoke-static {v0, v2, v3}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getElapsedTime(Ljava/lang/Long;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x4

    aput-object p4, v5, v0

    const/4 v0, 0x5

    .line 114
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 105
    invoke-static {v1, v4, v5}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->mProducerStartTimeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 82
    invoke-static {}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getTime()J

    move-result-wide v2

    .line 83
    const-string v1, "RequestLoggingListener"

    const-string v4, "time %d: onProducerFinishWithSuccess: {requestId: %s, producer: %s, elapsedTime: %d ms, extraMap: %s}"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 87
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    .line 90
    invoke-static {v0, v2, v3}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getElapsedTime(Ljava/lang/Long;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x4

    aput-object p3, v5, v0

    .line 83
    invoke-static {v1, v4, v5}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onProducerStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 61
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getTime()J

    move-result-wide v2

    .line 64
    iget-object v1, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->mProducerStartTimeMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "RequestLoggingListener"

    const-string v1, "time %d: onProducerStart: {requestId: %s, producer: %s}"

    .line 68
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 65
    invoke-static {v0, v1, v2, p1, p2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRequestCancellation(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 195
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->mRequestStartTimeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 197
    invoke-static {}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getTime()J

    move-result-wide v2

    .line 198
    const-string v1, "RequestLoggingListener"

    const-string v4, "time %d: onRequestCancellation: {requestId: %s, elapsedTime: %d ms}"

    .line 201
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 203
    invoke-static {v0, v2, v3}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getElapsedTime(Ljava/lang/Long;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 198
    invoke-static {v1, v4, v5, p1, v0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRequestFailure(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 8

    .prologue
    .line 180
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->mRequestStartTimeMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 182
    invoke-static {}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getTime()J

    move-result-wide v2

    .line 183
    const-string v1, "RequestLoggingListener"

    const-string v4, "time %d: onRequestFailure: {requestId: %s, elapsedTime: %d ms, throwable: %s}"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 186
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    .line 188
    invoke-static {v0, v2, v3}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getElapsedTime(Ljava/lang/Long;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x3

    .line 189
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 183
    invoke-static {v1, v4, v5}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_0
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRequestStart(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 47
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "RequestLoggingListener"

    const-string v1, "time %d: onRequestSubmit: {requestId: %s, callerContext: %s, isPrefetch: %b}"

    .line 51
    invoke-static {}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 54
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v3, p3

    move-object v4, p2

    .line 48
    invoke-static/range {v0 .. v5}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->mRequestStartTimeMap:Ljava/util/Map;

    invoke-static {}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRequestSuccess(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 162
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->mRequestStartTimeMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 164
    invoke-static {}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getTime()J

    move-result-wide v2

    .line 165
    const-string v1, "RequestLoggingListener"

    const-string v4, "time %d: onRequestSuccess: {requestId: %s, elapsedTime: %d ms}"

    .line 168
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 170
    invoke-static {v0, v2, v3}, Lcom/facebook/imagepipeline/listener/RequestLoggingListener;->getElapsedTime(Ljava/lang/Long;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 165
    invoke-static {v1, v4, v5, p2, v0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_0
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresExtraMap(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->isLoggable(I)Z

    move-result v0

    return v0
.end method
