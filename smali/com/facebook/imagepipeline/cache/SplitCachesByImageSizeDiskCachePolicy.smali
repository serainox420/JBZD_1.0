.class public Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;
.super Ljava/lang/Object;
.source "SplitCachesByImageSizeDiskCachePolicy.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/DiskCachePolicy;


# instance fields
.field private final mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field private final mForceSmallCacheThresholdBytes:I

.field private final mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 39
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 40
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 41
    iput p4, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->mForceSmallCacheThresholdBytes:I

    .line 42
    return-void
.end method

.method static synthetic access$000(Lbolts/i;)Z
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->isTaskCancelled(Lbolts/i;)Z

    move-result v0

    return v0
.end method

.method private static isTaskCancelled(Lbolts/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/i",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lbolts/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lbolts/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbolts/i;->g()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createAndStartCacheReadTask(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;
    .locals 4
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
    .line 49
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v2

    .line 50
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->containsSync(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->containsSync(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v1

    .line 54
    if-nez v0, :cond_0

    if-nez v1, :cond_1

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 56
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 61
    :goto_0
    invoke-virtual {v1, v2, p3}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->get(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;

    move-result-object v1

    new-instance v3, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy$1;

    invoke-direct {v3, p0, v0, v2, p3}, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy$1;-><init>(Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 62
    invoke-virtual {v1, v3}, Lbolts/i;->b(Lbolts/h;)Lbolts/i;

    move-result-object v0

    .line 61
    return-object v0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 59
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    goto :goto_0
.end method

.method public getCacheChoiceForResult(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v0

    .line 95
    if-ltz v0, :cond_0

    iget v1, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->mForceSmallCacheThresholdBytes:I

    if-ge v0, v1, :cond_0

    .line 96
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 98
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    goto :goto_0
.end method

.method public writeToCache(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-interface {v0, p2, p3}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy$2;->$SwitchMap$com$facebook$imagepipeline$request$ImageRequest$CacheChoice:[I

    invoke-virtual {p0, p2, p1}, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->getCacheChoiceForResult(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->put(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/SplitCachesByImageSizeDiskCachePolicy;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->put(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
