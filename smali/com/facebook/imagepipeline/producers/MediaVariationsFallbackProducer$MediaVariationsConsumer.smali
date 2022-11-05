.class Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "MediaVariationsFallbackProducer.java"


# annotations
.annotation build Lcom/facebook/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaVariationsConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer",
        "<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMediaId:Ljava/lang/String;

.field private final mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 406
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;->this$0:Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;

    .line 407
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 408
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 409
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;->mMediaId:Ljava/lang/String;

    .line 410
    return-void
.end method

.method private storeResultInDatabase(Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .locals 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->isDiskCacheEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;->mMediaId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;->this$0:Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;

    .line 428
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->access$500(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;)Lcom/facebook/imagepipeline/cache/DiskCachePolicy;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/facebook/imagepipeline/cache/DiskCachePolicy;->getCacheChoiceForResult(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v1

    .line 429
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;->this$0:Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;

    .line 430
    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->access$600(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;)Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getCallerContext()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    .line 432
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;->this$0:Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->access$700(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;)Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;->mMediaId:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v0, p1}, Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;->saveCachedVariant(Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    goto :goto_0
.end method


# virtual methods
.method protected onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;Z)V
    .locals 1

    .prologue
    .line 414
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 415
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;->storeResultInDatabase(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;Z)V

    .line 418
    return-void
.end method

.method protected bridge synthetic onNewResultImpl(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 399
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;->onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;Z)V

    return-void
.end method
