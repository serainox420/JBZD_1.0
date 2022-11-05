.class public Lcom/facebook/common/memory/PooledByteStreams;
.super Ljava/lang/Object;
.source "PooledByteStreams.java"


# static fields
.field private static final DEFAULT_TEMP_BUF_SIZE:I = 0x4000


# instance fields
.field private final mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

.field private final mTempBufSize:I


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/ByteArrayPool;)V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x4000

    invoke-direct {p0, p1, v0}, Lcom/facebook/common/memory/PooledByteStreams;-><init>(Lcom/facebook/common/memory/ByteArrayPool;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/memory/ByteArrayPool;I)V
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 39
    iput p2, p0, Lcom/facebook/common/memory/PooledByteStreams;->mTempBufSize:I

    .line 40
    iput-object p1, p0, Lcom/facebook/common/memory/PooledByteStreams;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    .line 41
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/facebook/common/memory/PooledByteStreams;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    iget v1, p0, Lcom/facebook/common/memory/PooledByteStreams;->mTempBufSize:I

    invoke-interface {v0, v1}, Lcom/facebook/common/memory/ByteArrayPool;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 56
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget v4, p0, Lcom/facebook/common/memory/PooledByteStreams;->mTempBufSize:I

    invoke-virtual {p1, v0, v1, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 57
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 64
    iget-object v1, p0, Lcom/facebook/common/memory/PooledByteStreams;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {v1, v0}, Lcom/facebook/common/memory/ByteArrayPool;->release(Ljava/lang/Object;)V

    .line 58
    return-wide v2

    .line 60
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p2, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 62
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/facebook/common/memory/PooledByteStreams;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {v2, v0}, Lcom/facebook/common/memory/ByteArrayPool;->release(Ljava/lang/Object;)V

    throw v1
.end method

.method public copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 80
    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 82
    iget-object v0, p0, Lcom/facebook/common/memory/PooledByteStreams;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    iget v1, p0, Lcom/facebook/common/memory/PooledByteStreams;->mTempBufSize:I

    invoke-interface {v0, v1}, Lcom/facebook/common/memory/ByteArrayPool;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 85
    :goto_0
    cmp-long v1, v2, p3

    if-gez v1, :cond_2

    .line 86
    const/4 v1, 0x0

    :try_start_0
    iget v4, p0, Lcom/facebook/common/memory/PooledByteStreams;->mTempBufSize:I

    int-to-long v4, v4

    sub-long v6, p3, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p1, v0, v1, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 87
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 95
    iget-object v1, p0, Lcom/facebook/common/memory/PooledByteStreams;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {v1, v0}, Lcom/facebook/common/memory/ByteArrayPool;->release(Ljava/lang/Object;)V

    move-wide v0, v2

    .line 93
    :goto_1
    return-wide v0

    .line 90
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p2, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 92
    goto :goto_0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/facebook/common/memory/PooledByteStreams;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {v1, v0}, Lcom/facebook/common/memory/ByteArrayPool;->release(Ljava/lang/Object;)V

    move-wide v0, v2

    .line 93
    goto :goto_1

    .line 95
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/facebook/common/memory/PooledByteStreams;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {v2, v0}, Lcom/facebook/common/memory/ByteArrayPool;->release(Ljava/lang/Object;)V

    throw v1
.end method
