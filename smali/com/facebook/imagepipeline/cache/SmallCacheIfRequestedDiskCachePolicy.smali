.class public Lcom/facebook/imagepipeline/cache/SmallCacheIfRequestedDiskCachePolicy;
.super Ljava/lang/Object;
.source "SmallCacheIfRequestedDiskCachePolicy.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/DiskCachePolicy;


# instance fields
.field private final mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field private final mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/SmallCacheIfRequestedDiskCachePolicy;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 35
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/SmallCacheIfRequestedDiskCachePolicy;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 36
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/SmallCacheIfRequestedDiskCachePolicy;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 37
    return-void
.end method


# virtual methods
.method public createAndStartCacheReadTask(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/i",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/SmallCacheIfRequestedDiskCachePolicy;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v1

    sget-object v2, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne v1, v2, :cond_0

    .line 46
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/SmallCacheIfRequestedDiskCachePolicy;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v1, v0, p3}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->get(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/SmallCacheIfRequestedDiskCachePolicy;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v1, v0, p3}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->get(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheChoiceForResult(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToCache(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/SmallCacheIfRequestedDiskCachePolicy;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-interface {v0, p2, p3}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    .line 59
    invoke-virtual {p0, p2, p1}, Lcom/facebook/imagepipeline/cache/SmallCacheIfRequestedDiskCachePolicy;->getCacheChoiceForResult(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v1

    sget-object v2, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne v1, v2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/SmallCacheIfRequestedDiskCachePolicy;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->put(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/SmallCacheIfRequestedDiskCachePolicy;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->put(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    goto :goto_0
.end method
