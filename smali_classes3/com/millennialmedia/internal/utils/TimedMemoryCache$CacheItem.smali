.class Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;
.super Ljava/lang/Object;
.source "TimedMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/utils/TimedMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheItem"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:J


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p2, :cond_1

    .line 46
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cached item timeout is null, setting to default: 60000"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    const-wide/32 v0, 0xea60

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 52
    :cond_1
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;->a:Ljava/lang/Object;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;->b:J

    .line 54
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cachedObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
