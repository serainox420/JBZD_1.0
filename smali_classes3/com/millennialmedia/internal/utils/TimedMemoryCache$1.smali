.class final Lcom/millennialmedia/internal/utils/TimedMemoryCache$1;
.super Ljava/lang/Object;
.source "TimedMemoryCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/TimedMemoryCache;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 134
    .line 138
    :cond_0
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v0, v1

    .line 146
    :goto_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->b()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 147
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->b()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 149
    invoke-static {v4}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->a(I)Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;

    move-result-object v5

    .line 150
    if-nez v5, :cond_3

    .line 151
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to remove CacheItem with ID <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "> but item was null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error occurred while cleaner was sleeping"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    :goto_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Stopping cleaner"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->c()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 176
    return-void

    .line 158
    :cond_3
    iget-wide v6, v5, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;->b:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 159
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 160
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed CacheItem\n\t:Checked time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\tID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\tItem: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_4
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->b()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 170
    :cond_5
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2
.end method
