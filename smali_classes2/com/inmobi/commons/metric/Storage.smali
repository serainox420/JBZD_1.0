.class public Lcom/inmobi/commons/metric/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/metric/Storage$PreProcessor;
    }
.end annotation


# instance fields
.field a:Lcom/inmobi/commons/metric/MetricConfigParams;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/inmobi/commons/metric/Storage$PreProcessor;

.field private g:Lcom/inmobi/commons/metric/Queuer;

.field private h:J

.field private i:J

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/inmobi/commons/metric/Queuer;Lcom/inmobi/commons/metric/MetricConfigParams;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "inmobi.cache.data"

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->b:Ljava/lang/String;

    .line 23
    const-string v0, "inmobi.cache.data.events.number"

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->c:Ljava/lang/String;

    .line 24
    const-string v0, "inmobi.cache.data.events.timestamp"

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->d:Ljava/lang/String;

    .line 25
    iput v2, p0, Lcom/inmobi/commons/metric/Storage;->e:I

    .line 26
    iput-object v1, p0, Lcom/inmobi/commons/metric/Storage;->f:Lcom/inmobi/commons/metric/Storage$PreProcessor;

    .line 28
    iput-object v1, p0, Lcom/inmobi/commons/metric/Storage;->g:Lcom/inmobi/commons/metric/Queuer;

    .line 29
    iput-object v1, p0, Lcom/inmobi/commons/metric/Storage;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    .line 31
    iput-wide v4, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    .line 32
    iput-wide v4, p0, Lcom/inmobi/commons/metric/Storage;->i:J

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    iput-object v1, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    .line 43
    iput-object p4, p0, Lcom/inmobi/commons/metric/Storage;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    .line 44
    iput-object p3, p0, Lcom/inmobi/commons/metric/Storage;->g:Lcom/inmobi/commons/metric/Queuer;

    .line 45
    iput p1, p0, Lcom/inmobi/commons/metric/Storage;->e:I

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->b:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->c:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/metric/Storage;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/inmobi/commons/metric/Queuer;Lcom/inmobi/commons/metric/MetricConfigParams;Lcom/inmobi/commons/metric/Storage$PreProcessor;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/commons/metric/Storage;-><init>(ILjava/lang/String;Lcom/inmobi/commons/metric/Queuer;Lcom/inmobi/commons/metric/MetricConfigParams;)V

    .line 53
    iput-object p5, p0, Lcom/inmobi/commons/metric/Storage;->f:Lcom/inmobi/commons/metric/Storage$PreProcessor;

    .line 54
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->writeStringToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/inmobi/commons/metric/Storage;->i:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->writeStringToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    goto :goto_0
.end method


# virtual methods
.method public getEvents()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->i:J

    return-wide v0
.end method

.method public readLocalCache()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/FileOperations;->readFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v1, "Unable to read metric info."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "null,"

    goto :goto_0
.end method

.method public readNumberOfEventsAndTimeStampFromPersistent()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 83
    iget-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/FileOperations;->readFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    .line 90
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/FileOperations;->readFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->i:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    iget-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->i:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->i:J

    .line 98
    invoke-direct {p0}, Lcom/inmobi/commons/metric/Storage;->a()V

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    goto :goto_1
.end method

.method public resetFile()V
    .locals 4

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->b:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->writeStringToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->i:J

    .line 160
    invoke-direct {p0}, Lcom/inmobi/commons/metric/Storage;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    const-string v2, "Someting went wrong while saving metrics log to persistent storage"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveLocalCache()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 125
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/inmobi/commons/metric/Logger$MetricsCallback;->movedMetricDataToFileMemory(Ljava/lang/String;)V

    .line 134
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/commons/metric/Storage;->g:Lcom/inmobi/commons/metric/Queuer;

    invoke-virtual {v2}, Lcom/inmobi/commons/metric/Queuer;->get()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->writeStringToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 137
    iget-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    iget-object v2, p0, Lcom/inmobi/commons/metric/Storage;->g:Lcom/inmobi/commons/metric/Queuer;

    invoke-virtual {v2}, Lcom/inmobi/commons/metric/Queuer;->a()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    .line 138
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->g:Lcom/inmobi/commons/metric/Queuer;

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Queuer;->reset()V

    .line 139
    invoke-direct {p0}, Lcom/inmobi/commons/metric/Storage;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :goto_1
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 147
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 149
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    const-string v2, "Error saving local cache"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    const-string v2, "Someting went wrong while saving metrics log to persistent storage"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public saveToLatest()V
    .locals 0

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/inmobi/commons/metric/Storage;->saveLocalCache()V

    .line 243
    return-void
.end method

.method public sendFile()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 169
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    :goto_0
    return-void

    .line 177
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 179
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-virtual {v1}, Lcom/inmobi/commons/metric/MetricConfigParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/inmobi/commons/metric/Logger$MetricsCallback;->reportingStartedWithRequest(Ljava/lang/String;)V

    .line 190
    :cond_2
    :try_start_2
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/inmobi/commons/metric/Storage;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " events to server.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/inmobi/commons/metric/Storage;->readLocalCache()Ljava/lang/String;

    move-result-object v1

    .line 194
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/uid/UID;->getMapForEncryption(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getEncodedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 197
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 198
    const-string v3, "tz"

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    const-string v3, "ts"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 200
    const-string v2, "product"

    iget v3, p0, Lcom/inmobi/commons/metric/Storage;->e:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 202
    new-instance v2, Lorg/json/JSONArray;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 203
    const-string v1, "payload"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->f:Lcom/inmobi/commons/metric/Storage$PreProcessor;

    if-eqz v1, :cond_3

    .line 205
    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->f:Lcom/inmobi/commons/metric/Storage$PreProcessor;

    invoke-interface {v1, v0}, Lcom/inmobi/commons/metric/Storage$PreProcessor;->process(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 207
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to url :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/commons/metric/Storage;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-virtual {v3}, Lcom/inmobi/commons/metric/MetricConfigParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-virtual {v1}, Lcom/inmobi/commons/metric/MetricConfigParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/inmobi/commons/metric/MetricEndPoint;->sendData(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data sent successfully to url :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/commons/metric/Storage;->a:Lcom/inmobi/commons/metric/MetricConfigParams;

    invoke-virtual {v2}, Lcom/inmobi/commons/metric/MetricConfigParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/inmobi/commons/metric/Storage;->resetFile()V

    .line 218
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    invoke-interface {v0}, Lcom/inmobi/commons/metric/Logger$MetricsCallback;->reportingSuccess()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 228
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 231
    :try_start_3
    iget-object v1, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 232
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 233
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 238
    :goto_2
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 179
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v1, "Unable to get lock for reading file before sending metric data"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :catch_1
    move-exception v0

    .line 222
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v1, "Unable to send data"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    if-eqz v0, :cond_4

    .line 224
    iget-object v0, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    invoke-interface {v0}, Lcom/inmobi/commons/metric/Logger$MetricsCallback;->reportingFailure()V

    goto :goto_1

    .line 233
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 234
    :catch_2
    move-exception v0

    .line 235
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v1, "Unable to lock file."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setCallback(Lcom/inmobi/commons/metric/Logger$MetricsCallback;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/inmobi/commons/metric/Storage;->l:Lcom/inmobi/commons/metric/Logger$MetricsCallback;

    .line 40
    return-void
.end method

.method public setPreprocessor(Lcom/inmobi/commons/metric/Storage$PreProcessor;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/inmobi/commons/metric/Storage;->f:Lcom/inmobi/commons/metric/Storage$PreProcessor;

    .line 66
    return-void
.end method
