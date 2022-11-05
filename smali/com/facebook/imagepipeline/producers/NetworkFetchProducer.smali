.class public Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;
.super Ljava/lang/Object;
.source "NetworkFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer",
        "<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# static fields
.field public static final INTERMEDIATE_RESULT_PRODUCER_EVENT:Ljava/lang/String; = "intermediate_result"

.field public static final PRODUCER_NAME:Ljava/lang/String; = "NetworkFetchProducer"

.field private static final READ_SIZE:I = 0x4000

.field static final TIME_BETWEEN_PARTIAL_RESULTS_MS:J = 0x64L
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

.field private final mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

.field private final mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/producers/NetworkFetcher;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    .line 59
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    .line 60
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;Lcom/facebook/imagepipeline/producers/FetchState;Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->onResponse(Lcom/facebook/imagepipeline/producers/FetchState;Ljava/io/InputStream;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;Lcom/facebook/imagepipeline/producers/FetchState;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->onFailure(Lcom/facebook/imagepipeline/producers/FetchState;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;Lcom/facebook/imagepipeline/producers/FetchState;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->onCancellation(Lcom/facebook/imagepipeline/producers/FetchState;)V

    return-void
.end method

.method private static calculateProgress(II)F
    .locals 6

    .prologue
    .line 118
    if-lez p1, :cond_0

    .line 119
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 132
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    neg-int v1, p0

    int-to-double v2, v1

    const-wide v4, 0x40e86a0000000000L    # 50000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private getExtraMap(Lcom/facebook/imagepipeline/producers/FetchState;I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/FetchState;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener;->requiresExtraMap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/NetworkFetcher;->getExtraMap(Lcom/facebook/imagepipeline/producers/FetchState;I)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private handleFinalResult(Lcom/facebook/common/memory/PooledByteBufferOutputStream;Lcom/facebook/imagepipeline/producers/FetchState;)V
    .locals 4

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->getExtraMap(Lcom/facebook/imagepipeline/producers/FetchState;I)Ljava/util/Map;

    move-result-object v0

    .line 153
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v1

    .line 154
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkFetchProducer"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->notifyConsumer(Lcom/facebook/common/memory/PooledByteBufferOutputStream;ZLcom/facebook/imagepipeline/producers/Consumer;)V

    .line 156
    return-void
.end method

.method private maybeHandleIntermediateResult(Lcom/facebook/common/memory/PooledByteBufferOutputStream;Lcom/facebook/imagepipeline/producers/FetchState;)V
    .locals 6

    .prologue
    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 140
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->shouldPropagateIntermediateResults(Lcom/facebook/imagepipeline/producers/FetchState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getLastIntermediateResultTimeMs()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 142
    invoke-virtual {p2, v0, v1}, Lcom/facebook/imagepipeline/producers/FetchState;->setLastIntermediateResultTimeMs(J)V

    .line 143
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v0

    .line 144
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const-string v3, "intermediate_result"

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->notifyConsumer(Lcom/facebook/common/memory/PooledByteBufferOutputStream;ZLcom/facebook/imagepipeline/producers/Consumer;)V

    .line 147
    :cond_0
    return-void
.end method

.method private notifyConsumer(Lcom/facebook/common/memory/PooledByteBufferOutputStream;ZLcom/facebook/imagepipeline/producers/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/memory/PooledByteBufferOutputStream;",
            "Z",
            "Lcom/facebook/imagepipeline/producers/Consumer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->toByteBuffer()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    .line 164
    const/4 v2, 0x0

    .line 166
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v1, v3}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->parseMetaData()V

    .line 168
    invoke-interface {p3, v1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 171
    invoke-static {v3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 173
    return-void

    .line 170
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 171
    invoke-static {v3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v0

    .line 170
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private onCancellation(Lcom/facebook/imagepipeline/producers/FetchState;)V
    .locals 4

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithCancellation(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 184
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    .line 185
    return-void
.end method

.method private onFailure(Lcom/facebook/imagepipeline/producers/FetchState;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 178
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    .line 179
    return-void
.end method

.method private onResponse(Lcom/facebook/imagepipeline/producers/FetchState;Ljava/io/InputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    if-lez p3, :cond_1

    .line 94
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    invoke-interface {v0, p3}, Lcom/facebook/common/memory/PooledByteBufferFactory;->newOutputStream(I)Lcom/facebook/common/memory/PooledByteBufferOutputStream;

    move-result-object v0

    move-object v1, v0

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    const/16 v2, 0x4000

    invoke-interface {v0, v2}, Lcom/facebook/common/memory/ByteArrayPool;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 101
    :cond_0
    :goto_1
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_2

    .line 102
    if-lez v2, :cond_0

    .line 103
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->write([BII)V

    .line 104
    invoke-direct {p0, v1, p1}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->maybeHandleIntermediateResult(Lcom/facebook/common/memory/PooledByteBufferOutputStream;Lcom/facebook/imagepipeline/producers/FetchState;)V

    .line 105
    invoke-virtual {v1}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->size()I

    move-result v2

    invoke-static {v2, p3}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->calculateProgress(II)F

    move-result v2

    .line 106
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 112
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {v3, v0}, Lcom/facebook/common/memory/ByteArrayPool;->release(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v1}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->close()V

    throw v2

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBufferFactory;->newOutputStream()Lcom/facebook/common/memory/PooledByteBufferOutputStream;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 109
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    invoke-virtual {v1}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->size()I

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/facebook/imagepipeline/producers/NetworkFetcher;->onFetchCompletion(Lcom/facebook/imagepipeline/producers/FetchState;I)V

    .line 110
    invoke-direct {p0, v1, p1}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->handleFinalResult(Lcom/facebook/common/memory/PooledByteBufferOutputStream;Lcom/facebook/imagepipeline/producers/FetchState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {v2, v0}, Lcom/facebook/common/memory/ByteArrayPool;->release(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v1}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->close()V

    .line 115
    return-void
.end method

.method private shouldPropagateIntermediateResults(Lcom/facebook/imagepipeline/producers/FetchState;)Z
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getProgressiveRenderingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/NetworkFetcher;->shouldPropagate(Lcom/facebook/imagepipeline/producers/FetchState;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v0

    .line 66
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/NetworkFetcher;->createFetchState(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Lcom/facebook/imagepipeline/producers/FetchState;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    new-instance v2, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;-><init>(Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;Lcom/facebook/imagepipeline/producers/FetchState;)V

    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/producers/NetworkFetcher;->fetch(Lcom/facebook/imagepipeline/producers/FetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    .line 85
    return-void
.end method
