.class public Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;
.super Ljava/lang/Object;
.source "DiskCacheWriteProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer",
        "<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDiskCachePolicy:Lcom/facebook/imagepipeline/cache/DiskCachePolicy;

.field private final mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/cache/DiskCachePolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/DiskCachePolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    .line 37
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;->mDiskCachePolicy:Lcom/facebook/imagepipeline/cache/DiskCachePolicy;

    .line 38
    return-void
.end method

.method private maybeStartInputProducer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
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
    const/4 v2, 0x0

    .line 49
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 50
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 51
    const/4 v0, 0x1

    invoke-interface {p1, v2, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;Z)V

    .line 65
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->isDiskCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;->mDiskCachePolicy:Lcom/facebook/imagepipeline/cache/DiskCachePolicy;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/cache/DiskCachePolicy;Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$1;)V

    move-object p1, v0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    goto :goto_0
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 0
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
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;->maybeStartInputProducer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 44
    return-void
.end method
