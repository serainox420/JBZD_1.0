.class public Lcom/facebook/imagepipeline/cache/BitmapCountingMemoryCacheFactory;
.super Ljava/lang/Object;
.source "BitmapCountingMemoryCacheFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Z)Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier",
            "<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;",
            "Lcom/facebook/common/memory/MemoryTrimmableRegistry;",
            "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
            "Z)",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache",
            "<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v1, Lcom/facebook/imagepipeline/cache/BitmapCountingMemoryCacheFactory$1;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/BitmapCountingMemoryCacheFactory$1;-><init>()V

    .line 33
    new-instance v2, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheTrimStrategy;

    invoke-direct {v2}, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheTrimStrategy;-><init>()V

    .line 35
    new-instance v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Z)V

    .line 43
    invoke-interface {p1, v0}, Lcom/facebook/common/memory/MemoryTrimmableRegistry;->registerMemoryTrimmable(Lcom/facebook/common/memory/MemoryTrimmable;)V

    .line 45
    return-object v0
.end method
