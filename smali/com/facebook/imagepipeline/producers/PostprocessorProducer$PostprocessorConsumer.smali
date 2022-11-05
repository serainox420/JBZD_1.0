.class Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/PostprocessorProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostprocessorConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer",
        "<",
        "Lcom/facebook/common/references/CloseableReference",
        "<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;",
        "Lcom/facebook/common/references/CloseableReference",
        "<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mIsClosed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private mIsDirty:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private mIsLast:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private mIsPostProcessingRunning:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field private final mListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

.field private final mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

.field private final mRequestId:Ljava/lang/String;

.field private mSourceImageRef:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "PostprocessorConsumer.this"
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Lcom/facebook/imagepipeline/request/Postprocessor;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerListener;",
            "Ljava/lang/String;",
            "Lcom/facebook/imagepipeline/request/Postprocessor;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 103
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;

    .line 104
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    .line 91
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsLast:Z

    .line 93
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsDirty:Z

    .line 95
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsPostProcessingRunning:Z

    .line 105
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    .line 106
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mRequestId:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 108
    new-instance v0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$1;-><init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer;)V

    invoke-interface {p6, v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 115
    return-void
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->maybeNotifyOnCancellation()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)Lcom/facebook/common/references/CloseableReference;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsLast:Z

    return v0
.end method

.method static synthetic access$502(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/common/references/CloseableReference;Z)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->doPostprocessing(Lcom/facebook/common/references/CloseableReference;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->clearRunningAndStartIfDirty()V

    return-void
.end method

.method private clearRunningAndStartIfDirty()V
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    .line 191
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsPostProcessingRunning:Z

    .line 192
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->setRunningIfDirtyAndNotRunning()Z

    move-result v0

    .line 193
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->submitPostprocessing()V

    .line 197
    :cond_0
    return-void

    .line 193
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private close()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 286
    monitor-enter p0

    .line 287
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsClosed:Z

    if-eqz v1, :cond_0

    .line 288
    const/4 v0, 0x0

    monitor-exit p0

    .line 295
    :goto_0
    return v0

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    .line 291
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    .line 292
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsClosed:Z

    .line 293
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doPostprocessing(Lcom/facebook/common/references/CloseableReference;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 212
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/image/CloseableImage;

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->shouldPostprocess(Lcom/facebook/imagepipeline/image/CloseableImage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->maybeNotifyOnNewResult(Lcom/facebook/common/references/CloseableReference;Z)V

    .line 233
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mRequestId:Ljava/lang/String;

    const-string v2, "PostprocessorProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v1, 0x0

    .line 220
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/image/CloseableImage;

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->postprocessInternal(Lcom/facebook/imagepipeline/image/CloseableImage;)Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mRequestId:Ljava/lang/String;

    const-string v3, "PostprocessorProducer"

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mRequestId:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 228
    invoke-direct {p0, v4, v5, v6}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Lcom/facebook/imagepipeline/request/Postprocessor;)Ljava/util/Map;

    move-result-object v4

    .line 227
    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 229
    invoke-direct {p0, v1, p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->maybeNotifyOnNewResult(Lcom/facebook/common/references/CloseableReference;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    :try_start_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mRequestId:Ljava/lang/String;

    const-string v4, "PostprocessorProducer"

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mListener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mRequestId:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 223
    invoke-direct {p0, v5, v6, v7}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Lcom/facebook/imagepipeline/request/Postprocessor;)Ljava/util/Map;

    move-result-object v5

    .line 222
    invoke-interface {v2, v3, v4, v0, v5}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 224
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->maybeNotifyOnFailure(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v0
.end method

.method private getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Lcom/facebook/imagepipeline/request/Postprocessor;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ProducerListener;",
            "Ljava/lang/String;",
            "Lcom/facebook/imagepipeline/request/Postprocessor;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/producers/ProducerListener;->requiresExtraMap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Postprocessor"

    invoke-interface {p3}, Lcom/facebook/imagepipeline/request/Postprocessor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private maybeNotifyOnCancellation()V
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->close()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    .line 278
    :cond_0
    return-void
.end method

.method private maybeNotifyOnFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->close()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    .line 272
    :cond_0
    return-void
.end method

.method private maybeNotifyOnNewResult(Lcom/facebook/common/references/CloseableReference;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 263
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->close()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;Z)V

    .line 266
    :cond_2
    return-void
.end method

.method private postprocessInternal(Lcom/facebook/imagepipeline/image/CloseableImage;)Lcom/facebook/common/references/CloseableReference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p1

    check-cast v0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    .line 251
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;

    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->access$900(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;)Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/facebook/imagepipeline/request/Postprocessor;->process(Landroid/graphics/Bitmap;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getRotationAngle()I

    move-result v0

    .line 255
    :try_start_0
    new-instance v2, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    .line 256
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableImage;->getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;-><init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;I)V

    .line 255
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 258
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 255
    return-object v0

    .line 258
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v0
.end method

.method private declared-synchronized setRunningIfDirtyAndNotRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 200
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsClosed:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsDirty:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsPostProcessingRunning:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    .line 201
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsPostProcessingRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldPostprocess(Lcom/facebook/imagepipeline/image/CloseableImage;)Z
    .locals 1

    .prologue
    .line 246
    instance-of v0, p1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    return v0
.end method

.method private submitPostprocessing()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->access$800(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;-><init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method private updateSourceImageRef(Lcom/facebook/common/references/CloseableReference;Z)V
    .locals 2
    .param p1    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsClosed:Z

    if-eqz v0, :cond_1

    .line 147
    monitor-exit p0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    .line 150
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    .line 151
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsLast:Z

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsDirty:Z

    .line 153
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->setRunningIfDirtyAndNotRunning()Z

    move-result v1

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 156
    if-eqz v1, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->submitPostprocessing()V

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected onCancellationImpl()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->maybeNotifyOnCancellation()V

    .line 138
    return-void
.end method

.method protected onFailureImpl(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->maybeNotifyOnFailure(Ljava/lang/Throwable;)V

    .line 133
    return-void
.end method

.method protected onNewResultImpl(Lcom/facebook/common/references/CloseableReference;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    if-eqz p2, :cond_0

    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->maybeNotifyOnNewResult(Lcom/facebook/common/references/CloseableReference;Z)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->updateSourceImageRef(Lcom/facebook/common/references/CloseableReference;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onNewResultImpl(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->onNewResultImpl(Lcom/facebook/common/references/CloseableReference;Z)V

    return-void
.end method
