.class public Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;
.super Ljava/lang/Object;
.source "MediaVariationsFallbackProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$VariantComparator;,
        Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;
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


# static fields
.field public static final EXTRA_CACHED_VALUE_FOUND:Ljava/lang/String; = "cached_value_found"

.field public static final EXTRA_CACHED_VALUE_USED_AS_LAST:Ljava/lang/String; = "cached_value_used_as_last"

.field public static final EXTRA_VARIANTS_COUNT:Ljava/lang/String; = "variants_count"

.field public static final EXTRA_VARIANTS_SOURCE:Ljava/lang/String; = "variants_source"

.field public static final PRODUCER_NAME:Ljava/lang/String; = "MediaVariationsFallbackProducer"


# instance fields
.field private final mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

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

.field private mMediaIdExtractor:Lcom/facebook/imagepipeline/cache/MediaIdExtractor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMediaVariationsIndex:Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;

.field private final mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;Lcom/facebook/imagepipeline/cache/MediaIdExtractor;Lcom/facebook/imagepipeline/cache/DiskCachePolicy;Lcom/facebook/imagepipeline/producers/Producer;)V
    .locals 0
    .param p5    # Lcom/facebook/imagepipeline/cache/MediaIdExtractor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;",
            "Lcom/facebook/imagepipeline/cache/MediaIdExtractor;",
            "Lcom/facebook/imagepipeline/cache/DiskCachePolicy;",
            "Lcom/facebook/imagepipeline/producers/Producer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 78
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 79
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 80
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mMediaVariationsIndex:Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;

    .line 81
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mMediaIdExtractor:Lcom/facebook/imagepipeline/cache/MediaIdExtractor;

    .line 82
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mDiskCachePolicy:Lcom/facebook/imagepipeline/cache/DiskCachePolicy;

    .line 83
    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->startInputProducerWithWrappedConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Lcom/facebook/imagepipeline/common/ResizeOptions;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;
    .locals 1

    .prologue
    .line 53
    invoke-direct/range {p0 .. p6}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->chooseFromVariants(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Lcom/facebook/imagepipeline/common/ResizeOptions;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lbolts/i;)Z
    .locals 1

    .prologue
    .line 53
    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->isTaskCancelled(Lbolts/i;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/request/MediaVariations$Variant;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z
    .locals 1

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->isBigEnoughForRequestedSize(Lcom/facebook/imagepipeline/request/MediaVariations$Variant;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;
    .locals 1

    .prologue
    .line 53
    invoke-direct/range {p0 .. p7}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->attemptCacheReadForVariant(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;)Lcom/facebook/imagepipeline/cache/DiskCachePolicy;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mDiskCachePolicy:Lcom/facebook/imagepipeline/cache/DiskCachePolicy;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;)Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;)Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mMediaVariationsIndex:Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;

    return-object v0
.end method

.method private attemptCacheReadForVariant(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/MediaVariations;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/request/MediaVariations$Variant;",
            ">;I",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/i;"
        }
    .end annotation

    .prologue
    .line 213
    invoke-interface {p5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;

    .line 214
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 215
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getCallerContext()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, p3, v2, v3}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/net/Uri;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v1

    .line 217
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v2

    if-nez v2, :cond_0

    .line 218
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/request/ImageRequest;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    .line 222
    :goto_0
    sget-object v2, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 226
    :goto_1
    invoke-virtual {v0, v1, p7}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->get(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;

    move-result-object v0

    .line 228
    invoke-direct/range {p0 .. p7}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->onFinishDiskReads(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/h;

    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Lbolts/i;->a(Lbolts/h;)Lbolts/i;

    move-result-object v0

    return-object v0

    .line 220
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    goto :goto_1
.end method

.method private chooseFromVariants(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Lcom/facebook/imagepipeline/common/ResizeOptions;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/MediaVariations;",
            "Lcom/facebook/imagepipeline/common/ResizeOptions;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/i;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 180
    invoke-virtual {p4}, Lcom/facebook/imagepipeline/request/MediaVariations;->getVariantsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p6

    .line 181
    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->onFinishDiskReads(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/h;

    move-result-object v1

    .line 189
    const/4 v0, 0x0

    check-cast v0, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-static {v0}, Lbolts/i;->a(Ljava/lang/Object;)Lbolts/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbolts/i;->a(Lbolts/h;)Lbolts/i;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 192
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$VariantComparator;

    invoke-direct {v0, p5}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$VariantComparator;-><init>(Lcom/facebook/imagepipeline/common/ResizeOptions;)V

    .line 193
    invoke-virtual {p4, v0}, Lcom/facebook/imagepipeline/request/MediaVariations;->getSortedVariants(Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p6

    .line 195
    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->attemptCacheReadForVariant(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;

    move-result-object v0

    goto :goto_0
.end method

.method static getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;ZILjava/lang/String;Z)Ljava/util/Map;
    .locals 8
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ProducerListener;",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    invoke-interface {p0, p1}, Lcom/facebook/imagepipeline/producers/ProducerListener;->requiresExtraMap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 377
    :goto_0
    return-object v0

    .line 366
    :cond_0
    if-eqz p2, :cond_1

    .line 367
    const-string v0, "cached_value_found"

    const/4 v1, 0x1

    .line 369
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cached_value_used_as_last"

    .line 371
    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "variants_count"

    .line 373
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "variants_source"

    move-object v7, p4

    .line 367
    invoke-static/range {v0 .. v7}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_1
    const-string v0, "cached_value_found"

    const/4 v1, 0x0

    .line 379
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "variants_count"

    .line 381
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "variants_source"

    move-object v5, p4

    .line 377
    invoke-static/range {v0 .. v5}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private static isBigEnoughForRequestedSize(Lcom/facebook/imagepipeline/request/MediaVariations$Variant;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->getWidth()I

    move-result v0

    iget v1, p1, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->getHeight()I

    move-result v0

    iget v1, p1, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 351
    invoke-virtual {p0}, Lbolts/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lbolts/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbolts/i;->g()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 351
    :goto_0
    return v0

    .line 352
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFinishDiskReads(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/h;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/MediaVariations;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/request/MediaVariations$Variant;",
            ">;I",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/h",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v2

    .line 255
    new-instance v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object v9, p3

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;-><init>(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILcom/facebook/imagepipeline/request/ImageRequest;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v0
.end method

.method private startInputProducerWithExistingConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 1
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
    .line 338
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 339
    return-void
.end method

.method private startInputProducerWithWrappedConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V
    .locals 2
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
    .line 345
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    new-instance v1, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;-><init>(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 348
    return-void
.end method

.method private subscribeTaskForRequestCancellation(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 1

    .prologue
    .line 390
    new-instance v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$3;-><init>(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 397
    return-void
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 17
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
    .line 89
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v5

    .line 90
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v7

    .line 91
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest;->getMediaVariations()Lcom/facebook/imagepipeline/request/MediaVariations;

    move-result-object v6

    .line 93
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest;->isDiskCacheEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v7, :cond_0

    iget v2, v7, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    if-lez v2, :cond_0

    iget v2, v7, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    if-gtz v2, :cond_1

    .line 97
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->startInputProducerWithExistingConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 170
    :goto_0
    return-void

    .line 103
    :cond_1
    if-nez v6, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mMediaIdExtractor:Lcom/facebook/imagepipeline/cache/MediaIdExtractor;

    if-nez v2, :cond_2

    .line 105
    const/4 v13, 0x0

    .line 106
    const/4 v2, 0x0

    move-object v3, v2

    .line 116
    :goto_1
    if-nez v6, :cond_4

    if-nez v13, :cond_4

    .line 117
    invoke-direct/range {p0 .. p2}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->startInputProducerWithExistingConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    goto :goto_0

    .line 108
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mMediaIdExtractor:Lcom/facebook/imagepipeline/cache/MediaIdExtractor;

    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/cache/MediaIdExtractor;->getMediaIdFrom(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 109
    const-string v2, "id_extractor"

    move-object v3, v2

    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {v6}, Lcom/facebook/imagepipeline/request/MediaVariations;->getMediaId()Ljava/lang/String;

    move-result-object v13

    .line 113
    const-string v2, "index_db"

    move-object v3, v2

    goto :goto_1

    .line 121
    :cond_4
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v8, "MediaVariationsFallbackProducer"

    invoke-interface {v2, v4, v8}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v8, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 125
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/facebook/imagepipeline/request/MediaVariations;->getVariantsCount()I

    move-result v2

    if-lez v2, :cond_5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 126
    invoke-direct/range {v2 .. v8}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->chooseFromVariants(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Lcom/facebook/imagepipeline/common/ResizeOptions;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/i;

    .line 169
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->subscribeTaskForRequestCancellation(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    goto :goto_0

    .line 135
    :cond_5
    invoke-static {v13}, Lcom/facebook/imagepipeline/request/MediaVariations;->newBuilderForMediaId(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/MediaVariations$Builder;

    move-result-object v4

    if-eqz v6, :cond_6

    .line 137
    invoke-virtual {v6}, Lcom/facebook/imagepipeline/request/MediaVariations;->shouldForceRequestForSpecifiedUri()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    .line 136
    :goto_3
    invoke-virtual {v4, v2}, Lcom/facebook/imagepipeline/request/MediaVariations$Builder;->setForceRequestForSpecifiedUri(Z)Lcom/facebook/imagepipeline/request/MediaVariations$Builder;

    move-result-object v2

    .line 138
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/request/MediaVariations$Builder;->setSource(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/MediaVariations$Builder;

    move-result-object v2

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mMediaVariationsIndex:Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;

    .line 140
    invoke-interface {v3, v13, v2}, Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;->getCachedVariants(Ljava/lang/String;Lcom/facebook/imagepipeline/request/MediaVariations$Builder;)Lbolts/i;

    move-result-object v2

    .line 141
    new-instance v9, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$1;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v14, v5

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$1;-><init>(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/common/ResizeOptions;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v9}, Lbolts/i;->a(Lbolts/h;)Lbolts/i;

    goto :goto_2

    .line 137
    :cond_6
    const/4 v2, 0x0

    goto :goto_3
.end method
